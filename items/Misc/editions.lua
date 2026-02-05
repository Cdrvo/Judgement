function reversea()
	local rv = 0
	if G.playing_cards then
		for _, v in pairs(G.playing_cards) do
			if v.edition and v.edition.jud_reverse then
				rv = rv + 0.2
			end
		end
		for _, v in pairs(G.jokers.cards) do
			if v.edition and v.edition.jud_reverse then
				rv = rv + 0.2
			end
		end
		return rv
	end
	return 0
end

SMODS.Edition({
	key = "reverse",
	shader = false,
	config = {
		x_mult = 1.5 + reversea(),
	},	
	loc_vars = function(self, info_queue, card)
		return {
			vars = {
				self.config.x_mult,reversea()
			},
		}
	end,
	calculate = function(self, card, context)
		local jud = card.ability
		if
			(context.cardarea == G.jokers and context.post_joker)
			or (context.main_scoring and context.cardarea == G.play)
		then
			return { xmult = self.config.x_mult + reversea()}
		end
	end,
})

SMODS.Shader({
	key = "fake",
	path = "fake.fs",
})

SMODS.Edition({
	key = "fake",
	shader = "fake",
	config = {
		mult = 1,
		chips = 1,
		dollars = 2,
		odds = 5
	},
		loc_vars = function(self, info_queue, card)
		return {
			vars = {
				self.config.mult,self.config.chips,self.config.dollars,(G.GAME.probabilities.normal or 1),self.config.odds
			},
		}
	end,
	calculate = function(self, card, context)
		local jud = card.ability
		if
			(context.cardarea == G.jokers and context.post_joker)
			or (context.main_scoring and context.cardarea == G.play)
		then
			if pseudorandom("fake") < G.GAME.probabilities.normal / self.config.odds then
				card:start_dissolve(nil, 1.6)
			else
			return { mult = self.config.mult, chips = self.config.chips, dollars = self.config.dollars }
			end
		end
	end,
})


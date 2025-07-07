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

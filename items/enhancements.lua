SMODS.Enhancement({
	key = "cannibal",
	pos = { x = 0, y = 3 },
	discovered = true,
	unlocked = true,
	replace_base_card = false,
	no_rank = false,
	no_suit = false,
	always_scores = true,
	weight = 0,
	config = { extra = { chips = 0 } },
	loc_vars = function(self, info_queue, card)
		return { vars = { card.ability.extra.x_mult } }
	end,
	calculate = function(self, card, context)
		card.ability.extra.chips = G.GAME.canchips
		if context.main_scoring and context.cardarea == G.play then
			return {
				chips = G.GAME.canchips,
			}
		end
		if context.final_scoring_step and not context.repetition and context.cardarea == G.play then
			print("ae")
			G.E_MANAGER:add_event(Event({
				trigger = "immediate",
				func = function()
					G.GAME.canchips = G.GAME.canchips + card.base.nominal
					card:juice_up(0.9, 0.9)
					card:start_dissolve(nil, 1, 6)
					return true
				end,
			}))
		end
	end,
})

SMODS.Enhancement({
	key = "celestial",
	pos = { x = 0, y = 3 },
	discovered = true,
	unlocked = true,
	replace_base_card = false,
	no_rank = false,
	no_suit = false,
	always_scores = false,
	weight = 0,
	config = { extra = {} },
	loc_vars = function(self, info_queue, card)
		return { vars = {} }
	end,
	calculate = function(self, card, context)
		if context.main_scoring and context.cardarea == G.play then
			return {
				chips = G.GAME.hands[G.GAME.current_round.most_played_poker_hand].chips,
				mult = G.GAME.hands[G.GAME.current_round.most_played_poker_hand].mult,
			}
		end
	end,
})

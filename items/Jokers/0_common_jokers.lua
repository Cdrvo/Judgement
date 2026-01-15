SMODS.Joker({
	key = "useless",
	config = {
		extra = {
			tripled = false,
			edition = false,
		},
	},
	rarity = 1,
	atlas = "commons",
	blueprint_compat = false,
	discovered = false,
	pos = {
		x = 1,
		y = 0,
	},
	cost = 3,
	loc_vars = function(self, info_queue, card)
		return {
			vars = {},
		}
	end,
	update = function(self, card, context)
		if not card.ability.extra.edition then
			card.ability.extra.edition = true
			card:set_edition(poll_edition(pseudorandom("useless"), nil, true, true))
		end
	end,
					set_badges = function(self, card, badges)
		badges[#badges + 1] = create_badge("Art by: lfmoth", G.C.RARITY[1], G.C.BLACK, 0.8)
	end,
})

SMODS.Joker({
	key = "burnttoast",
	config = {
		extra = {
			extra_value = 0,
			togive = 3
		},
	},
	rarity = 1,
	blueprint_compat = false,
	discovered = false,
	atlas = "commons",
	pos = {
		x = 0,
		y = 0,
	},
	cost = 3,
	pools = {
		Food = true,
	},
	loc_vars = function(self, info_queue, card)
		return {
			vars = {card.ability.extra.togive},
		}
	end,
	calculate = function(self, card, context)
		if context.cardarea == G.jokers then
			card.ability.extra_value = #G.jokers.cards * card.ability.extra.togive - 1
			card:set_cost()
		end
		if context.joker_main and next(context.poker_hands["Pair"]) then
			card:start_dissolve({ HEX("57ecab") }, nil, 1.6)
		end
	end,
			set_badges = function(self, card, badges)
		badges[#badges + 1] = create_badge("Art by: charmal", G.C.RARITY[1], G.C.BLACK, 0.8)
	end,
})

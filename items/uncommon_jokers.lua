SMODS.Joker({
	key = "amnesiac",
	config = {
		extra = {
			odds = 4,
		},
	},
	rarity = 2,
	blueprint_compat = false,
	discovered = false,
	pos = {
		x = 0,
		y = 0,
	},
	soul_pos = {
		x = 1,
		y = 0,
	},
	cost = 6,
	loc_vars = function(self, info_queue, card)
		return {
			vars = { (G.GAME.probabilities.normal or 1), card.ability.extra.odds },
		}
	end,
	calculate = function(self, card, context)
		local jud = card.ability.extra
		if context.selling_card and not context.selling_self and context.card.ability.set == "Joker" then
			if pseudorandom("amnesiac") < G.GAME.probabilities.normal / jud.odds then
				local copied = copy_card(context.card, nil)
				copied:add_to_deck()
				G.jokers:emplace(copied)
				card:start_dissolve(nil, 1, 6)
			end
		end
	end,
})

SMODS.Joker({
	key = "megalophobia",
	config = {
		extra = {
			xchips = 1.2,
		},
	},
	rarity = 2,
	blueprint_compat = false,
	discovered = false,
	pos = {
		x = 1,
		y = 0,
	},
	cost = 5,
	loc_vars = function(self, info_queue, card)
		local jud = card.ability.extra
		return {
			vars = { jud.xchips },
		}
	end,
	calculate = function(self, card, context)
		local jud = card.ability.extra
		if context.individual and context.cardarea == G.play then
			if context.other_card:get_id() > 7 then
				card:start_dissolve(nil, 1, 6)
			else
				return {
					xchips = jud.xchips,
				}
			end
		end
	end,
})

SMODS.Joker({
	key = "triskaidekaphobia",
	config = {
		extra = {
			total = 13,
			start = 0,
		},
	},
	rarity = 2,
	blueprint_compat = false,
	discovered = false,
	pos = {
		x = 1,
		y = 0,
	},
	cost = 5,
	loc_vars = function(self, info_queue, card)
		local jud = card.ability.extra
		return {
			vars = { jud.total },
		}
	end,
	calculate = function(self, card, context)
		local jud = card.ability.extra
		if context.repetition and context.cardarea == G.play then
			jud.start = jud.start + context.other_card.base.nominal
			return {
				repetitions = 1,
			}
		end
		if context.after then
			if jud.start >= jud.total then
				card:start_dissolve(nil, 1, 6)
			else
				jud.start = 0
			end
		end
	end,
})

SMODS.Joker({
	key = "ophthalmophobia",
	config = {
		extra = {
			copied = "ae",
		},
	},
	rarity = 2,
	blueprint_compat = false,
	discovered = false,
	pos = {
		x = 1,
		y = 0,
	},
	cost = 5,
	loc_vars = function(self, info_queue, card)
		local jud = card.ability.extra
		return {
			vars = { jud.copied },
		}
	end,
	calculate = function(self, card, context)
		local jud = card.ability.extra
		local copied = jud.copied
		local other_joker = nil
		for i = 1, #G.jokers.cards do
			if G.jokers.cards[i] == card then
				other_joker = G.jokers.cards[i + 1]
				jud.copied = G.jokers.cards[i + 1].config.center.key
			end
			if copied and copied ~= G.jokers.cards[i + 1].config.center.key then
				return { SMODS.blueprint_effect(card, other_joker, context) }
			end
		end
	end,
})

SMODS.Joker({
	key = "addictedjoker",
	config = {
		extra = {
			odds = 2,
		},
	},
	rarity = 2,
	blueprint_compat = false,
	discovered = false,
	pos = {
		x = 1,
		y = 0,
	},
	cost = 5,
	loc_vars = function(self, info_queue, card)
		local jud = card.ability.extra
		return {
			vars = { (G.GAME.probabilities.normal or 1), jud.odds },
		}
	end,
	calculate = function(self, card, context)
		local jud = card.ability.extra
		if context.ending_shop and #G.jud_pill < 1 then
			if pseudorandom("addictedjoker") < G.GAME.probabilities.normal / jud.odds then
				local pill = SMODS.create_card({
					set = "pills",
					area = G.jud_pill,
				})
				G.jud_pill:emplace(pill)
			end
		end
	end,
})

SMODS.Joker({
	key = "dealingjoker",
	config = {
		extra = {},
	},
	rarity = 2,
	blueprint_compat = false,
	discovered = false,
	pos = {
		x = 1,
		y = 0,
	},
	cost = 5,
	loc_vars = function(self, info_queue, card)
		local jud = card.ability.extra
		return {
			vars = {},
		}
	end,
	calculate = function(self, card, context)
		local jud = card.ability.extra
		if context.end_of_round and context.main_eval then
			local pill = SMODS.create_card({
				set = "pills",
				area = G.jud_pill,
				edition = "e_negative",
			})
			G.jud_pill:emplace(pill)
			SMODS.Stickers["jud_temporary"]:apply(pill, true)
		end
	end,
})

SMODS.Joker({
	key = "viking",
	config = {
		extra = {},
	},
	rarity = 2,
	atlas = "uncj",
	blueprint_compat = false,
	discovered = false,
	pos = {
		x = 0,
		y = 0,
	},
	cost = 5,
	loc_vars = function(self, info_queue, card)
		local jud = card.ability.extra
		return {
			vars = {},
		}
	end,
	calculate = function(self, card, context)
		local jud = card.ability.extra
		if context.setting_blind and G.GAME.blind.boss then
			SMODS.add_card({
				set = "runes",
				area = G.consumeables,
			})
		end
	end,
	set_badges = function(self, card, badges)
		badges[#badges + 1] = create_badge("Art by: Breuhh", G.C.RARITY[2], G.C.BLACK, 0.8)
	end,
})

SMODS.Joker({
	key = "praying",
	config = {
		extra = {},
	},
	rarity = 2,
	blueprint_compat = false,
	discovered = false,
	pos = {
		x = 1,
		y = 0,
	},
	cost = 5,
	loc_vars = function(self, info_queue, card)
		local jud = card.ability.extra
		return {
			vars = {},
		}
	end,
	calculate = function(self, card, context)
		local jud = card.ability.extra
		if context.selling_self and G.STATE == G.STATES.SHOP then
			G.E_MANAGER:add_event(Event({
				func = function()
					Judgement.create_booster("p_jud_boonpj")
					return true
				end,
			}))
		end
	end,
})

-- OK so i did not know extra_value was non-existant when i first coded this joker. Don't judge me.
SMODS.Joker({
	key = "globophobia",
	config = {
		extra = { max = 0 },
	},
	rarity = 2,
	blueprint_compat = false,
	discovered = false,
	pos = {
		x = 0,
		y = 0,
	},
	cost = 5,
	loc_vars = function(self, info_queue, card)
		local jud = card.ability.extra
		return {
			vars = {},
		}
	end,
	update = function(self, card, context)
		local jud = card.ability.extra
		if jud.max >= 15 and not card.destroyed then
			SMODS.destroy_cards(card)
			card.destroyed = true
		end
		if card.area and card.area == G.jokers then
			for i = 1, #G.jokers.cards do
				local rcard = G.jokers.cards[i]
				if not rcard.jud_updated then
					rcard.ability.extra_value = rcard.sell_cost
					rcard:set_cost()
					rcard.jud_updated = true
				end
			end
		end
	end,
	calculate = function(self, card, context)
		local jud = card.ability.extra
		if context.selling_card and context.card.ability.set == "Joker" then
			jud.max = jud.max + context.card.sell_cost
		end
		if context.end_of_round then
			jud.max = 0
		end
	end,
})

SMODS.Joker({
	key = "ludophobia",
	config = {
		extra = {
			hands = 1,
			discards = 1,
			odds = 4,
		},
	},
	rarity = 2,
	blueprint_compat = false,
	discovered = false,
	pos = {
		x = 1,
		y = 0,
	},
	cost = 5,
	loc_vars = function(self, info_queue, card)
		local jud = card.ability.extra
		return {
			vars = { jud.hands, jud.discards, (G.GAME.probabilities.normal or 1), jud.odds },
		}
	end,
	calculate = function(self, card, context)
		local jud = card.ability.extra
		if context.setting_blind then
			ease_hands_played(jud.hands)
			ease_discard(jud.discards)
		end
		if context.joker_main and not context.blueprint then
			if pseudorandom("ludophobia") < G.GAME.probabilities.normal / jud.odds then
				card:start_dissolve(nil, 1, 6)
			end
		end
	end,
})

SMODS.Joker({
	key = "on",
	config = {
		extra = {
			odds = 3,
		},
	},
	rarity = 2,
	blueprint_compat = false,
	discovered = false,
	pos = {
		x = 1,
		y = 0,
	},
	cost = 5,
	loc_vars = function(self, info_queue, card)
		local jud = card.ability.extra
		return {
			vars = { (G.GAME.probabilities.normal or 1), jud.odds },
		}
	end,
	calculate = function(self, card, context)
		local jud = card.ability.extra
		if context.flex_destroyed and not context.blueprint then
			if pseudorandom("jud_on") < G.GAME.probabilities.normal / jud.odds then
				local ccard = copy_card(context.destroyedflexcard)
				local area = context.destroyedflexcard.area
				ccard:add_to_deck()
				area:emplace(ccard)
			end
			G.E_MANAGER:add_event(Event({
				delay = 1,
				func = function()
					card:set_ability("j_jud_off")
					return true
				end,
			}))
		end
	end,
})

SMODS.Joker({
	key = "off",
	config = {
		extra = {
			odds = 3,
		},
	},
	rarity = 2,
	blueprint_compat = false,
	discovered = false,
	pos = {
		x = 1,
		y = 1,
	},
	cost = 5,
	loc_vars = function(self, info_queue, card)
		local jud = card.ability.extra
		return {
			vars = { (G.GAME.probabilities.normal or 1), jud.odds },
		}
	end,
	calculate = function(self, card, context)
		local jud = card.ability.extra
		if context.flex_destroyed and not context.blueprint then
			G.E_MANAGER:add_event(Event({
				delay = 1,
				func = function()
					card:set_ability("j_jud_on")
					return true
				end,
			}))
		end
	end,
})

SMODS.Joker({
	key = "stamp",
	config = {
		extra = {
			odds = 3,
		},
	},
	rarity = 2,
	blueprint_compat = false,
	discovered = false,
	pos = {
		x = 1,
		y = 0,
	},
	cost = 5,
	loc_vars = function(self, info_queue, card)
		local jud = card.ability.extra
		return {
			vars = { (G.GAME.probabilities.normal or 1), jud.odds },
		}
	end,
	calculate = function(self, card, context)
		local jud = card.ability.extra
		if
			context.individual
			and context.cardarea == G.play
			and not context.blueprint
			and pseudorandom("jud_stamp") < G.GAME.probabilities.normal / jud.odds
		then
			Judgement.random_post(context.other_card)
		end
	end,
})

SMODS.Joker({
	key = "obesophobia",
	config = {
		extra = {
			limit = 2,
		},
	},
	rarity = 2,
	blueprint_compat = false,
	discovered = false,
	pos = {
		x = 1,
		y = 0,
	},
	cost = 5,
	loc_vars = function(self, info_queue, card)
		local jud = card.ability.extra
		return {
			vars = { jud.limit },
		}
	end,
	add_to_deck = function(self, card, from_debuff)
		local jud = card.ability.extra
		Judgement.total_limit(jud.limit)
	end,
	remove_from_deck = function(self, card, from_debuff)
		local jud = card.ability.extra
		Judgement.total_limit(-jud.limit)
	end,
	update = function(self,card,context)
	if G and G.hand and G.hand.highlighted then
		if #G.hand.highlighted > #G.hand.cards / 2 and not card.getting_sliced then
			card.getting_sliced = true
			SMODS.destroy_cards(card)
		end
	end
end
})

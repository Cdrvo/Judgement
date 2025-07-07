SMODS.Joker({
	key = "maniac",
	config = {
		extra = {},
	},
	rarity = 3,
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
		if context.end_of_round and context.main_eval and G.GAME.blind.boss then
			G.E_MANAGER:add_event(Event({
				func = function()
					add_tag(Tag("tag_jud_packtag"))
					play_sound("generic1", 0.9 + math.random() * 0.1, 0.8)
					play_sound("holo1", 1.2 + math.random() * 0.1, 0.4)
					return true
				end,
			}))
		end
	end,
})
SMODS.Joker({
	key = "famished",
	config = {
		extra = {
			xmult = 1,
			xmultg = 0.2,
		},
	},
	rarity = 3,
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
		if context.remove_playing_cards and not context.blueprint then
			print("removed")
			for _, v in ipairs(context.removed) do
				if SMODS.has_enhancement(v, "m_jud_cannibal") then
					print("cardchecked")
					jud.xmult = jud.xmult + jud.xmultg
				end
			end
			if context.joker_main then
				return {
					xmult = jud.xmult,
				}
			end
		end
	end,
})

SMODS.Joker({
	key = "ergophobia",
	config = {
		extra = {
			xmult = 1,
			xmultg = 0.2,
			odds = 4,
		},
	},
	rarity = 3,
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
		if
			context.retrigger_joker_check
			and not context.retrigger_joker
			and context.other_card ~= card
			and not context.blueprint
		then
			return {
				message = localize("k_again_ex"),
				repetitions = 1,
			}
		end
		if
			context.end_of_round
			and context.main_eval
			and pseudorandom("ergophobia") < G.GAME.probabilities.normal / jud.odds
		then
			card:start_dissolve(nil, 1, 6)
		end
	end,
})

SMODS.Joker({
	key = "glossophobia",
	config = {
		extra = {
			xmult = 3,
		},
	},
	rarity = 3,
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
		if context.joker_main then
			local rr = nil
			for i = 1, #G.jokers.cards do
				if G.jokers.cards[i] == card then
					rr = i
					break
				end
			end
			if G.jokers.cards[rr + 1] == nil or G.jokers.cards[rr - 1] == nil then
				card:start_dissolve(nil, 1.6)
			else
				return {
					x_mult = card.ability.extra.xmult,
				}
			end
		end
	end,
})

SMODS.Joker({
	key = "enochlophobia",
	config = {
		extra = {
			emult = 1,
			emultg = 0.1,
			emultg2 = 0.5,
			emultg3 = 0,
		},
	},
	rarity = 3,
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
		if context.joker_main and #context.scoring_hand == 1 then
			jud.emultg3 = jud.emultg3 + jud.emultg
			jud.emult = jud.emultg2 * (G.jokers.config.card_limit - #G.jokers.cards) + jud.emultg3
			return {
				emult = jud.emult,
			}
		elseif context.joker_main then
			card:start_dissolve(nil, 1.6)
		end
	end,
})

SMODS.Joker({
	key = "necromantic",
	config = {
		extra = {
			odds = 2,
		},
	},
	rarity = 3,
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
		if
			context.jud_joker_destroyed
			and pseudorandom("necromantic") < G.GAME.probabilities.normal / jud.odds
			and context.jud_destroyedj ~= card
		then
			local copied = copy_card(context.jud_destroyedj, nil)
			copied:add_to_deck()
			copied:set_edition({ negative = true }, true)
			G.jokers:emplace(copied)
		end
	end,
})

SMODS.Joker({
	key = "crypto",
	config = {
		extra = {
			odds = 2,
		},
	},
	rarity = 3,
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
			if G.GAME.current_round.hands_played == 0 then
				G.GAME.cashout = 2
			elseif G.GAME.current_round.hands_played == 1 then
				G.GAME.cashout = 1.5
			elseif G.GAME.current_round.hands_played > 1 then
				G.GAME.cashout = 1
			end
		end
	end,
})

SMODS.Joker({
	key = "scopophobia",
	config = {
		extra = {
			odds = 2,
		},
	},
	rarity = 3,
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
		local rr = nil
		local jud = card.ability.extra
		for i = 1, #G.jokers.cards do
			if G.jokers.cards[i] == card then
				rr = i
				break
			end
		end
		if context.blueprint and context.joker_main then
			card:start_dissolve(nil, 1.6)
		end
		if
			context.retrigger_joker_check
			and not context.retrigger_joker
			and context.other_card == G.jokers.cards[rr + 1]
			and context.other_card ~= card
			and not context.blueprint
		then
			return {
				message = localize("k_again_ex"),
				repetitions = 1,
			}
		end
	end,
})

SMODS.Joker({
	key = "astrophobia",
	config = {
		extra = {
			level = 2,
		},
	},
	rarity = 3,
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
			if context.joker_main and G.GAME.current_round.hands_played == 0 then
				return{
					level_up = jud.level
				}
			end
			if context.using_consumeable and context.consumeable.ability.set == "Planet" then
				card:start_dissolve(nil,1.6)
			end

		end
})

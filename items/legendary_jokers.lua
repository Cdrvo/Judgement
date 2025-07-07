SMODS.Joker({
	key = "bogdonoff",
	config = {
		extra = {
			activated = false,
		},
	},
	rarity = 4,
	blueprint_compat = true,
	discovered = false,
	pos = {
		x = 1,
		y = 0,
	},
	soul_pos = {
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
		if context.jud_easedollar and to_big(context.jud_easedollar) > to_big(0) and not jud.activated then
			jud.activated = true
			ease_dollars(context.jud_easedollar)
		end
		if jud.activated == true then
			local event
			event = Event({
				blockable = false,
				blocking = false,
				pause_force = true,
				no_delete = true,
				trigger = "after",
				delay = 1.2,
				timer = "UPTIME",
				func = function()
					event.start_timer = false
					jud.activated = false
				end,
			})
			G.E_MANAGER:add_event(event)
		end
	end,
})

SMODS.Joker({
	key = "acosta",
	config = {
		extra = {
			odds = 4,
		},
	},
	rarity = 4,
	blueprint_compat = true,
	discovered = false,
	pos = {
		x = 1,
		y = 0,
	},
	soul_pos = {
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
		if context.ending_shop and pseudorandom("acosta") < G.GAME.probabilities.normal / jud.odds then
			local jokers = {}
			for i = 1, #G.jokers.cards do
				if not G.jokers.cards[i].edition then
					jokers[#jokers + 1] = G.jokers.cards[i]
				end
			end
			if #jokers > 0 then
				local selected = pseudorandom_element(jokers, pseudoseed("acosta"))
				selected:set_edition({ negative = true }, true)
			end
		end
	end,
})

SMODS.Joker({
	key = "chaetophobia",
	config = {
		extra = {
			xchips = 4,
		},
	},
	rarity = 4,
	blueprint_compat = true,
	discovered = false,
	pos = {
		x = 1,
		y = 0,
	},
	soul_pos = {
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
		if context.individual and context.cardarea == G.play then
			if context.other_card:get_id() <= 5 then
				return {
					xchips = jud.xchips,
				}
			else
				card:start_dissolve(nil, 1.6)
			end
		end
	end,
})

SMODS.Joker({
	key = "agoraphobia",
	config = {
		extra = {},
	},
	rarity = 4,
	blueprint_compat = true,
	discovered = false,
	pos = {
		x = 1,
		y = 0,
	},
	soul_pos = {
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
		if context.setting_blind then
			local ccard = SMODS.add_card({
				key = pseudorandom_element(G.P_CENTER_POOLS.Joker).key,
			})
			if ccard.config.center.rarity == 4 then
				card:start_dissolve(nil, 1.6)
			end
		end
	end,
})

SMODS.Joker({
	key = "metathesiophobia",
	config = {
		extra = {
			xmult = 0.2,
		},
	},
	rarity = 4,
	blueprint_compat = true,
	discovered = false,
	pos = {
		x = 1,
		y = 0,
	},
	soul_pos = {
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
		if context.playing_card_added or context.remove_playing_cards and not context.blueprint then
			card:start_dissolve(nil, 1.6)
		elseif context.joker_main then
			return {
				xmult = #G.playing_cards * jud.xmult,
			}
		end
	end,
})

SMODS.Joker({
	key = "ra",
	config = {
		extra = {
			remove = 0,
		},
	},
	rarity = 4,
	blueprint_compat = true,
	discovered = false,
	pos = {
		x = 1,
		y = 0,
	},
	soul_pos = {
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
		if context.jud_upgraded then
			SMODS.change_play_limit(3)
			SMODS.change_discard_limit(3)
			jud.remove = jud.remove + 3
		end
	end,
	remove_from_deck = function(self, card, from_debuff)
		local jud = card.ability.extra
		SMODS.change_play_limit(-jud.remove)
		SMODS.change_discard_limit(-jud.remove)
	end,
})

SMODS.Joker({
	key = "dante",
	config = {
		extra = {
			remove = 0,
		},
	},
	rarity = 4,
	blueprint_compat = true,
	discovered = false,
	pos = {
		x = 1,
		y = 0,
	},
	soul_pos = {
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
		local allcons = {}
		if context.joker_main and next(context.poker_hands["Three of a Kind"]) then
		for k, _ in pairs(SMODS.ConsumableTypes) do
			table.insert(allcons, k)
		end
		for i = 1, #allcons do
			SMODS.add_card({
				set = allcons[1],
			})
			table.remove(allcons, 1)
		end
		end
	end,
})

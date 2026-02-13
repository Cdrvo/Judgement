SMODS.ConsumableType({
	key = "titledeeds",
	collection_rows = { 4, 5 },
	primary_colour = Judgement.C.DEEDS,
	secondary_colour = Judgement.C.DEEDS,
	shop_rate = 0.03,
})


SMODS.Consumable({
	key = "flippeddeeds",
	set = "titledeeds",
	no_collection = true,
	config = {},
	cost = 5,
		atlas = "avenues",
	pos = {
		x = 8,
		y = 1,
	},
	can_use = function(self, card)
		return true
	end,
})

SMODS.Consumable({
	key = "mediterranean",
	set = "titledeeds",
	config = {
		extra = { payout = 1.5, ease = 30 },
	},
	loc_vars = function(self, info_queue, card)
		local jud = card.ability.extra
		return {
			vars = { jud.payout, jud.ease },
		}
	end,
	cost = 5,
	pools = {
		CommonDeeds = true,
	},
	atlas = "avenues",
	pos = {
		x = 0,
		y = 0,
	},
	keep_on_use = function(self, card)
		return true
	end,
	can_use = function(self, card)
		return true
	end,
	use = function(self, card, area, copier)
		local jud = card.ability.extra
		ease_dollars(jud.ease)
		G.E_MANAGER:add_event(Event({
			trigger = "before",
			delay = 0.2,
			func = function()
				card:flip()
				card:set_ability("c_jud_flippeddeeds")
				return true
			end,
		}))
		G.E_MANAGER:add_event(Event({
			trigger = "after",
			delay = 0.2,
			func = function()
				card:flip()
				return true
			end,
		}))
	end,
	add_to_deck = function(self, card, from_debuff)
		local jud = card.ability.extra
		G.GAME.jud_cashout = G.GAME.jud_cashout + jud.payout
	end,
	remove_from_deck = function(self, card, from_debuff)
		local jud = card.ability.extra
		G.GAME.jud_cashout = G.GAME.jud_cashout - jud.payout
	end,
})

SMODS.Consumable({
	key = "baltic",
	set = "titledeeds",
	config = {
		extra = { payout = 1.7, ease = 40 },
	},
	loc_vars = function(self, info_queue, card)
		local jud = card.ability.extra
		return {
			vars = { jud.payout, jud.ease },
		}
	end,
	atlas = "avenues",
	pos = {
		x = 1,
		y = 0,
	},
	pools = {
		CommonDeeds = true,
	},
	cost = 5,
	keep_on_use = function(self, card)
		return true
	end,
	can_use = function(self, card)
		return true
	end,
	use = function(self, card, area, copier)
		local jud = card.ability.extra
		ease_dollars(jud.ease)
		G.E_MANAGER:add_event(Event({
			trigger = "before",
			delay = 0.2,
			func = function()
				card:flip()
				card:set_ability("c_jud_flippeddeeds")
				return true
			end,
		}))
		G.E_MANAGER:add_event(Event({
			trigger = "after",
			delay = 0.2,
			func = function()
				card:flip()
				return true
			end,
		}))
	end,
	add_to_deck = function(self, card, from_debuff)
		local jud = card.ability.extra
		G.GAME.jud_cashout = G.GAME.jud_cashout + jud.payout
	end,
	remove_from_deck = function(self, card, from_debuff)
		local jud = card.ability.extra
		G.GAME.jud_cashout = G.GAME.jud_cashout - jud.payout
	end,
})

SMODS.Consumable({
	key = "oriental",
	set = "titledeeds",
	config = {
		extra = { payout = 2, ease = 2 },
	},
	loc_vars = function(self, info_queue, card)
		local jud = card.ability.extra
		return {
			vars = { jud.payout, jud.ease },
		}
	end,
	atlas = "avenues",
	pos = {
		x = 2,
		y = 0,
	},
	pools = {
		CommonDeeds = true,
	},
	cost = 5,
	keep_on_use = function(self, card)
		return true
	end,
	can_use = function(self, card)
		return true
	end,
	use = function(self, card, area, copier)
		local jud = card.ability.extra
		ease_hands_played(jud.ease)
		G.E_MANAGER:add_event(Event({
			trigger = "before",
			delay = 0.2,
			func = function()
				card:flip()
				card:set_ability("c_jud_flippeddeeds")
				return true
			end,
		}))
		G.E_MANAGER:add_event(Event({
			trigger = "after",
			delay = 0.2,
			func = function()
				card:flip()
				return true
			end,
		}))
	end,
	add_to_deck = function(self, card, from_debuff)
		local jud = card.ability.extra
		G.GAME.jud_cashout = G.GAME.jud_cashout + jud.payout
	end,
	remove_from_deck = function(self, card, from_debuff)
		local jud = card.ability.extra
		G.GAME.jud_cashout = G.GAME.jud_cashout - jud.payout
	end,
})

SMODS.Consumable({
	key = "vermont",
	set = "titledeeds",
	config = {
		extra = { payout = 2.5, ease = 2 },
	},
	atlas = "avenues",
	pos = {
		x = 3,
		y = 0,
	},
	loc_vars = function(self, info_queue, card)
		local jud = card.ability.extra
		return {
			vars = { jud.payout, jud.ease },
		}
	end,
	pools = {
		CommonDeeds = true,
	},
	cost = 5,
	keep_on_use = function(self, card)
		return true
	end,
	can_use = function(self, card)
		return true
	end,
	use = function(self, card, area, copier)
		local jud = card.ability.extra
		ease_discard(jud.ease)
		G.E_MANAGER:add_event(Event({
			trigger = "before",
			delay = 0.2,
			func = function()
				card:flip()
				card:set_ability("c_jud_flippeddeeds")
				return true
			end,
		}))
		G.E_MANAGER:add_event(Event({
			trigger = "after",
			delay = 0.2,
			func = function()
				card:flip()
				return true
			end,
		}))
	end,
	add_to_deck = function(self, card, from_debuff)
		local jud = card.ability.extra
		G.GAME.jud_cashout = G.GAME.jud_cashout + jud.payout
	end,
	remove_from_deck = function(self, card, from_debuff)
		local jud = card.ability.extra
		G.GAME.jud_cashout = G.GAME.jud_cashout - jud.payout
	end,
})

SMODS.Consumable({
	key = "conneciut",
	set = "titledeeds",
	config = {
		extra = { payout = 3, ease = 0.5 },
	},
	atlas = "avenues",
	pos = {
		x = 4,
		y = 0,
	},
	loc_vars = function(self, info_queue, card)
		local jud = card.ability.extra
		return {
			vars = { jud.payout, jud.ease },
		}
	end,
	pools = {
		UncommonDeeds = true,
	},
	cost = 5,
	keep_on_use = function(self, card)
		return true
	end,
	can_use = function(self, card)
		return G.GAME and G.GAME.blind and G.GAME.blind.in_blind
	end,
	use = function(self, card, area, copier)
		local jud = card.ability.extra
		G.GAME.blind.chips = G.GAME.blind.chips * jud.ease
		G.GAME.blind.chips_text = number_format(G.GAME.blind.chips)
		G.E_MANAGER:add_event(Event({
			trigger = "before",
			delay = 0.2,
			func = function()
				card:flip()
				card:set_ability("c_jud_flippeddeeds")
				return true
			end,
		}))
		G.E_MANAGER:add_event(Event({
			trigger = "after",
			delay = 0.2,
			func = function()
				card:flip()
				return true
			end,
		}))
	end,
	add_to_deck = function(self, card, from_debuff)
		local jud = card.ability.extra
		G.GAME.jud_cashout = G.GAME.jud_cashout + jud.payout
	end,
	remove_from_deck = function(self, card, from_debuff)
		local jud = card.ability.extra
		G.GAME.jud_cashout = G.GAME.jud_cashout - jud.payout
	end,
})

SMODS.Consumable({
	key = "charles",
	set = "titledeeds",
	config = {
		extra = { payout = 3.5, ease = 2 },
	},
	pools = {
		UncommonDeeds = true,
	},
	atlas = "avenues",
	pos = {
		x = 5,
		y = 0,
	},
	loc_vars = function(self, info_queue, card)
		local jud = card.ability.extra
		return {
			vars = { jud.payout, jud.ease },
		}
	end,
	cost = 5,
	keep_on_use = function(self, card)
		return true
	end,
	can_use = function(self, card)
		return true
	end,
	use = function(self, card, area, copier)
		local jud = card.ability.extra
		G.hand:change_size(jud.ease)
		G.E_MANAGER:add_event(Event({
			trigger = "before",
			delay = 0.2,
			func = function()
				card:flip()
				card:set_ability("c_jud_flippeddeeds")
				return true
			end,
		}))
		G.E_MANAGER:add_event(Event({
			trigger = "after",
			delay = 0.2,
			func = function()
				card:flip()
				return true
			end,
		}))
	end,
	add_to_deck = function(self, card, from_debuff)
		local jud = card.ability.extra
		G.GAME.jud_cashout = G.GAME.jud_cashout + jud.payout
	end,
	remove_from_deck = function(self, card, from_debuff)
		local jud = card.ability.extra
		G.GAME.jud_cashout = G.GAME.jud_cashout - jud.payout
	end,
})

SMODS.Consumable({
	key = "tennesse",
	set = "titledeeds",
	config = {
		extra = { payout = 4, ease = nil },
	},
	pools = {
		UncommonDeeds = true,
	},
	atlas = "avenues",
	pos = {
		x = 6,
		y = 0,
	},
	loc_vars = function(self, info_queue, card)
		local jud = card.ability.extra
		return {
			vars = { jud.payout, jud.ease },
		}
	end,
	cost = 5,
	keep_on_use = function(self, card)
		return true
	end,
	can_use = function(self, card)
		return G.GAME and G.GAME.blind and G.GAME.blind.in_blind
	end,
	use = function(self, card, area, copier)
		local jud = card.ability.extra
		SMODS.draw_cards(G.hand.config.card_limit)
		G.E_MANAGER:add_event(Event({
			trigger = "before",
			delay = 0.2,
			func = function()
				card:flip()
				card:set_ability("c_jud_flippeddeeds")
				return true
			end,
		}))
		G.E_MANAGER:add_event(Event({
			trigger = "after",
			delay = 0.2,
			func = function()
				card:flip()
				return true
			end,
		}))
	end,
	add_to_deck = function(self, card, from_debuff)
		local jud = card.ability.extra
		G.GAME.jud_cashout = G.GAME.jud_cashout + jud.payout
	end,
	remove_from_deck = function(self, card, from_debuff)
		local jud = card.ability.extra
		G.GAME.jud_cashout = G.GAME.jud_cashout - jud.payout
	end,
})

SMODS.Consumable({
	key = "newyork",
	set = "titledeeds",
	config = {
		extra = { payout = 4.5, ease = 4 },
	},
	pools = {
		UncommonDeeds = true,
	},
	atlas = "avenues",
	pos = {
		x = 7,
		y = 0,
	},
	loc_vars = function(self, info_queue, card)
		local jud = card.ability.extra
		return {
			vars = { jud.payout, jud.ease },
		}
	end,
	cost = 5,
	keep_on_use = function(self, card)
		return true
	end,
	can_use = function(self, card)
		return G.GAME and G.GAME.blind and G.GAME.blind.in_blind
	end,
	use = function(self, card, area, copier)
		local jud = card.ability.extra
		for i = 1, jud.ease do
			G.E_MANAGER:add_event(Event({
				trigger = "before",
				delay = 1.5,
				func = function()
					Judgement.find_lowest(G.hand.cards):start_dissolve()
					return true
				end,
			}))
		end
		G.E_MANAGER:add_event(Event({
			trigger = "before",
			delay = 0.2,
			func = function()
				card:flip()
				card:set_ability("c_jud_flippeddeeds")
				return true
			end,
		}))
		G.E_MANAGER:add_event(Event({
			trigger = "after",
			delay = 0.2,
			func = function()
				card:flip()
				return true
			end,
		}))
	end,
	add_to_deck = function(self, card, from_debuff)
		local jud = card.ability.extra
		G.GAME.jud_cashout = G.GAME.jud_cashout + jud.payout
	end,
	remove_from_deck = function(self, card, from_debuff)
		local jud = card.ability.extra
		G.GAME.jud_cashout = G.GAME.jud_cashout - jud.payout
	end,
})

SMODS.Consumable({
	key = "kentucky",
	set = "titledeeds",
	config = {
		extra = { payout = 5, ease = 4 },
	},
	atlas = "avenues",
	pos = {
		x = 8,
		y = 0,
	},
	pools = {
		UncommonDeeds = true,
	},
	loc_vars = function(self, info_queue, card)
		local jud = card.ability.extra
		return {
			vars = { jud.payout, jud.ease },
		}
	end,
	cost = 5,
	keep_on_use = function(self, card)
		return true
	end,
	can_use = function(self, card)
		return true
	end,
	use = function(self, card, area, copier)
		local jud = card.ability.extra
		Judgement.add_tag(true, jud.ease, nil)
		G.E_MANAGER:add_event(Event({
			trigger = "before",
			delay = 0.2,
			func = function()
				card:flip()
				card:set_ability("c_jud_flippeddeeds")
				return true
			end,
		}))
		G.E_MANAGER:add_event(Event({
			trigger = "after",
			delay = 0.2,
			func = function()
				card:flip()
				return true
			end,
		}))
	end,
	add_to_deck = function(self, card, from_debuff)
		local jud = card.ability.extra
		G.GAME.jud_cashout = G.GAME.jud_cashout + jud.payout
	end,
	remove_from_deck = function(self, card, from_debuff)
		local jud = card.ability.extra
		G.GAME.jud_cashout = G.GAME.jud_cashout - jud.payout
	end,
})

SMODS.Consumable({
	key = "indiana",
	set = "titledeeds",
	config = {
		extra = { payout = 5.5, ease = 4 },
	},
	pools = {
		RareDeeds = true,
	},
	atlas = "avenues",
	pos = {
		x = 0,
		y = 1,
	},
	loc_vars = function(self, info_queue, card)
		local jud = card.ability.extra
		return {
			vars = { jud.payout, jud.ease },
		}
	end,
	cost = 5,
	keep_on_use = function(self, card)
		return true
	end,
	can_use = function(self, card)
		return true
	end,
	use = function(self, card, area, copier)
		local jud = card.ability.extra
		for i = 1, 4 do
			G.E_MANAGER:add_event(Event({
				func = function()
					SMODS.add_card({
						set = "Spectral",
					})
					return true
				end,
			}))
		end
		G.E_MANAGER:add_event(Event({
			trigger = "before",
			delay = 0.2,
			func = function()
				card:flip()
				card:set_ability("c_jud_flippeddeeds")
				return true
			end,
		}))
		G.E_MANAGER:add_event(Event({
			trigger = "after",
			delay = 0.2,
			func = function()
				card:flip()
				return true
			end,
		}))
	end,
	add_to_deck = function(self, card, from_debuff)
		local jud = card.ability.extra
		G.GAME.jud_cashout = G.GAME.jud_cashout + jud.payout
	end,
	remove_from_deck = function(self, card, from_debuff)
		local jud = card.ability.extra
		G.GAME.jud_cashout = G.GAME.jud_cashout - jud.payout
	end,
})

SMODS.Consumable({
	key = "illinois",
	set = "titledeeds",
	config = {
		extra = { payout = 6, ease = 2 },
	},
	pools = {
		RareDeeds = true,
	},
	atlas = "avenues",
	pos = {
		x = 1,
		y = 1,
	},
	loc_vars = function(self, info_queue, card)
		local jud = card.ability.extra
		return {
			vars = { jud.payout, jud.ease },
		}
	end,
	cost = 5,
	keep_on_use = function(self, card)
		return true
	end,
	can_use = function(self, card)
		return true
	end,
	use = function(self, card, area, copier)
		local jud = card.ability.extra
		for i = 1, jud.ease do
			-- ALL CREDIT GOES TO CRYPTID
			local area
			if G.STATE == G.STATES.HAND_PLAYED then
				if not G.redeemed_vouchers_during_hand then
					G.redeemed_vouchers_during_hand =
						CardArea(G.play.T.x, G.play.T.y, G.play.T.w, G.play.T.h, { type = "play", card_limit = 5 })
				end
				area = G.redeemed_vouchers_during_hand
			else
				area = G.play
			end
			local _pool = get_current_pool("Voucher", nil, nil, nil, true)
			local center = pseudorandom_element(_pool, pseudoseed("illinois"))
			local it = 1
			while center == "UNAVAILABLE" do
				it = it + 1
				center = pseudorandom_element(_pool, pseudoseed("illinois" .. it))
			end
			local card = create_card("Voucher", area, nil, nil, nil, nil, center)
			card:start_materialize()
			area:emplace(card)
			card.cost = 0
			card.shop_voucher = false
			local current_round_voucher = G.GAME.current_round.voucher
			card:redeem()
			G.GAME.current_round.voucher = current_round_voucher
			G.E_MANAGER:add_event(Event({
				trigger = "after",
				delay = 0,
				func = function()
					card:start_dissolve()
					return true
				end,
			}))
			--
		end
		G.E_MANAGER:add_event(Event({
			trigger = "before",
			delay = 0.2,
			func = function()
				card:flip()
				card:set_ability("c_jud_flippeddeeds")
				return true
			end,
		}))
		G.E_MANAGER:add_event(Event({
			trigger = "after",
			delay = 0.2,
			func = function()
				card:flip()
				return true
			end,
		}))
	end,
	add_to_deck = function(self, card, from_debuff)
		local jud = card.ability.extra
		G.GAME.jud_cashout = G.GAME.jud_cashout + jud.payout
	end,
	remove_from_deck = function(self, card, from_debuff)
		local jud = card.ability.extra
		G.GAME.jud_cashout = G.GAME.jud_cashout - jud.payout
	end,
})

SMODS.Consumable({
	key = "atlantic",
	set = "titledeeds",
	config = {
		extra = { payout = 6.5, ease = 5 },
	},
	pools = {
		RareDeeds = true,
	},
	atlas = "avenues",
	pos = {
		x = 2,
		y = 1,
	},
	loc_vars = function(self, info_queue, card)
		local jud = card.ability.extra
		return {
			vars = { jud.payout, jud.ease },
		}
	end,
	cost = 5,
	keep_on_use = function(self, card)
		return true
	end,
	can_use = function(self, card)
		return G.STATE == G.STATES.SHOP
	end,
	use = function(self, card, area, copier)
		local jud = card.ability.extra
		G.GAME.current_round.reroll_cost = jud.ease
		G.E_MANAGER:add_event(Event({
			trigger = "before",
			delay = 0.2,
			func = function()
				card:flip()
				card:set_ability("c_jud_flippeddeeds")
				return true
			end,
		}))
		G.E_MANAGER:add_event(Event({
			trigger = "after",
			delay = 0.2,
			func = function()
				card:flip()
				return true
			end,
		}))
	end,
	add_to_deck = function(self, card, from_debuff)
		local jud = card.ability.extra
		G.GAME.jud_cashout = G.GAME.jud_cashout + jud.payout
	end,
	remove_from_deck = function(self, card, from_debuff)
		local jud = card.ability.extra
		G.GAME.jud_cashout = G.GAME.jud_cashout - jud.payout
	end,
	update = function(self, card, context)
		local jud = card.ability.extra
		jud.ease = G.GAME.starting_params.reroll_cost
	end,
})

SMODS.Consumable({
	key = "ventnor",
	set = "titledeeds",
	config = {
		extra = { payout = 7, ease = 5 },
	},
	loc_vars = function(self, info_queue, card)
		local jud = card.ability.extra
		return {
			vars = { jud.payout, jud.ease },
		}
	end,
	cost = 5,
	pools = {
		RareDeeds = true,
	},
	atlas = "avenues",
	pos = {
		x = 3,
		y = 1,
	},
	keep_on_use = function(self, card)
		return true
	end,
	can_use = function(self, card)
		if G.jokers.config.card_limit > #G.jokers.cards then
			return true
		end
	end,
	use = function(self, card, area, copier)
		local jud = card.ability.extra
		local ammount = G.jokers.config.card_limit - #G.jokers.cards
		for i = 1, ammount do
			SMODS.add_card({
				key = pseudorandom_element(Judgement.vanilla_cards()),
			})
		end
		G.E_MANAGER:add_event(Event({
			trigger = "before",
			delay = 0.2,
			func = function()
				card:flip()
				card:set_ability("c_jud_flippeddeeds")
				return true
			end,
		}))
		G.E_MANAGER:add_event(Event({
			trigger = "after",
			delay = 0.2,
			func = function()
				card:flip()
				return true
			end,
		}))
	end,
	add_to_deck = function(self, card, from_debuff)
		local jud = card.ability.extra
		G.GAME.jud_cashout = G.GAME.jud_cashout + jud.payout
	end,
	remove_from_deck = function(self, card, from_debuff)
		local jud = card.ability.extra
		G.GAME.jud_cashout = G.GAME.jud_cashout - jud.payout
	end,
})

SMODS.Consumable({
	key = "marvin",
	set = "titledeeds",
	config = {
		extra = { payout = 7.5, ease = 2 },
	},
	loc_vars = function(self, info_queue, card)
		local jud = card.ability.extra
		return {
			vars = { jud.payout, jud.ease },
		}
	end,
	cost = 5,
	pools = {
		RareDeeds = true,
	},
	atlas = "avenues",
	pos = {
		x = 4,
		y = 1,
	},
	keep_on_use = function(self, card)
		return true
	end,
	can_use = function(self, card)
		return true
	end,
	use = function(self, card, area, copier)
		local jud = card.ability.extra
		for i = 1, jud.ease do
			SMODS.add_card({
				set = "chance",
			})
		end
		G.E_MANAGER:add_event(Event({
			trigger = "before",
			delay = 0.2,
			func = function()
				card:flip()
				card:set_ability("c_jud_flippeddeeds")
				return true
			end,
		}))
		G.E_MANAGER:add_event(Event({
			trigger = "after",
			delay = 0.2,
			func = function()
				card:flip()
				return true
			end,
		}))
	end,
	add_to_deck = function(self, card, from_debuff)
		local jud = card.ability.extra
		G.GAME.jud_cashout = G.GAME.jud_cashout + jud.payout
	end,
	remove_from_deck = function(self, card, from_debuff)
		local jud = card.ability.extra
		G.GAME.jud_cashout = G.GAME.jud_cashout - jud.payout
	end,
})

SMODS.Consumable({
	key = "pacific",
	set = "titledeeds",
	config = {
		extra = { payout = 8, ease = 4 },
	},
	atlas = "avenues",
	pos = {
		x = 5,
		y = 1,
	},
	loc_vars = function(self, info_queue, card)
		local jud = card.ability.extra
		return {
			vars = { jud.payout, jud.ease },
		}
	end,
	cost = 5,
	keep_on_use = function(self, card)
		return true
	end,
	pools = {
		LegendaryDeeds = true,
	},
	can_use = function(self, card)
		return true
	end,
	use = function(self, card, area, copier)
		local jud = card.ability.extra
		G.hand:change_size(jud.ease)
		G.E_MANAGER:add_event(Event({
			trigger = "before",
			delay = 0.2,
			func = function()
				card:flip()
				card:set_ability("c_jud_flippeddeeds")
				return true
			end,
		}))
		G.E_MANAGER:add_event(Event({
			trigger = "after",
			delay = 0.2,
			func = function()
				card:flip()
				return true
			end,
		}))
	end,
	add_to_deck = function(self, card, from_debuff)
		local jud = card.ability.extra
		G.GAME.jud_cashout = G.GAME.jud_cashout + jud.payout
	end,
	remove_from_deck = function(self, card, from_debuff)
		local jud = card.ability.extra
		G.GAME.jud_cashout = G.GAME.jud_cashout - jud.payout
	end,
})

SMODS.Consumable({
	key = "north",
	set = "titledeeds",
	config = {
		extra = { payout = 8.5, ease = 2 },
	},
	loc_vars = function(self, info_queue, card)
		local jud = card.ability.extra
		return {
			vars = { jud.payout, jud.ease },
		}
	end,
	pools = {
		LegendaryDeeds = true,
	},
	atlas = "avenues",
	pos = {
		x = 6,
		y = 1,
	},
	cost = 5,
	keep_on_use = function(self, card)
		return true
	end,
	can_use = function(self, card)
		return true
	end,
	use = function(self, card, area, copier)
		local jud = card.ability.extra
		Judgement.total_limit(jud.ease)
		G.E_MANAGER:add_event(Event({
			trigger = "before",
			delay = 0.2,
			func = function()
				card:flip()
				card:set_ability("c_jud_flippeddeeds")
				return true
			end,
		}))
		G.E_MANAGER:add_event(Event({
			trigger = "after",
			delay = 0.2,
			func = function()
				card:flip()
				return true
			end,
		}))
	end,
	add_to_deck = function(self, card, from_debuff)
		local jud = card.ability.extra
		G.GAME.jud_cashout = G.GAME.jud_cashout + jud.payout
	end,
	remove_from_deck = function(self, card, from_debuff)
		local jud = card.ability.extra
		G.GAME.jud_cashout = G.GAME.jud_cashout - jud.payout
	end,
})

SMODS.Consumable({
	key = "pennsylvania",
	set = "titledeeds",
	config = {
		extra = { payout = 9, ease = 2 },
	},
	pools = {
		LegendaryDeeds = true,
	},
	atlas = "avenues",
	pos = {
		x = 7,
		y = 1,
	},
	loc_vars = function(self, info_queue, card)
		local jud = card.ability.extra
		return {
			vars = { jud.payout, jud.ease },
		}
	end,
	cost = 5,
	keep_on_use = function(self, card)
		return true
	end,
	can_use = function(self, card)
		return true
	end,
	use = function(self, card, area, copier)
		local jud = card.ability.extra
		for i = 1, jud.ease do
			SMODS.add_card({ rarity = (Judgement.prefix .. "_epic"), set = "Joker" })
		end
		G.E_MANAGER:add_event(Event({
			trigger = "before",
			delay = 0.2,
			func = function()
				card:flip()
				card:set_ability("c_jud_flippeddeeds")
				return true
			end,
		}))
		G.E_MANAGER:add_event(Event({
			trigger = "after",
			delay = 0.2,
			func = function()
				card:flip()
				return true
			end,
		}))
	end,
	add_to_deck = function(self, card, from_debuff)
		local jud = card.ability.extra
		G.GAME.jud_cashout = G.GAME.jud_cashout + jud.payout
	end,
	remove_from_deck = function(self, card, from_debuff)
		local jud = card.ability.extra
		G.GAME.jud_cashout = G.GAME.jud_cashout - jud.payout
	end,
})

--Railroads

SMODS.Consumable({
	key = "reading",
	set = "titledeeds",
	config = {
		extra = { payout = 1.7, ease = 2 },
	},
	pools = {
		Railroads = true,
		CommonDeeds = true,
	},
	atlas = "avenues",
	pos = {
		x = 5,
		y = 2,
	},
	loc_vars = function(self, info_queue, card)
		local jud = card.ability.extra
		return {
			vars = { jud.payout, jud.ease },
		}
	end,
	cost = 5,
	keep_on_use = function(self, card)
		return true
	end,
	set_card_badge_type = function(self, card, badges)
		badges[#badges + 1] =
			create_badge(localize("k_titledeeds_z"), get_type_colour(self or card.config, card), nil, 1.2)
	end,
	can_use = function(self, card)
		return true
	end,
	use = function(self, card, area, copier)
		local jud = card.ability.extra
		Judgement.add_tag(true, jud.ease, nil)
		local jud = card.ability.extra
		G.E_MANAGER:add_event(Event({
			trigger = "before",
			delay = 0.2,
			func = function()
				card:flip()
				card:set_ability("c_jud_flippeddeeds")
				return true
			end,
		}))
		G.E_MANAGER:add_event(Event({
			trigger = "after",
			delay = 0.2,
			func = function()
				card:flip()
				return true
			end,
		}))
	end,
	add_to_deck = function(self, card, from_debuff)
		local jud = card.ability.extra
		G.GAME.jud_cashout = G.GAME.jud_cashout + jud.payout
	end,
	remove_from_deck = function(self, card, from_debuff)
		local jud = card.ability.extra
		G.GAME.jud_cashout = G.GAME.jud_cashout - jud.payout
	end,
	set_card_type_badge = function(self, card, badges)
		badges[1] = create_badge(localize("k_titledeeds_z"), get_type_colour(self or card.config, card), nil, 1.2)
	end,
})

SMODS.Consumable({
	key = "pennsylvaniar",
	set = "titledeeds",
	config = {
		extra = { payout = 1.7, ease = 1 },
	},
	atlas = "avenues",
	pos = {
		x = 6,
		y = 2,
	},
	loc_vars = function(self, info_queue, card)
		local jud = card.ability.extra
		return {
			vars = { jud.payout, jud.ease },
		}
	end,
	pools = {
		Railroads = true,
		CommonDeeds = true,
	},
	cost = 5,
	keep_on_use = function(self, card)
		return true
	end,
	set_card_badge_type = function(self, card, badges)
		badges[#badges + 1] =
			create_badge(localize("k_titledeeds_z"), get_type_colour(self or card.config, card), nil, 1.2)
	end,
	can_use = function(self, card)
		return true
	end,
	use = function(self, card, area, copier)
		local jud = card.ability.extra
		for i = 1, jud.ease do
			SMODS.add_card({ set = "Spectral" })
		end
		local jud = card.ability.extra
		G.E_MANAGER:add_event(Event({
			trigger = "before",
			delay = 0.2,
			func = function()
				card:flip()
				card:set_ability("c_jud_flippeddeeds")
				return true
			end,
		}))
		G.E_MANAGER:add_event(Event({
			trigger = "after",
			delay = 0.2,
			func = function()
				card:flip()
				return true
			end,
		}))
	end,
	add_to_deck = function(self, card, from_debuff)
		local jud = card.ability.extra
		G.GAME.jud_cashout = G.GAME.jud_cashout + jud.payout
	end,
	remove_from_deck = function(self, card, from_debuff)
		local jud = card.ability.extra
		G.GAME.jud_cashout = G.GAME.jud_cashout - jud.payout
	end,
	set_card_type_badge = function(self, card, badges)
		badges[1] = create_badge(localize("k_titledeeds_z"), get_type_colour(self or card.config, card), nil, 1.2)
	end,
})

SMODS.Consumable({
	key = "bno",
	set = "titledeeds",
	config = {
		extra = { payout = 1.7, ease = 1 },
	},
	atlas = "avenues",
	pos = {
		x = 7,
		y = 2,
	},
	loc_vars = function(self, info_queue, card)
		local jud = card.ability.extra
		return {
			vars = { jud.payout, jud.ease },
		}
	end,
	pools = {
		Railroads = true,
		CommonDeeds = true,
	},
	cost = 5,
	keep_on_use = function(self, card)
		return true
	end,
	can_use = function(self, card)
		return true
	end,
	set_card_type_badge = function(self, card, badges)
		badges[1] = create_badge(localize("k_titledeeds_z"), get_type_colour(self or card.config, card), nil, 1.2)
	end,
	use = function(self, card, area, copier)
		local jud = card.ability.extra
		local jokers = {}
		for i = 1, #G.jokers.cards do
			if not G.jokers.cards[i].edition then
				jokers[#jokers + 1] = G.jokers.cards[i]
			end
		end
		for i = 1, 1 do
			Judgement.random_joker(jokers):set_edition({ negative = true }, true)
		end
		local jud = card.ability.extra
		G.E_MANAGER:add_event(Event({
			trigger = "before",
			delay = 0.2,
			func = function()
				card:flip()
				card:set_ability("c_jud_flippeddeeds")
				return true
			end,
		}))
		G.E_MANAGER:add_event(Event({
			trigger = "after",
			delay = 0.2,
			func = function()
				card:flip()
				return true
			end,
		}))
	end,
	add_to_deck = function(self, card, from_debuff)
		local jud = card.ability.extra
		G.GAME.jud_cashout = G.GAME.jud_cashout + jud.payout
	end,
	remove_from_deck = function(self, card, from_debuff)
		local jud = card.ability.extra
		G.GAME.jud_cashout = G.GAME.jud_cashout - jud.payout
	end,
})

SMODS.Consumable({
	key = "shortline",
	set = "titledeeds",
	config = {
		extra = { payout = 1.7, ease = nil },
	},
	loc_vars = function(self, info_queue, card)
		local jud = card.ability.extra
		return {
			vars = { jud.payout, jud.ease },
		}
	end,
	atlas = "avenues",
	pos = {
		x = 8,
		y = 2,
	},
	pools = {
		Utilities = true,
		CommonDeeds = true,
	},
	set_card_badge_type = function(self, card, badges)
		badges[#badges + 1] =
			create_badge(localize("k_titledeeds_q"), get_type_colour(self or card.config, card), nil, 1.2)
	end,
	cost = 5,
	keep_on_use = function(self, card)
		return true
	end,
	can_use = function(self, card)
		if #G.hand.highlighted > 0 then
			return true
		end
	end,
	use = function(self, card, area, copier)
		local jud = card.ability.extra
		for i = 1, #G.hand.highlighted do
			G.hand.highlighted[i]:set_ability(G.P_CENTERS[SMODS.poll_enhancement({ guaranteed = true })])
		end
		local jud = card.ability.extra
		G.E_MANAGER:add_event(Event({
			trigger = "before",
			delay = 0.2,
			func = function()
				card:flip()
				card:set_ability("c_jud_flippeddeeds")
				return true
			end,
		}))
		G.E_MANAGER:add_event(Event({
			trigger = "after",
			delay = 0.2,
			func = function()
				card:flip()
				return true
			end,
		}))
	end,
	add_to_deck = function(self, card, from_debuff)
		local jud = card.ability.extra
		G.GAME.jud_cashout = G.GAME.jud_cashout + jud.payout
	end,
	remove_from_deck = function(self, card, from_debuff)
		local jud = card.ability.extra
		G.GAME.jud_cashout = G.GAME.jud_cashout - jud.payout
	end,
	set_card_type_badge = function(self, card, badges)
		badges[1] = create_badge(localize("k_titledeeds_q"), get_type_colour(self or card.config, card), nil, 1.2)
	end,
})

SMODS.Consumable({
	key = "electric",
	set = "titledeeds",
	config = {
		extra = { payout = 1.7, ease = 5 },
	},atlas = "avenues",
	pos = {
		x = 0,
		y = 3,
	},
	loc_vars = function(self, info_queue, card)
		local jud = card.ability.extra
		return {
			vars = { jud.payout, jud.ease },
		}
	end,
	pools = {
		Utilities = true,
		CommonDeeds = true,
	},
	set_card_badge_type = function(self, card, badges)
		badges[#badges + 1] =
			create_badge(localize("k_titledeeds_q"), get_type_colour(self or card.config, card), nil, 1.2)
	end,
	cost = 5,
	keep_on_use = function(self, card)
		return true
	end,
	can_use = function(self, card)
		return true
	end,
	use = function(self, card, area, copier)
		local jud = card.ability.extra
		Judgement.level_up_hand(Judgement.most_played(), jud.ease)
		local jud = card.ability.extra
		G.E_MANAGER:add_event(Event({
			trigger = "before",
			delay = 0.2,
			func = function()
				card:flip()
				card:set_ability("c_jud_flippeddeeds")
				return true
			end,
		}))
		G.E_MANAGER:add_event(Event({
			trigger = "after",
			delay = 0.2,
			func = function()
				card:flip()
				return true
			end,
		}))
	end,
	add_to_deck = function(self, card, from_debuff)
		local jud = card.ability.extra
		G.GAME.jud_cashout = G.GAME.jud_cashout + jud.payout
	end,
	remove_from_deck = function(self, card, from_debuff)
		local jud = card.ability.extra
		G.GAME.jud_cashout = G.GAME.jud_cashout - jud.payout
	end,
	set_card_type_badge = function(self, card, badges)
		badges[1] = create_badge(localize("k_titledeeds_q"), get_type_colour(self or card.config, card), nil, 1.2)
	end,
})

SMODS.Consumable({
	key = "waterworks",
	set = "titledeeds",
	config = {
		extra = { payout = 1.7, ease = nil },
	},atlas = "avenues",
	pos = {
		x = 1,
		y = 3,
	},
	loc_vars = function(self, info_queue, card)
		local jud = card.ability.extra
		return {
			vars = { jud.payout, jud.ease },
		}
	end,
	cost = 5,
	keep_on_use = function(self, card)
		return true
	end,
	pools = {
		Utilities = true,
		CommonDeeds = true,
	},
	can_use = function(self, card)
		return true
	end,
	use = function(self, card, area, copier)
		local jud = card.ability.extra
		SMODS.add_card({
			set = "Joker",
			rarity = "Uncommon",
			edition = "e_negative",
		})
		local jud = card.ability.extra
		G.E_MANAGER:add_event(Event({
			trigger = "before",
			delay = 0.2,
			func = function()
				card:flip()
				card:set_ability("c_jud_flippeddeeds")
				return true
			end,
		}))
		G.E_MANAGER:add_event(Event({
			trigger = "after",
			delay = 0.2,
			func = function()
				card:flip()
				return true
			end,
		}))
	end,
	add_to_deck = function(self, card, from_debuff)
		local jud = card.ability.extra
		G.GAME.jud_cashout = G.GAME.jud_cashout + jud.payout
	end,
	remove_from_deck = function(self, card, from_debuff)
		local jud = card.ability.extra
		G.GAME.jud_cashout = G.GAME.jud_cashout - jud.payout
	end,
	set_card_type_badge = function(self, card, badges)
		badges[1] = create_badge(localize("k_titledeeds_q"), get_type_colour(self or card.config, card), nil, 1.2)
	end,
})

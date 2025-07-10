SMODS.ConsumableType({
	key = "cryptic",
	collection_rows = { 4, 5 },
	primary_colour = G.C.PURPLE,
	secondary_colour = G.C.PURPLE,
	shop_rate = nil,
})

SMODS.Consumable({
	key = "bigfoot",
	set = "cryptic",
	config = { max_highlighted = 1 },
	loc_vars = function(self, info_queue)
		return { vars = { self.config.max_highlighted } }
	end,
	use = function(self, card, area, copier)
		local setrank = 1
		for i, card in pairs(G.hand.highlighted) do
			card:flip()
			G.E_MANAGER:add_event(Event({
				trigger = "before",
				delay = 0.2,
				func = function()
					card:set_edition(poll_edition(pseudorandom("bigfoot"), nil, true, true))
					card:set_seal(SMODS.poll_seal({ guaranteed = true }), true, false)
					SMODS.change_base(card, nil, "King")
					return true
				end,
			}))
			delay(0.5)
			G.E_MANAGER:add_event(Event({
				trigger = "after",
				delay = 0.2,
				func = function()
					G.hand:unhighlight_all()
					card:flip()
					return true
				end,
			}))
			delay(0.5)
		end
	end,
})

SMODS.Consumable({
	key = "lizard",
	set = "cryptic",
	config = { max_highlighted = 5 },
	loc_vars = function(self, info_queue)
		return { vars = { self.config.max_highlighted } }
	end,
	use = function(self, card, area, copier)
		if card:is_face() then
			SMODS.modify_rank(card, 1)
		end
	end,
})

SMODS.Consumable({
	key = "ogopogo",
	set = "cryptic",
	config = {},
	loc_vars = function(self, info_queue)
		return { vars = { self.config.max_highlighted } }
	end,
	can_use = function(self, card)
		return true
	end,
	use = function(self, card, area, copier)
		for i = 1, 2 do
			local chand = Cryptid.get_random_hand(nil, "ogopogo" .. G.GAME.round_resets.ante)
			local _hand, _tally = nil, -1
			local uplevel = 0
			for k, v in ipairs(G.handlist) do
				if G.GAME.hands[v].visible and G.GAME.hands[v].played > _tally then
					_hand = v
					_tally = G.GAME.hands[v].played
				end
			end
			if G.GAME.hands[_hand].level > G.GAME.hands[chand].level then
				uplevel = G.GAME.hands[_hand].level - G.GAME.hands[chand].level
				update_hand_text({ sound = "button", volume = 0.7, pitch = 0.8, delay = 0.3 }, {
					handname = localize(chand, "poker_hands"),
					chips = G.GAME.hands[chand].chips,
					mult = G.GAME.hands[chand].mult,
					level = G.GAME.hands[chand].level,
				})
				level_up_hand(card, chand, nil, uplevel)
				update_hand_text({ sound = "button", volume = 0.7, pitch = 1.1, delay = 0 }, {
					mult = 0,
					chips = 0,
					handname = localize(chand, "poker_hands"),
					level = G.GAME.hands[chand].level,
				})
			elseif
				G.GAME.hands[_hand].level < G.GAME.hands[chand].level
				or G.GAME.hands[_hand].level == G.GAME.hands[chand].level
			then
				uplevel = 1
				update_hand_text({ sound = "button", volume = 0.7, pitch = 0.8, delay = 0.3 }, {
					handname = localize(chand, "poker_hands"),
					chips = G.GAME.hands[chand].chips,
					mult = G.GAME.hands[chand].mult,
					level = G.GAME.hands[chand].level,
				})
				level_up_hand(card, chand, nil, uplevel)
				update_hand_text({ sound = "button", volume = 0.7, pitch = 1.1, delay = 0 }, {
					mult = 0,
					chips = 0,
					handname = localize(chand, "poker_hands"),
					level = G.GAME.hands[chand].level,
				})
			end
		end
	end,
})

SMODS.Consumable({
	key = "mothman",
	set = "cryptic",
	config = { max_highlighted = 5, mod_conv = "m_stone" },
	loc_vars = function(self, info_queue)
		return { vars = { self.config.max_highlighted } }
	end,
})

SMODS.Consumable({
	key = "mothership",
	set = "cryptic",
	config = { max = 2 },
	loc_vars = function(self, info_queue)
		return { vars = { self.config.max } }
	end,
	can_use = function(self, card)
		return true
	end,
	use = function(self, card, area, copier)
		local ammount = G.consumeables.config.card_limit - #G.consumeables.cards
		if ammount > self.config.max then
			for i = 1, self.config.max do
				G.E_MANAGER:add_event(Event({
					trigger = "after",
					delay = 1,
					func = function()
						card:juice_up()
						SMODS.add_card({
							set = "cryptic",
						})
						return true
					end,
				}))
			end
		else
			for i = 1, ammount do
				G.E_MANAGER:add_event(Event({
					trigger = "after",
					delay = 1,
					func = function()
						card:juice_up()
						SMODS.add_card({
							set = "cryptic",
						})
						return true
					end,
				}))
			end
		end
	end,
})

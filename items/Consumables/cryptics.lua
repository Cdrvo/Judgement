SMODS.ConsumableType({
	key = "cryptic",
	collection_rows = { 4, 5 },
	primary_colour = G.C.PURPLE,
	secondary_colour = G.C.PURPLE,
	shop_rate = nil,
})

local card_highlighted_ref = Card.highlight
function Card:highlight(is_highlighted)
	self.highlighted = is_highlighted
	if
		self.highlighted
		and ((self.area == G.pack_cards and G.pack_cards) or self.area == G.pack_cards)
		and self.ability.set == "cryptic"
	then
		if self.children.use_button then
			self.children.use_button:remove()
			self.children.use_button = nil
		end

		self.children.use_button = UIBox({
			definition = Judgement.create_pull(self, {
				use = true,
			}),
			config = {
				align = "cr",
				offset = {
					x = -1.8,
					y = 1.7,
				},
				parent = self,
			},
		})
	else
		card_highlighted_ref(self, is_highlighted)
	end
end

Judgement.create_pull = function(card, args)
	local args = args or {}
	local use = nil

	if args.use then
		use = {
			n = G.UIT.C,
			config = {
				align = "cr",
			},
			nodes = {
				{
					n = G.UIT.C,
					config = {
						ref_table = card,
						align = "cr",
						maxw = 1.25,
						padding = 0.1,
						r = 0.08,
						minw = 1.25,
						minh = 0,
						hover = true,
						shadow = true,
						colour = G.C.RED,
						button = "card_use",
						func = "can_pull_card",
					},
					nodes = {
						{
							n = G.UIT.B,
							config = {
								w = 0.1,
								h = 0.6,
							},
						},
						{
							n = G.UIT.C,
							config = {
								align = "tm",
							},
							nodes = {
								{
									n = G.UIT.R,
									config = {
										align = "cm",
										maxw = 1.25,
									},
									nodes = {
										{
											n = G.UIT.T,
											config = {
												text = "Pull",
												colour = G.C.UI.TEXT_LIGHT,
												scale = 0.7,
												shadow = true,
											},
										},
									},
								},
							},
						},
					},
				},
			},
		}
	end

	return {
		n = G.UIT.ROOT,
		config = {
			align = "cr",
			padding = 0,
			colour = G.C.CLEAR,
		},
		nodes = {
			{
				n = G.UIT.C,
				config = {
					padding = 0.15,
					align = "cl",
				},
				nodes = {
					use and {
						n = G.UIT.R,
						config = {
							align = "cl",
						},
						nodes = { use },
					} or nil,
				},
			},
		},
	}
end

G.FUNCS.can_pull_card = function(e)
	local card = e.config.ref_table
	if #G.consumeables.cards < G.consumeables.config.card_limit then
		e.config.colour = G.C.PURPLE
		e.config.button = "pull_card"
	else
		e.config.colour = G.C.UI.BACKGROUND_INACTIVE
		e.config.button = nil
	end
end
G.FUNCS.pull_card = function(e)
	local card = e.config.ref_table
	card.area:remove_card(card)
	card:add_to_deck()
	G.consumeables:emplace(card)
end

SMODS.Consumable({
	atlas = "cryptic",
	pos = { x = 0, y = 0 },
	key = "bigfoot",
	set = "cryptic",
	hidden = true,
	soul_rate = 0.003,
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
	atlas = "cryptic",
	pos = { x = 0, y = 0 },
	key = "nessie",
	set = "cryptic",
	hidden = true,
	soul_rate = 0.003,
	config = { max_highlighted = 3 },
	loc_vars = function(self, info_queue)
		return { vars = { self.config.max_highlighted } }
	end,
	use = function(self, card, area, copier)
		local high = 0
		local key

		for i = 1, #G.playing_cards do
			local rcard = G.playing_cards
			if rcard[i].base.times_played > high then
				high = rcard[i].base.times_played
				key = rcard[i]
			end
		end
		for i, card in pairs(G.hand.highlighted) do
			card:flip()
			G.E_MANAGER:add_event(Event({
				trigger = "before",
				delay = 0.2,
				func = function()
					copy_card(key, card)
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
		end
	end,
})

SMODS.Consumable({
	atlas = "cryptic",
	pos = { x = 0, y = 0 },
	key = "chupacabra",
	set = "cryptic",
	hidden = true,
	soul_rate = 0.003,
	config = { max_highlighted = 5 },
	loc_vars = function(self, info_queue)
		return { vars = { self.config.max_highlighted } }
	end,
	use = function(self, card, area, copier)
		for i, card in pairs(G.hand.highlighted) do
			SMODS.destroy_cards(card)
		end
	end,
})

SMODS.Consumable({
	atlas = "cryptic",
	pos = { x = 0, y = 0 },
	key = "lizard",
	set = "cryptic",
	hidden = true,
	soul_rate = 0.003,
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
	atlas = "cryptic",
	pos = { x = 0, y = 0 },
	key = "ogopogo",
	set = "cryptic",
	hidden = true,
	soul_rate = 0.003,
	config = {},
	loc_vars = function(self, info_queue)
		return { vars = { self.config.max_highlighted } }
	end,
	can_use = function(self, card)
		return true
	end,
	use = function(self, card, area, copier)
		for i = 1, 2 do
			local chand = Judgement.random_hand()
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
	atlas = "cryptic",
	pos = { x = 0, y = 0 },
	key = "mothman",
	set = "cryptic",
	hidden = true,
	soul_rate = 0.003,
	config = { max_highlighted = 5, mod_conv = "m_stone" },
	loc_vars = function(self, info_queue)
		return { vars = { self.config.max_highlighted } }
	end,
})

SMODS.Consumable({
	atlas = "cryptic",
	pos = { x = 0, y = 0 },
	key = "mothership",
	set = "cryptic",
	hidden = true,
	soul_rate = 0.003,
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
							hidden = true,
							soul_rate = 0.003,
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
							hidden = true,
							soul_rate = 0.003,
						})
						return true
					end,
				}))
			end
		end
	end,
})

SMODS.Consumable({
	atlas = "cryptic",
	pos = { x = 0, y = 0 },
	key = "rod",
	set = "cryptic",
	hidden = true,
	soul_rate = 0.003,
	config = { max = 3 },
	loc_vars = function(self, info_queue)
		return { vars = { self.config.max } }
	end,
	can_use = function(self, card)
		return true
	end,
	use = function(self, card, area, copier)
		local ammount = G.consumeables.config.card_limit - #G.consumeables.cards
		local allcons = {}
		for k, _ in pairs(SMODS.ConsumableTypes) do
			table.insert(allcons, k)
		end
		if ammount > self.config.max then
			for i = 1, self.config.max do
				G.E_MANAGER:add_event(Event({
					trigger = "after",
					delay = 1,
					func = function()
						card:juice_up()
						SMODS.add_card({
							set = pseudorandom_element(allcons),
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
							set = pseudorandom_element(allcons),
						})
						return true
					end,
				}))
			end
		end
	end,
})

SMODS.Consumable({
	atlas = "cryptic",
	pos = { x = 0, y = 0 },
	key = "jersey",
	set = "cryptic",
	hidden = true,
	soul_rate = 0.003,
	config = { max_highlighted = 5 },
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
	atlas = "cryptic",
	pos = { x = 0, y = 0 },
	key = "amomongo",
	set = "cryptic",
	hidden = true,
	soul_rate = 0.003,
	config = { max = 4 },
	loc_vars = function(self, card, info_queue)
		return { vars = { self.config.max } }
	end,
	can_use = function(self, card)
		if #G.jokers.highlighted > 0 and #G.jokers.highlighted < self.config.max then
			return true
		end
	end,
	use = function(self, card, area, copier)
		for i = 1, #G.jokers.highlighted do
			local rcard = G.jokers.highlighted
			local GP = G.P_CENTERS
			local keye
			local setedition
			if rcard[i].edition then
				keye = rcard[i].edition.key
				local order = GP[keye].order
				for i = 1, #G.P_CENTER_POOLS.Edition do
					if G.P_CENTER_POOLS.Edition[i].order == order + 1 then
						setedition = G.P_CENTER_POOLS.Edition[i].key
					end
				end
			end
			rcard[i]:set_edition(setedition)
		end
	end,
})

SMODS.Consumable({
	atlas = "cryptic",
	pos = { x = 0, y = 0 },
	key = "notdeer",
	set = "cryptic",
	hidden = true,
	soul_rate = 0.003,
	config = { max = 1 },
	loc_vars = function(self, info_queue)
		return { vars = { self.config.max } }
	end,
	use = function(self, card, area, copier)
		ease_discard(self.config.max)
	end,
})

SMODS.Consumable({
	atlas = "cryptic",
	pos = { x = 0, y = 0 },
	key = "allghoi",
	set = "cryptic",
	hidden = true,
	soul_rate = 0.003,
	config = { max = 1 },
	loc_vars = function(self, info_queue)
		return { vars = { self.config.max } }
	end,
	use = function(self, card, area, copier)
		G.hand:change_size(self.config.max)
	end,
})

SMODS.Consumable({
	atlas = "cryptic",
	pos = { x = 0, y = 0 },
	key = "mapinguari",
	set = "cryptic",
	hidden = true,
	soul_rate = 0.003,
	config = { max = 0.2 },
	loc_vars = function(self, info_queue)
		return { vars = { self.config.max } }
	end,
	use = function(self, card, area, copier)
		G.GAME.blind.chips = G.GAME.blind.chips * self.config.max
		G.GAME.blind.chip_text = number_format(G.GAME.blind.chips)
	end,
})

SMODS.Consumable({
	atlas = "cryptic",
	pos = { x = 0, y = 0 },
	key = "megaladon",
	set = "cryptic",
	hidden = true,
	soul_rate = 0.003,
	config = { max = 0.1 },
	loc_vars = function(self, info_queue)
		return { vars = { self.config.max } }
	end,
	can_use = function(self, card)
		if G and G.hand and #G.hand.cards > 0 then
			return true
		end
	end,
	use = function(self, card, area, copier)
		local destroyed = 0
		for i = 1, #G.hand.cards do
			G.hand.cards[i]:start_dissolve()
			destroyed = destroyed + 1
		end
		for i = 1, #G.deck.cards do
			G.deck.cards[i].ability.perma_x_chips = G.deck.cards[i].ability.perma_x_chips or 0
			G.deck.cards[i].ability.perma_x_chips = G.deck.cards[i].ability.perma_x_chips + self.config.max * destroyed
		end
	end,
})

SMODS.Consumable({
	atlas = "cryptic",
	pos = { x = 0, y = 0 },
	key = "fairy",
	set = "cryptic",
	hidden = true,
	soul_rate = 0.003,
	config = { odds = 8 },
	loc_vars = function(self, info_queue)
		local numerator, denominator = SMODS.get_probability_vars(self, 1, self.config.odds, "jud_fairy")
		return { vars = { numerator, denominator } }
	end,
	can_use = function(self, card)
		return true
	end,
	use = function(self, card, area, copier)
		if SMODS.pseudorandom_probability(card, "jud_fairy", (G.GAME.probabilities.normal or 1), self.config.odds) then
			local choice = { "c_cry_gateway", "c_soul" }
			SMODS.add_card({
				key = pseudorandom_element(choice),
			})
		end
	end,
})

SMODS.Consumable({
	atlas = "cryptic",
	pos = { x = 0, y = 0 },
	key = "yeti",
	set = "cryptic",
	hidden = true,
	soul_rate = 0.003,
	discovered = true,
	config = {
		extra = {
			cards = 1,
		},
	},
	loc_vars = function(self, info_queue, card)
		return { vars = { card.ability.extra.cards } }
	end,
	can_use = function(self, card)
		if G and G.jokers then
			if
				#G.jokers.highlighted ~= 0
				and #G.jokers.highlighted <= card.ability.extra.cards
				and #G.hand.highlighted == 0
			then
				return true
			end
		end
		return false
	end,
	use = function(self, card, area, copier)
		for i, card in pairs(G.jokers.highlighted) do
			card:set_edition({ cry_m = true }, true)
			G.E_MANAGER:add_event(Event({
				trigger = "after",
				delay = 0.2,
				func = function()
					G.hand:unhighlight_all()
					return true
				end,
			}))
			delay(0.5)
		end
	end,
})

SMODS.Consumable({
	atlas = "cryptic",
	pos = { x = 0, y = 0 },
	key = "babayaga",
	set = "cryptic",
	hidden = true,
	soul_rate = 0.003,
	discovered = true,
	config = {
		extra = {
			cards = 1,
		},
	},
	loc_vars = function(self, info_queue, card)
		return { vars = { card.ability.extra.cards } }
	end,
	can_use = function(self, card)
		return true
	end,
	use = function(self, card, area, copier)
		G.GAME.jud_babayaga = true
		G.GAME.jud_babayaga_ammount = #G.deck.cards * 999
		Judgement.total_limit(#G.deck.cards * 999)
	end,
})

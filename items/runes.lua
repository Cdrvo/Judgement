SMODS.ConsumableType({
	key = "runes",
	collection_rows = { 4, 5 },
	primary_colour = G.C.PURPLE,
	secondary_colour = G.C.PURPLE,
	shop_rate = 0.05,
})

local card_highlighted_ref = Card.highlight
function Card:highlight(is_highlighted)
	self.highlighted = is_highlighted
	if self.highlighted and string.find(self.ability.set, "runes") and self.area == G.consumeables then
		if self.children.use_button then
			self.children.use_button:remove()
			self.children.use_button = nil
		end

		self.children.use_button = UIBox({
			definition = Judgement.create_sell_and_switch_buttons(self, {
				sell = true,
				use = true,
			}),
			config = {
				align = "cr",
				offset = {
					x = -0.4,
					y = 0,
				},
				parent = self,
			},
		})
	else
		card_highlighted_ref(self, is_highlighted)
	end
end

Judgement.create_sell_and_switch_buttons = function(card, args)
	local args = args or {}
	local sell = nil
	local use = nil

	if args.sell then
		sell = {
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
						padding = 0.1,
						r = 0.08,
						minw = 1.25,
						hover = true,
						shadow = true,
						colour = G.C.UI.BACKGROUND_INACTIVE,
						one_press = true,
						button = "sell_card",
						func = "can_sell_card",
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
												text = localize("b_sell"),
												colour = G.C.UI.TEXT_LIGHT,
												scale = 0.4,
												shadow = true,
											},
										},
									},
								},
								{
									n = G.UIT.R,
									config = {
										align = "cm",
									},
									nodes = {
										{
											n = G.UIT.T,
											config = {
												text = localize("$"),
												colour = G.C.WHITE,
												scale = 0.4,
												shadow = true,
											},
										},
										{
											n = G.UIT.T,
											config = {
												ref_table = card,
												ref_value = "sell_cost_label",
												colour = G.C.WHITE,
												scale = 0.55,
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
					sell and {
						n = G.UIT.R,
						config = {
							align = "cl",
						},
						nodes = { sell },
					} or nil,
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

SMODS.Consumable({
	key = "fehu",
	set = "runes",
	atlas = "runes",
	pos = {
		x = 0,
		y = 0,
	},
	config = {
		extra = {
			negative = false,
		},
	},
	cost = 5,
	update = function(self, card, context)
		local jud = card.ability.extra
		if not jud.negative then
			card:set_edition({ negative = true }, true)
			jud.negative = true
		end
	end,
	calculate = function(self, card, context)
		local jud = card.ability.extra
		if context.end_of_round and context.main_eval then
			card:start_dissolve({ HEX("57ecab") }, nil, 1.6)
		end
		if context.individual and context.cardarea == "unscored" then
			return {
				dollars = jud.dollars,
			}
		end
	end,
})

SMODS.Consumable({
	key = "uruz",
	set = "runes",
	atlas = "runes",
	pos = {
		x = 0,
		y = 0,
	},
	config = {
		extra = {
			negative = false,
		},
	},
	cost = 5,
	update = function(self, card, context)
		local jud = card.ability.extra
		if not jud.negative then
			card:set_edition({ negative = true }, true)
			jud.negative = true
		end
	end,
	calculate = function(self, card, context)
		local jud = card.ability.extra
		if context.end_of_round and context.main_eval then
			card:start_dissolve({ HEX("57ecab") }, nil, 1.6)
		end
		if context.individual and context.cardarea == G.play then
			return {
				chips = context.other_card.base.nominal,
			}
		end
	end,
})

SMODS.Consumable({
	key = "thurisaz",
	set = "runes",
	atlas = "runes",
	pos = {
		x = 0,
		y = 0,
	},
	config = {
		extra = {
			negative = false,
		},
	},
	cost = 5,
	update = function(self, card, context)
		local jud = card.ability.extra
		if not jud.negative then
			card:set_edition({ negative = true }, true)
			jud.negative = true
		end
	end,
	calculate = function(self, card, context)
		local jud = card.ability.extra
		if context.reroll_shop then
			G.GAME.jud_reroll = true
		end
		if context.ending_shop then
			G.GAME.jud_reroll = false
		end
	end,
})

SMODS.Consumable({
	key = "raidho",
	set = "runes",
	atlas = "runes",
	pos = {
		x = 0,
		y = 0,
	},
	config = {
		extra = {
			negative = false,
		},
	},
	cost = 5,
	update = function(self, card, context)
		local jud = card.ability.extra
		if not jud.negative then
			card:set_edition({ negative = true }, true)
			jud.negative = true
		end
	end,
	calculate = function(self, card, context)
		local jud = card.ability.extra
		if context.end_of_round and context.main_eval then
			card:start_dissolve({ HEX("57ecab") }, nil, 1.6)
		end
		if context.individual and not context.other_card.edition and context.cardarea == G.hand then
			context.other_card:set_edition(poll_edition(pseudorandom("raidho"), nil, true, true))
		end
	end,
})

SMODS.Consumable({
	key = "kenaz",
	set = "runes",
	atlas = "runes",
	pos = {
		x = 0,
		y = 0,
	},
	config = {
		extra = {
			negative = false,
		},
	},
	cost = 5,
	update = function(self, card, context)
		local jud = card.ability.extra
		if not jud.negative then
			card:set_edition({ negative = true }, true)
			jud.negative = true
		end
	end,
	calculate = function(self, card, context)
		local jud = card.ability.extra
		if context.end_of_round and context.main_eval then
			card:start_dissolve({ HEX("57ecab") }, nil, 1.6)
		end
		if context.individual and context.cardarea == "unscored" then
			context.other_card:start_dissolve(nil, 1.6)
		end
	end,
})

SMODS.Consumable({
	key = "gebo",
	set = "runes",
	atlas = "runes",
	pos = {
		x = 0,
		y = 0,
	},
	config = {
		extra = {
			negative = false,
			create = 2,
			max = 10,
			current = 0,
			seconds = 300,
			activated = false,
		},
	},
	cost = 5,
	update = function(self, card, context)
		local jud = card.ability.extra
		if not jud.negative then
			card:set_edition({ negative = true }, true)
			jud.negative = true
		end
	end,
	calculate = function(self, card, context)
		local jud = card.ability.extra
		if jud.current >= jud.max then
			card:start_dissolve({ HEX("57ecab") }, nil, 1.6)
		end
		if jud.activated then
			jud.activated = false
			local allcons = {}
			for k, _ in pairs(SMODS.ConsumableTypes) do
				table.insert(allcons, k)
			end
			for i = 1, jud.create do
				jud.current = jud.current + 1
				SMODS.add_card({
					set = pseudorandom_element(allcons, nil),
				})
			end
		end
		local event
		event = Event({
			blockable = false,
			blocking = false,
			pause_force = true,
			no_delete = true,
			trigger = "after",
			delay = 5,
			timer = "UPTIME",
			func = function()
				event.start_timer = false
				jud.activated = true
			end,
		})
		G.E_MANAGER:add_event(event)
	end,
})

SMODS.Consumable({
	key = "wunjo",
	set = "runes",
	atlas = "runes",
	pos = {
		x = 0,
		y = 0,
	},
	config = {
		extra = {
			negative = false,
		},
	},
	cost = 5,
	update = function(self, card, context)
		local jud = card.ability.extra
		if not jud.negative then
			card:set_edition({ negative = true }, true)
			jud.negative = true
		end
	end,
	calculate = function(self, card, context)
		local jud = card.ability.extra
		if context.end_of_round and context.main_eval then
			card:start_dissolve({ HEX("57ecab") }, nil, 1.6)
		end
		if context.joker_main then
			return {
				level_up = 1,
			}
		end
	end,
})

SMODS.Consumable({
	key = "hagalaz",
	set = "runes",
	atlas = "runes",
	pos = {
		x = 0,
		y = 0,
	},
	config = {
		extra = {
			negative = false,
		},
	},
	cost = 5,
	update = function(self, card, context)
		local jud = card.ability.extra
		if not jud.negative then
			card:set_edition({ negative = true }, true)
			jud.negative = true
		end
	end,
	calculate = function(self, card, context)
		local jud = card.ability.extra
		if context.end_of_round and context.main_eval then
			card:start_dissolve({ HEX("57ecab") }, nil, 1.6)
		end
		if context.drawing_cards then
			for i = 1, context.amount do
				draw_card(G.deck, G.hand, i * 100 / context.amount, "up", true)
			end
		end
	end,
})

SMODS.Consumable({
	key = "isa",
	set = "runes",
	atlas = "runes",
	pos = {
		x = 0,
		y = 0,
	},
	config = {
		extra = {
			negative = false,
		},
	},
	cost = 5,
	update = function(self, card, context)
		local jud = card.ability.extra
		if not jud.negative then
			card:set_edition({ negative = true }, true)
			jud.negative = true
		end
	end,
	calculate = function(self, card, context)
		local jud = card.ability.extra
		if context.end_of_round and context.main_eval then
			card:start_dissolve({ HEX("57ecab") }, nil, 1.6)
		end
	end,
})

SMODS.Consumable({
	key = "jera",
	set = "runes",
	atlas = "runes",
	pos = {
		x = 0,
		y = 0,
	},
	config = {
		extra = {
			negative = false,
		},
	},
	cost = 5,
	update = function(self, card, context)
		local jud = card.ability.extra
		if not jud.negative then
			card:set_edition({ negative = true }, true)
			jud.negative = true
		end
	end,
	calculate = function(self, card, context)
		local jud = card.ability.extra
		if context.end_of_round and context.main_eval then
			card:start_dissolve({ HEX("57ecab") }, nil, 1.6)
		end
		if context.joker_main then
			G.playing_card = (G.playing_card and G.playing_card + 1) or 1
			local _card = copy_card(context.full_hand[#context.scoring_hand], nil, nil, G.playing_card)
			_card:add_to_deck()
			G.deck.config.card_limit = G.deck.config.card_limit + 1
			table.insert(G.playing_cards, _card)
			G.hand:emplace(_card)
			_card.states.visible = nil

			G.E_MANAGER:add_event(Event({
				func = function()
					_card:start_materialize()
					return true
				end,
			}))
			return {
				message = localize("k_copied_ex"),
				colour = G.C.CHIPS,
				card = self,
				playing_cards_created = { true },
			}
		end
	end,
})

SMODS.Consumable({
	key = "eihwaz",
	set = "runes",
	atlas = "runes",
	pos = {
		x = 0,
		y = 0,
	},
	config = {
		extra = {
			negative = false,
		},
	},
	cost = 5,
	update = function(self, card, context)
		local jud = card.ability.extra
		if not jud.negative then
			card:set_edition({ negative = true }, true)
			jud.negative = true
		end
	end,
	calculate = function(self, card, context)
		local jud = card.ability.extra
		if context.end_of_round and context.main_eval then
			card:start_dissolve({ HEX("57ecab") }, nil, 1.6)
		end
		if context.setting_blind then
			G.E_MANAGER:add_event(Event({
				func = function()
					G.E_MANAGER:add_event(Event({
						func = function()
							G.GAME.blind:disable()
							play_sound("timpani")
							delay(0.4)
							return true
						end,
					}))
					card_eval_status_text(card, "extra", nil, nil, nil, { message = localize("ph_boss_disabled") })
					return true
				end,
			}))
		end
	end,
})

SMODS.Consumable({
	key = "perthro",
	set = "runes",
	atlas = "runes",
	pos = {
		x = 0,
		y = 0,
	},
	config = {
		extra = {
			negative = false,
		},
	},
	cost = 5,
	update = function(self, card, context)
		local jud = card.ability.extra
		if not jud.negative then
			card:set_edition({ negative = true }, true)
			jud.negative = true
		end
	end,
	calculate = function(self, card, context)
		local jud = card.ability.extra
		if context.end_of_round and context.main_eval then
			if G.GAME.blind.boss then
				card:start_dissolve({ HEX("57ecab") }, nil, 1.6)
				G.E_MANAGER:add_event(Event({
					func = function()
						add_tag(Tag(pseudorandom_element(G.P_CENTER_POOLS.Tag).key))
						play_sound("generic1", 0.9 + math.random() * 0.1, 0.8)
						play_sound("holo1", 1.2 + math.random() * 0.1, 0.4)
						return true
					end,
				}))
			else
				G.E_MANAGER:add_event(Event({
					func = function()
						add_tag(Tag(pseudorandom_element(G.P_CENTER_POOLS.Tag).key))
						play_sound("generic1", 0.9 + math.random() * 0.1, 0.8)
						play_sound("holo1", 1.2 + math.random() * 0.1, 0.4)
						return true
					end,
				}))
			end
		end
	end,
})

SMODS.Consumable({
	key = "algiz",
	set = "runes",
	atlas = "runes",
	pos = {
		x = 0,
		y = 0,
	},
	config = {
		extra = {
			negative = false,
		},
	},
	cost = 5,
	update = function(self, card, context)
		local jud = card.ability.extra
		if not jud.negative then
			card:set_edition({ negative = true }, true)
			jud.negative = true
		end
	end,
	calculate = function(self, card, context)
		local jud = card.ability.extra
		if context.end_of_round and context.main_eval and G.GAME.blind.boss then
			card:start_dissolve({ HEX("57ecab") }, nil, 1.6)
		end
		if context.setting_blind then
			G.GAME.blind.chips = G.GAME.blind.chips - ((G.GAME.blind.chips * 20) / 100)
			G.GAME.blind.chip_text = number_format(G.GAME.blind.chips)
			card:juice_up(0.3, 0.4)
			return {
				message = "Blind Lowered",
			}
		end
	end,
})

SMODS.Consumable({
	key = "sowilo",
	set = "runes",
	atlas = "runes",
	pos = {
		x = 0,
		y = 0,
	},
	config = {
		extra = {
			negative = false,
			add = 2,
		},
	},
	cost = 5,
	update = function(self, card, context)
		local jud = card.ability.extra
		if not jud.negative then
			card:set_edition({ negative = true }, true)
			jud.negative = true
		end

		for k, v in ipairs(G.playing_cards) do
			if v.debuff then
				v:set_debuff(false)
			end
		end
		for k, v in ipairs(G.jokers.cards) do
			if v.debuff then
				v:set_debuff(false)
			end
		end
	end,
})

SMODS.Consumable({
	key = "towaz",
	set = "runes",
	atlas = "runes",
	pos = {
		x = 0,
		y = 0,
	},
	config = {
		extra = {
			negative = false,
			add = 2,
		},
	},
	cost = 5,
	update = function(self, card, context)
		local jud = card.ability.extra
		if not jud.negative then
			card:set_edition({ negative = true }, true)
			jud.negative = true
		end
	end,
	calculate = function(self, card, context)
		local jud = card.ability.extra
		if context.end_of_round and context.main_eval then
			card:start_dissolve({ HEX("57ecab") }, nil, 1.6)
		end
	end,
	add_to_deck = function(self, card, from_debuff)
		local jud = card.ability.extra
		SMODS.change_play_limit(jud.add)
		SMODS.change_discard_limit(jud.add)
	end,
	remove_from_deck = function(self, card, from_debuff)
		local jud = card.ability.extra
		SMODS.change_play_limit(-jud.add)
		SMODS.change_discard_limit(-jud.add)
	end,
})

SMODS.Consumable({
	key = "mannaz",
	set = "runes",
	atlas = "runes",
	pos = {
		x = 0,
		y = 0,
	},
	config = {
		extra = {
			negative = false,
			add = 2,
		},
	},
	cost = 5,
	update = function(self, card, context)
		local jud = card.ability.extra
		if not jud.negative then
			card:set_edition({ negative = true }, true)
			jud.negative = true
		end
	end,
	calculate = function(self, card, context)
		local jud = card.ability.extra
		if context.end_of_round and context.main_eval then
			card:start_dissolve({ HEX("57ecab") }, nil, 1.6)
		end
	end,
})

SMODS.Consumable({
	key = "berkana",
	set = "runes",
	atlas = "runes",
	pos = {
		x = 0,
		y = 0,
	},
	config = {
		extra = {
			negative = false,
			add = 2,
		},
	},
	cost = 5,
	update = function(self, card, context)
		local jud = card.ability.extra
		if not jud.negative then
			card:set_edition({ negative = true }, true)
			jud.negative = true
		end
	end,
	calculate = function(self, card, context)
		local jud = card.ability.extra
		if context.end_of_round and context.main_eval then
			card:start_dissolve({ HEX("57ecab") }, nil, 1.6)
		end
	end,
	add_to_deck = function(self, card, from_debuff)
		local jud = card.ability.extra
		G.hand:change_size(jud.add)
	end,
	remove_from_deck = function(self, card, from_debuff)
		local jud = card.ability.extra
		G.hand:change_size(-jud.add)
	end,
})

SMODS.Consumable({
	key = "othala",
	set = "runes",
	atlas = "runes",
	pos = {
		x = 0,
		y = 0,
	},
	config = {
		extra = {
			negative = false,
			add = 2,
		},
	},
	cost = 5,
	update = function(self, card, context)
		local jud = card.ability.extra
		if not jud.negative then
			card:set_edition({ negative = true }, true)
			jud.negative = true
		end
	end,
	calculate = function(self, card, context)
		local jud = card.ability.extra
		if context.end_of_round and context.main_eval then
			card:start_dissolve({ HEX("57ecab") }, nil, 1.6)
		end
		if context.setting_blind then
			ease_hands(jud.add)
		end
	end,
})

SMODS.Consumable({
	key = "inguz",
	set = "runes",
	atlas = "runes",
	pos = {
		x = 0,
		y = 0,
	},
	config = {
		extra = {
			negative = false,
			add = 2,
		},
	},
	cost = 5,
	update = function(self, card, context)
		local jud = card.ability.extra
		if not jud.negative then
			card:set_edition({ negative = true }, true)
			jud.negative = true
		end
	end,
	calculate = function(self, card, context)
		local jud = card.ability.extra
		if context.end_of_round and context.main_eval then
			card:start_dissolve({ HEX("57ecab") }, nil, 1.6)
		end
		if context.setting_blind then
			ease_discards(jud.add)
		end
	end,
})


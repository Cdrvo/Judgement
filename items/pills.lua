local card_highlighted_ref = Card.highlight
function Card:highlight(is_highlighted)
	self.highlighted = is_highlighted
	if self.highlighted and string.find(self.ability.set, "pills") and self.area == G.jud_pill then
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

SMODS.ConsumableType({
	key = "pills",
	collection_rows = { 4, 5 },
	primary_colour = G.C.BLUE,
	secondary_colour = G.C.BLUE,
	shop_rate = 0.01,
})

SMODS.Consumable({
	key = "bluepill",
	set = "pills",
	config = {
		extra = {
			xchips = 2,
		},
	},
	calculate = function(self, card, context)
		local jud = card.ability.extra
		if context.joker_main then
			return {
				xchips = jud.xchips,
			}
		end
	end,
})

SMODS.Consumable({
	key = "redpill",
	set = "pills",
	config = {
		extra = {
			xmult = 2,
		},
	},
	calculate = function(self, card, context)
		local jud = card.ability.extra
		if context.joker_main then
			return {
				xmult = jud.xmult,
			}
		end
	end,
})

SMODS.Consumable({
	key = "yellowpill",
	set = "pills",
	config = {
		extra = {
			dollars = 10,
		},
	},
	calculate = function(self, card, context)
		local jud = card.ability.extra
		if context.joker_main then
			return {
				dollars = jud.dollars,
			}
		end
	end,
})

SMODS.Consumable({
	key = "purplepill",
	set = "pills",
	config = {
		extra = {
			multipler = 1.5,
			odds = 4,
		},
	},
	calculate = function(self, card, context)
		local jud = card.ability.extra
		if context.setting_blind then
			if pseudorandom("purplepill") < G.GAME.probabilities.normal / jud.odds then
				local jokers = {}
				for i = 1, #G.jokers.cards do
					jokers[#jokers + 1] = G.jokers.cards[i]
				end
				if #jokers > 0 then
					local chosen_joker = pseudorandom_element(jokers, pseudoseed("purplepill"))
					chosen_joker:set_edition({ negative = true }, true)
				end
			end
			G.GAME.blind.chips = G.GAME.blind.chips * jud.multipler
			G.GAME.blind.chip_text = number_format(G.GAME.blind.chips)
			card:juice_up(0.3, 0.4)
			return {
				message = "Increased Blind Chips",
			}
		end
	end,
})

SMODS.Consumable({
	key = "greenpill",
	set = "pills",
	config = {
		extra = {
			lose = 5,
			odds = 4,
		},
	},
	calculate = function(self, card, context)
		local jud = card.ability.extra
		if context.end_of_round and context.main_eval then
			if pseudorandom("greenpill") < G.GAME.probabilities.normal / jud.odds then
				return {
					dollars = to_big(G.GAME.dollars),
				}
			else
				return {
					dollars = -jud.lose,
				}
			end
		end
	end,
})

SMODS.Consumable({
	key = "blueredpill",
	set = "pills",
	config = {
		extra = {
			hands = 1,
		},
	},
	calculate = function(self, card, context)
		local jud = card.ability.extra
		if context.setting_blind then
			ease_hands(jud.hands)
		end
	end,
})

SMODS.Consumable({
	key = "redbluepill",
	set = "pills",
	config = {
		extra = {
			discards = 1,
		},
	},
	calculate = function(self, card, context)
		local jud = card.ability.extra
		if context.setting_blind then
			ease_discard(jud.discards)
		end
	end,
})

SMODS.Consumable({
	key = "handypill",
	set = "pills",
	config = {
		extra = {
			hands = 1,
		},
	},
	add_to_deck = function(self, card, from_debuff)
		local jud = card.ability.extra
		G.hand:change_size(jud.hands)
	end,
	remove_from_deck = function(self, card, from_debuff)
		local jud = card.ability.extra
		G.hand:change_size(-jud.hands)
	end,
})

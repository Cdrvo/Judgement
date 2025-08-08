SMODS.ConsumableType({
	key = "monopoly",
	collection_rows = { 4, 5 },
	primary_colour = Judgement.C.CHANCE,
	secondary_colour = Judgement.C.CHANCE,
	shop_rate = 0.03,
})

SMODS.Consumable({
	key = "advancego",
	set = "monopoly",
	config = {
		extra = { give = 200 },
	},
	loc_vars = function(self, info_queue, card)
		return {
			vars = {
				card.ability.extra.give,
			},
		}
	end,
	cost = 5,
	can_use = function(self, card)
		return true
	end,
	use = function(self, card, area, copier)
		ease_dollars(card.ability.extra.give)
	end,
})

SMODS.Consumable({
	key = "advanceill",
	set = "monopoly",
	config = {
		extra = { give = 200 },
	},
	cost = 5,
	can_use = function(self, card)
		return true
	end,
	loc_vars = function(self, info_queue, card)
		return {
			vars = {
				card.ability.extra.give,
			},
		}
	end,
	use = function(self, card, area, copier)
		SMODS.add_card({
			key = "c_jud_illinois",
			set = "titledeeds",
			area = G.jokers,
		})
	end,
})

SMODS.Consumable({
	key = "advancecharles",
	set = "monopoly",
	config = {
		extra = { give = 200 },
	},
	cost = 5,
	can_use = function(self, card)
		return true
	end,
	loc_vars = function(self, info_queue, card)
		return {
			vars = {
				card.ability.extra.give,
			},
		}
	end,
	use = function(self, card, area, copier)
		SMODS.add_card({
			key = "c_jud_charles",
			set = "titledeeds",
			area = G.jokers,
		})
	end,
})

SMODS.Consumable({
	key = "nearestutility",
	set = "monopoly",
	config = {
		extra = { give = 200 },
	},
	cost = 5,
	can_use = function(self, card)
		return true
	end,
	loc_vars = function(self, info_queue, card)
		return {
			vars = {
				card.ability.extra.give,
			},
		}
	end,
	use = function(self, card, area, copier)
		SMODS.add_card({
			set = "Utilities",
			area = G.jokers,
		})
	end,
})

SMODS.Consumable({
	key = "nearestraildroad",
	set = "monopoly",
	config = {
		extra = { give = 200 },
	},
	cost = 5,
	can_use = function(self, card)
		return true
	end,
	loc_vars = function(self, info_queue, card)
		return {
			vars = {
				card.ability.extra.give,
			},
		}
	end,
	use = function(self, card, area, copier)
		SMODS.add_card({
			set = "Railroads",
			area = G.jokers,
		})
	end,
})

SMODS.Consumable({
	key = "bankfifty",
	set = "monopoly",
	config = {
		extra = { give = 50 },
	},
	cost = 5,
	can_use = function(self, card)
		return true
	end,
	loc_vars = function(self, info_queue, card)
		return {
			vars = {
				card.ability.extra.give,
			},
		}
	end,
	use = function(self, card, area, copier)
		ease_dollars(card.ability.extra.give)
	end,
})


--pleae kill me
local card_highlighted_ref12123 = Card.highlight
function Card:highlight(is_highlighted)
	self.highlighted = is_highlighted
	if self.highlighted and string.find(self.ability.name, "c_jud_freejail") and self.area == G.consumeables then
		if self.children.use_button then
			self.children.use_button:remove()
			self.children.use_button = nil
		end

		self.children.use_button = UIBox({
			definition = Judgement.create_sell_and_switch_buttons111(self, {
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
		card_highlighted_ref12123(self, is_highlighted)
	end
end

Judgement.create_sell_and_switch_buttons111 = function(card, args)
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
						button = "use_card",
						func = "can_end_b",
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
												text = localize("b_use"),
												colour = G.C.UI.TEXT_LIGHT,
												scale = 0.57,
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

G.FUNCS.can_end_b = function(e)
	local card = e.config.ref_table
	if Cryptid.safe_get(G.GAME, "blind", "in_blind") then
		e.config.colour = G.C.RED
		e.config.button = "ending_blind"
	else
		e.config.colour = G.C.UI.BACKGROUND_INACTIVE
		e.config.button = nil
	end
end

G.FUNCS.ending_blind = function(e)
	local card = e.config.ref_table
	SMODS.calculate_context({ should_defeat = true })
end


SMODS.Consumable({
	key = "freejail",
	set = "monopoly",
	config = {
		extra = {
		},
	},
	cost = 5,
	keep_on_use = function(self, card)
		return true
	end,
	calculate = function(self,card,context)
		if context.should_defeat then
		Judgement.defeat()
		SMODS.destroy_cards{card}
		end
	end,
})

SMODS.Consumable({
	key = "threespace",
	set = "monopoly",
	config = {
		extra = { remove = 1 },
	},
	cost = 5,
	can_use = function(self, card)
		return true
	end,
	loc_vars = function(self, info_queue, card)
		return {
			vars = {
				card.ability.extra.remove,
			},
		}
	end,
	use = function(self, card, area, copier)
		ease_ante(-card.ability.extra.remove)
	end,
})

SMODS.Consumable({
	key = "gojail",
	set = "monopoly",
	config = {
		extra = { give = 3 },
	},
	cost = 5,
	can_use = function(self, card)
		return true
	end,
	loc_vars = function(self, info_queue, card)
		return {
			vars = {
				card.ability.extra.give,
			},
		}
	end,
	use = function(self, card, area, copier)
		ease_hands_played(card.ability.extra.give)
		ease_discard(card.ability.extra.give)
		G.GAME.blind.chips = 0
	end,
})

--Repair property

SMODS.Consumable({
	key = "advancereading",
	set = "monopoly",
	config = {
		extra = { give = 200 },
	},
	cost = 5,
	can_use = function(self, card)
		return true
	end,
	loc_vars = function(self, info_queue, card)
		return {
			vars = {
				card.ability.extra.give,
			},
		}
	end,
	use = function(self, card, area, copier)
		SMODS.add_card({
			key = "c_jud_reading",
			set = "titledeeds",
			area = G.jokers,
		})
	end,
})

SMODS.Consumable({
	key = "paytax",
	set = "monopoly",
	config = {
		extra = { give = 1, removem = 15 },
	},
	cost = 5,
	can_use = function(self, card)
		return true
	end,
	loc_vars = function(self, info_queue, card)
		return {
			vars = {
				card.ability.extra.give,
				card.ability.extra.removem,
			},
		}
	end,
	use = function(self, card, area, copier)
		ease_hands_played(card.ability.extra.give)
		ease_discard(card.ability.extra.give)
		ease_dollars(-card.ability.extra.removem)
	end,
})

SMODS.Consumable({
	key = "electedchairman",
	set = "monopoly",
	config = {
		extra = { give = 50 },
	},
	cost = 5,
	can_use = function(self, card)
		return true
	end,
	loc_vars = function(self, info_queue, card)
		return {
			vars = {
				card.ability.extra.give,
				card.ability.extra.give * #G.GAME.blindsdefeated,
			},
		}
	end,
	use = function(self, card, area, copier)
		ease_dollars(card.ability.extra.give * #G.GAME.blindsdefeated)
	end,
})

SMODS.Consumable({
	key = "loanmatures",
	set = "monopoly",
	config = {
		extra = { give = 150 },
	},
	cost = 5,
	can_use = function(self, card)
		return true
	end,
	loc_vars = function(self, info_queue, card)
		return {
			vars = {
				card.ability.extra.give,
			},
		}
	end,
	use = function(self, card, area, copier)
		ease_dollars(card.ability.extra.give)
		SMODS.add_card({
			set = "monopoly",
		})
	end,
})

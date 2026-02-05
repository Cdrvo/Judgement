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
	atlas = "chance",
	pos = {x=0,y=0},
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
	atlas = "chance",
	pos = {x=1,y=0},
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
	atlas = "chance",
	pos = {x=4,y=0},
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
	atlas = "chance",
	pos = {x=5,y=0},
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
	atlas = "chance",
	pos = {x=2,y=0},
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
	atlas = "chance",
	pos = {x=6,y=0},
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

G.FUNCS.can_end_b = function(e)
	local card = e.config.ref_table
	if G.GAME and G.GAME.blind and G.GAME.blind.in_blind then
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
	atlas = "chance",
	pos = {x=9,y=0},
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
	atlas = "chance",
	pos = {x=10,y=0},
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
	atlas = "chance",
	pos = {x=11,y=0},
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
	atlas = "chance",
	pos = {x=3,y=0},
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
	atlas = "chance",
	pos = {x=12,y=0},
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
	atlas = "chance",
	pos = {x=8,y=0},
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
	atlas = "chance",
	pos = {x=7,y=0},
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
			atlas = "chance",
			pos = {x=0,y=0},
		})
	end,
})

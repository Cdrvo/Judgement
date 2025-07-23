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
			set = "Utility",
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

SMODS.Consumable({
	key = "freejail",
	set = "monopoly",
	config = {
		extra = {},
	},
	cost = 5,
	can_use = function(self, card)
		return Cryptid.safe_get(G.GAME, "blind", "in_blind")
	end,
	use = function(self, card, area, copier)
		Judgement.defeat()
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

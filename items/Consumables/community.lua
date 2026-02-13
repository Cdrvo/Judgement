SMODS.ConsumableType({
	key = "community",
	collection_rows = { 4, 5 },
	primary_colour = Judgement.C.COMMUNITY,
	secondary_colour = Judgement.C.COMMUNITY,
	shop_rate = 0.03,
})

SMODS.Consumable({
	key = "advancegoc",
	set = "community",
	atlas = "community",
	pos = {x=0,y=1},
	config = {
		extra = {give = 200},
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
	key = "bankerror",
	set = "community",
	atlas = "community",
	pos = {x=1,y=1},
	config = {
		extra = {give = 200},
	},	loc_vars = function(self, info_queue, card)
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
	key = "doctorfree",
	set = "community",
	atlas = "community",
	pos = {x=1,y=2},
	config = {
		extra = {give = 50,hands = 2},
	},	loc_vars = function(self, info_queue, card)
		return {
			vars = {
				card.ability.extra.give,
				card.ability.extra.hands
			},
		}
	end,
	cost = 5,
	can_use = function(self, card)
		return true
	end,
	use = function(self, card, area, copier)
		ease_dollars(-card.ability.extra.give)
        ease_hands_played(card.ability.extra.hands)
	end,
})

SMODS.Consumable({
	key = "sale",
	set = "community",
	atlas = "community",
	pos = {x=3,y=3},
	config = {
		extra = {give = 50},
	},	loc_vars = function(self, info_queue, card)
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
	key = "gojailm",
	set = "community",
	atlas = "community",
	pos = {x=1,y=2},
	config = {
		extra = {give = 3},
	},	loc_vars = function(self, info_queue, card)
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
		ease_ante(-card.ability.extra.give)
	end,
})

SMODS.Consumable({
	key = "grandopera",
	set = "community",
	atlas = "community",
	pos = {x=2,y=3},
	config = {
		extra = {give = 50},
	},	loc_vars = function(self, info_queue, card)
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
        ease_dollars(card.ability.extra.give*#G.GAME.blindsdefeated)
	end,
})

SMODS.Consumable({
	key = "holiday",
	set = "community",
	atlas = "community",
	pos = {x=0,y=0},
	config = {
		extra = {give = 100,discards = 2},
	},	loc_vars = function(self, info_queue, card)
		return {
			vars = {
				card.ability.extra.give,
				card.ability.extra.discards
			},
		}
	end,
	cost = 5,
	can_use = function(self, card)
		return true
	end,
	use = function(self, card, area, copier)
		ease_dollars(card.ability.extra.give)
        ease_discards(card.ability.extra.discards)
	end,
})

SMODS.Consumable({
	key = "taxrefund",
	set = "community",
	atlas = "community",
	pos = {x=3,y=0},
	config = {
		extra = {give = 20},
	},	loc_vars = function(self, info_queue, card)
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
	key = "bday",
	set = "community",
	atlas = "community",
	pos = {x=2,y=1},
	config = {
		extra = {give = ((os.date("*t").day)/2)},
	},	loc_vars = function(self, info_queue, card)
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
	key = "lifeinsurance",
	set = "community",
	atlas = "community",
	pos = {x=1,y=3},
	config = {
		extra = {give = 100,hand = 1},
	},	loc_vars = function(self, info_queue, card)
		return {
			vars = {
				card.ability.extra.give,
				card.ability.extra.hand
			},
		}
	end,
	cost = 5,
	can_use = function(self, card)
		return true
	end,
	use = function(self, card, area, copier)
		ease_dollars(card.ability.extra.give)
        ease_hands_played(card.ability.extra.hand)
	end,
})

SMODS.Consumable({
	key = "hospitalfees",
	set = "community",
	atlas = "community",
	pos = {x=1,y=0},
	config = {
		extra = {
			give = 100
		},
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
		return (G.GAME and G.GAME.blind and G.GAME.blind.in_blind)
	end,
	use = function(self, card, area, copier)
		ease_dollars(-card.ability.extra.give)
		Judgement.defeat()
	end,
})

SMODS.Consumable({
	key = "schoolfee",
	set = "community",
	atlas = "community",
	pos = {x=2,y=2},
	config = {
		extra = {add = 1,money = 50},
	},	loc_vars = function(self, info_queue, card)
		return {
			vars = {
				card.ability.extra.money,
				card.ability.extra.add
			},
		}
	end,
	cost = 5,
	can_use = function(self, card)
		return true
	end,
	use = function(self, card, area, copier)
		G.hand:change_size(card.ability.extra.add)
		ease_dollars(-card.ability.extra.money)
	end,
})

SMODS.Consumable({
	key = "consultancy",
	set = "community",
	atlas = "community",
	pos = {x=3,y=1},
	config = {
		extra = {give = 25},
	},	loc_vars = function(self, info_queue, card)
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
	key = "streetrepair",
	set = "community",
	atlas = "community",
	pos = {x=0,y=3},
	config = {
		extra = {add = 2,remove = 40},
	},	loc_vars = function(self, info_queue, card)
		return {
			vars = {
				card.ability.extra.add,
				card.ability.extra.remove
			},
		}
	end,
	cost = 5,
	can_use = function(self, card)
		return true
	end,
	use = function(self, card, area, copier)
		 G.consumeables:change_size(card.ability.extra.add)
		 ease_dollars(card.ability.extra.remove*G.consumeables.config.card_limit)
	end,
})

SMODS.Consumable({
	key = "secondplace",
	set = "community",
	atlas = "community",
	pos = {x=3,y=2},
	config = {
		extra = {give = 10},
	},	loc_vars = function(self, info_queue, card)
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
	key = "inherit",
	set = "community",
	atlas = "community",
	pos = {x=2,y=0},
	config = {
		extra = {give = 100,limit = 1},
	},	loc_vars = function(self, info_queue, card)
		return {
			vars = {
				card.ability.extra.give,
				card.ability.extra.limit
			},
		}
	end,
	cost = 5,
	can_use = function(self, card)
		return true
	end,
	use = function(self, card, area, copier)
		ease_dollars(card.ability.extra.give)
		Judgement.total_limit(card.ability.extra.limit)
	end,
})
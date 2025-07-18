SMODS.ConsumableType({
	key = "community",
	collection_rows = { 4, 5 },
	primary_colour = G.C.GOLD,
	secondary_colour = G.C.GOLD,
	shop_rate = 0.03,
})

SMODS.Consumable({
	key = "advancegoc",
	set = "community",
	config = {
		extra = {give = 200},
	},
	cost = 5,
	can_use = function(self, card)
		return true
	end,
	use = function(self, card, area, copier)
		ease_dollars(self.config.give)
	end,
})

SMODS.Consumable({
	key = "bankerror",
	set = "community",
	config = {
		extra = {give = 200},
	},
	cost = 5,
	can_use = function(self, card)
		return true
	end,
	use = function(self, card, area, copier)
		ease_dollars(self.config.give)
	end,
})

SMODS.Consumable({
	key = "doctorfree",
	set = "community",
	config = {
		extra = {give = 50,hands = 2},
	},
	cost = 5,
	can_use = function(self, card)
		return true
	end,
	use = function(self, card, area, copier)
		ease_dollars(-self.config.give)
        ease_hands_played(self.config.hands)
	end,
})

SMODS.Consumable({
	key = "sale",
	set = "community",
	config = {
		extra = {give = 50},
	},
	cost = 5,
	can_use = function(self, card)
		return true
	end,
	use = function(self, card, area, copier)
		ease_dollars(self.config.give)
	end,
})

SMODS.Consumable({
	key = "gojailm",
	set = "community",
	config = {
		extra = {give = 3},
	},
	cost = 5,
	can_use = function(self, card)
		return true
	end,
	use = function(self, card, area, copier)
		ease_ante(-self.config.give)
	end,
})

SMODS.Consumable({
	key = "grandopera",
	set = "monopoly",
	config = {
		extra = {give = 50},
	},
	cost = 5,
	can_use = function(self, card)
		return true
	end,
	use = function(self, card, area, copier)
        ease_dollars(self.config.give*#G.GAME.blindsdefeated)
	end,
})

SMODS.Consumable({
	key = "holiday",
	set = "community",
	config = {
		extra = {give = 100,discards = 2},
	},
	cost = 5,
	can_use = function(self, card)
		return true
	end,
	use = function(self, card, area, copier)
		ease_dollars(self.config.give)
        ease_discards(self.config.discards)
	end,
})

SMODS.Consumable({
	key = "taxrefund",
	set = "community",
	config = {
		extra = {give = 20},
	},
	cost = 5,
	can_use = function(self, card)
		return true
	end,
	use = function(self, card, area, copier)
		ease_dollars(self.config.give)
	end,
})

SMODS.Consumable({
	key = "lifeinsurance",
	set = "community",
	config = {
		extra = {give = 100,hand = 1},
	},
	cost = 5,
	can_use = function(self, card)
		return true
	end,
	use = function(self, card, area, copier)
		ease_dollars(self.config.give)
        ease_hands_played(self.config.hand)
	end,
})

SMODS.Consumable({
	key = "hospitalfee",
	set = "community",
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
	key = "hospitalfee",
	set = "community",
	config = {
		extra = {add = 1,money = 50},
	},
	cost = 5,
	can_use = function(self, card)
		return true
	end,
	use = function(self, card, area, copier)
		G.hand:change_size(self.config.add)
		ease_dollars(-self.config.money)
	end,
})

SMODS.Consumable({
	key = "consultancy",
	set = "community",
	config = {
		extra = {give = 25},
	},
	cost = 5,
	can_use = function(self, card)
		return true
	end,
	use = function(self, card, area, copier)
		ease_dollars(self.config.give)
	end,
})

SMODS.Consumable({
	key = "streetrepair",
	set = "community",
	config = {
		extra = {add = 2,remove = 40},
	},
	cost = 5,
	can_use = function(self, card)
		return true
	end,
	use = function(self, card, area, copier)
		 G.consumeables:change_size(self.config.add)
		 ease_dollars(self.config.remove*G.consumeables.config.card_limit)
	end,
})

SMODS.Consumable({
	key = "secondplace",
	set = "community",
	config = {
		extra = {give = 10},
	},
	cost = 5,
	can_use = function(self, card)
		return true
	end,
	use = function(self, card, area, copier)
		ease_dollars(self.config.give)
	end,
})

SMODS.Consumable({
	key = "inherit",
	set = "community",
	config = {
		extra = {give = 100,limit = 1},
	},
	cost = 5,
	can_use = function(self, card)
		return true
	end,
	use = function(self, card, area, copier)
		ease_dollars(self.config.give)
		Judgement.total_limit(self.config.limit)
	end,
})
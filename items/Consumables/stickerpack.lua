SMODS.ConsumableType({
	key = "stickerpacks",
	collection_rows = { 4, 5 },
	primary_colour = Judgement.C.SPACK,
	secondary_colour = Judgement.C.SPACK,
	shop_rate = 0.05,
})

SMODS.Consumable({
	key = "eternalpack",
	set = "stickerpacks",
	config = {
		extra = { cards = 2 },
	},
	cost = 5,
	loc_vars = function(self, info_queue, card)
		local jud = card.ability.extra
		return {
			vars = { jud.cards },
		}
	end,
	can_use = function(self, card)
		local jud = card.ability.extra
		if #G.jokers.highlighted > 0 and #G.jokers.highlighted <= jud.cards then
			return true
		end
		return false
	end,
	use = function(self, card, area, copier)
		for i = 1, #G.jokers.highlighted do
			G.jokers.highlighted[i]:juice_up()
			SMODS.Stickers["eternal"]:apply(G.jokers.highlighted[i], true)
		end
	end,
})

SMODS.Consumable({
	key = "perishablepack",
	set = "stickerpacks",
	config = {
		extra = { cards = 2 },
	},
	cost = 5,
	loc_vars = function(self, info_queue, card)
		local jud = card.ability.extra
		return {
			vars = { jud.cards },
		}
	end,
	can_use = function(self, card)
		local jud = card.ability.extra
		if #G.jokers.highlighted > 0 and #G.jokers.highlighted <= jud.cards then
			return true
		end
		return false
	end,
	use = function(self, card, area, copier)
		for i = 1, #G.jokers.highlighted do
			G.jokers.highlighted[i]:juice_up()
			SMODS.Stickers["perishable"]:apply(G.jokers.highlighted[i], true)
		end
	end,
})

SMODS.Consumable({
	key = "rentalpack",
	set = "stickerpacks",
	config = {
		extra = { cards = 2 },
	},
	cost = 5,
	loc_vars = function(self, info_queue, card)
		local jud = card.ability.extra
		return {
			vars = { jud.cards },
		}
	end,
	can_use = function(self, card)
		local jud = card.ability.extra
		if #G.jokers.highlighted > 0 and #G.jokers.highlighted <= jud.cards then
			return true
		end
		return false
	end,
	use = function(self, card, area, copier)
		for i = 1, #G.jokers.highlighted do
			G.jokers.highlighted[i]:juice_up()
			SMODS.Stickers["rental"]:apply(G.jokers.highlighted[i], true)
		end
	end,
})

SMODS.Consumable({
	key = "pinnedpack",
	set = "stickerpacks",
	config = {
		extra = { cards = 1 },
	},
	cost = 5,
	loc_vars = function(self, info_queue, card)
		local jud = card.ability.extra
		return {
			vars = { jud.cards },
		}
	end,
	can_use = function(self, card)
		local jud = card.ability.extra
		if #G.jokers.highlighted > 0 and #G.jokers.highlighted <= jud.cards then
			return true
		end
		return false
	end,
	use = function(self, card, area, copier)
		for i = 1, #G.jokers.highlighted do
			G.jokers.highlighted[i]:juice_up()
			SMODS.Stickers["pinned"]:apply(G.jokers.highlighted[i], true)
		end
	end,
})

if next(SMODS.find_mod("Cryptid")) then

	SMODS.Consumable({
		key = "bananapack",
		set = "stickerpacks",
		config = {
			extra = { cards = 2 },
		},
		cost = 5,
		loc_vars = function(self, info_queue, card)
			local jud = card.ability.extra
			return {
				vars = { jud.cards },
			}
		end,
		can_use = function(self, card)
			local jud = card.ability.extra
			if #G.jokers.highlighted > 0 and #G.jokers.highlighted <= jud.cards then
				return true
			end
			return false
		end,
		use = function(self, card, area, copier)
			for i = 1, #G.jokers.highlighted do
				G.jokers.highlighted[i]:juice_up()
				SMODS.Stickers["banana"]:apply(G.jokers.highlighted[i], true)
			end
		end,
	})

	SMODS.Consumable({
		key = "flickeringpack",
		set = "stickerpacks",
		config = {
			extra = { cards = 2 },
		},
		cost = 5,
		loc_vars = function(self, info_queue, card)
			local jud = card.ability.extra
			return {
				vars = { jud.cards },
			}
		end,
		can_use = function(self, card)
			local jud = card.ability.extra
			if #G.jokers.highlighted > 0 and #G.jokers.highlighted <= jud.cards then
				return true
			end
			return false
		end,
		use = function(self, card, area, copier)
			for i = 1, #G.jokers.highlighted do
				G.jokers.highlighted[i]:juice_up()
				SMODS.Stickers["cry_flickering"]:apply(G.jokers.highlighted[i], true)
			end
		end,
	})

	SMODS.Consumable({
		key = "riggedpack",
		set = "stickerpacks",
		config = {
			extra = { cards = 2 },
		},
		cost = 5,
		loc_vars = function(self, info_queue, card)
			local jud = card.ability.extra
			return {
				vars = { jud.cards },
			}
		end,
		can_use = function(self, card)
			local jud = card.ability.extra
			if #G.jokers.highlighted > 0 and #G.jokers.highlighted <= jud.cards then
				return true
			end
			return false
		end,
		use = function(self, card, area, copier)
			for i = 1, #G.jokers.highlighted do
				G.jokers.highlighted[i]:juice_up()
				SMODS.Stickers["cry_rigged"]:apply(G.jokers.highlighted[i], true)
			end
		end,
	})

	SMODS.Consumable({
		key = "funcpack",
		set = "stickerpacks",
		config = {
			extra = { cards = 1 },
		},
		cost = 5,
		loc_vars = function(self, info_queue, card)
			local jud = card.ability.extra
			return {
				vars = { jud.cards },
			}
		end,
		can_use = function(self, card)
			local jud = card.ability.extra
			if #G.jokers.highlighted > 0 and #G.jokers.highlighted <= jud.cards then
				return true
			end
			return false
		end,
		use = function(self, card, area, copier)
			for i = 1, #G.jokers.highlighted do
				G.jokers.highlighted[i]:juice_up()
				SMODS.Stickers["cry_function_sticker"]:apply(G.jokers.highlighted[i], true)
			end
		end,
	})

	SMODS.Consumable({
		key = "globalpack",
		set = "stickerpacks",
		config = {
			extra = { cards = 2 },
		},
		cost = 5,
		loc_vars = function(self, info_queue, card)
			local jud = card.ability.extra
			return {
				vars = { jud.cards },
			}
		end,
		can_use = function(self, card)
			local jud = card.ability.extra
			if #G.jokers.highlighted > 0 and #G.jokers.highlighted <= jud.cards then
				return true
			end
			return false
		end,
		use = function(self, card, area, copier)
			for i = 1, #G.jokers.highlighted do
				G.jokers.highlighted[i]:juice_up()
				SMODS.Stickers["cry_global_sticker"]:apply(G.jokers.highlighted[i], true)
			end
		end,
	})

	SMODS.Consumable({
		key = "absolutepack",
		set = "stickerpacks",
		config = {
			extra = { cards = 1 },
		},
		cost = 5,
		loc_vars = function(self, info_queue, card)
			local jud = card.ability.extra
			return {
				vars = { jud.cards },
			}
		end,
		can_use = function(self, card)
			local jud = card.ability.extra
			if #G.jokers.highlighted > 0 and #G.jokers.highlighted <= jud.cards then
				return true
			end
			return false
		end,
		use = function(self, card, area, copier)
			for i = 1, #G.jokers.highlighted do
				G.jokers.highlighted[i]:juice_up()
				SMODS.Stickers["cry_absolute"]:apply(G.jokers.highlighted[i], true)
			end
		end,
	})

end

SMODS.Consumable({
	key = "alldrawonepack",
	set = "stickerpacks",
	config = {
		extra = { cards = 2},
	},
	cost = 5,
	loc_vars = function(self, info_queue, card)
		local jud = card.ability.extra
		return {
			vars = { jud.cards },
		}
	end,
	can_use = function(self, card)
		local jud = card.ability.extra
		if #G.jokers.highlighted > 0 and #G.jokers.highlighted <= jud.cards then
			return true
		end
		return false
	end,
	use = function(self, card, area, copier)
		for i = 1, #G.jokers.highlighted do
            local keys = {"jud_alldrawone_a","jud_alldrawone_b","jud_alldrawone_c","jud_alldrawone_d",}
            local apply = pseudorandom_element(keys)
			G.jokers.highlighted[i]:juice_up()
			SMODS.Stickers[apply]:apply(G.jokers.highlighted[i], true)
		end
	end,
})

SMODS.Consumable({
	key = "skipeveryonepack",
	set = "stickerpacks",
	config = {
		extra = { cards = 2},
	},
	cost = 5,
	loc_vars = function(self, info_queue, card)
		local jud = card.ability.extra
		return {
			vars = { jud.cards },
		}
	end,
	can_use = function(self, card)
		local jud = card.ability.extra
		if #G.jokers.highlighted > 0 and #G.jokers.highlighted <= jud.cards then
			return true
		end
		return false
	end,
	use = function(self, card, area, copier)
		for i = 1, #G.jokers.highlighted do
            local keys = {"jud_skipeveryone_a","jud_skipeveryone_b","jud_skipeveryone_c","jud_skipeveryone_d",}
            local apply = pseudorandom_element(keys)
			G.jokers.highlighted[i]:juice_up()
			SMODS.Stickers[apply]:apply(G.jokers.highlighted[i], true)
		end
	end,
})

SMODS.Consumable({
	key = "skipreversepack",
	set = "stickerpacks",
	config = {
		extra = { cards = 2},
	},
	cost = 5,
	loc_vars = function(self, info_queue, card)
		local jud = card.ability.extra
		return {
			vars = { jud.cards },
		}
	end,
	can_use = function(self, card)
		local jud = card.ability.extra
		if #G.jokers.highlighted > 0 and #G.jokers.highlighted <= jud.cards then
			return true
		end
		return false
	end,
	use = function(self, card, area, copier)
		for i = 1, #G.jokers.highlighted do
            local keys = {"jud_skipreverse_a","jud_skipreverse_b","jud_skipreverse_c","jud_skipreverse_d",}
            local apply = pseudorandom_element(keys)
			G.jokers.highlighted[i]:juice_up()
			SMODS.Stickers[apply]:apply(G.jokers.highlighted[i], true)
		end
	end,
})


SMODS.Consumable({
	key = "targetedtwopack",
	set = "stickerpacks",
	config = {
		extra = { cards = 1 },
	},
	cost = 5,
	loc_vars = function(self, info_queue, card)
		local jud = card.ability.extra
		return {
			vars = { jud.cards },
		}
	end,
	can_use = function(self, card)
		local jud = card.ability.extra
		if #G.jokers.highlighted > 0 and #G.jokers.highlighted <= jud.cards then
			return true
		end
		return false
	end,
	use = function(self, card, area, copier)
		for i = 1, #G.jokers.highlighted do
			G.jokers.highlighted[i]:juice_up()
			SMODS.Stickers["jud_targeteddraw_a"]:apply(G.jokers.highlighted[i], true)
		end
	end,
})

SMODS.Consumable({
	key = "alldrawtwopack",
	set = "stickerpacks",
	config = {
		extra = { cards = 2 },
	},
	cost = 5,
	loc_vars = function(self, info_queue, card)
		local jud = card.ability.extra
		return {
			vars = { jud.cards },
		}
	end,
	can_use = function(self, card)
		local jud = card.ability.extra
		if #G.jokers.highlighted > 0 and #G.jokers.highlighted <= jud.cards then
			return true
		end
		return false    
	end,
	use = function(self, card, area, copier)
		for i = 1, #G.jokers.highlighted do
			G.jokers.highlighted[i]:juice_up()
			SMODS.Stickers["jud_alldrawtwo_a"]:apply(G.jokers.highlighted[i], true)
		end
	end,
})

SMODS.Consumable({
	key = "targetedfourpack",
	set = "stickerpacks",
	config = {
		extra = { cards = 1 },
	},
	cost = 5,
	loc_vars = function(self, info_queue, card)
		local jud = card.ability.extra
		return {
			vars = { jud.cards },
		}
	end,
	can_use = function(self, card)
		local jud = card.ability.extra
		if #G.jokers.highlighted > 0 and #G.jokers.highlighted <= jud.cards then
			return true
		end
		return false
	end,
	use = function(self, card, area, copier)
		for i = 1, #G.jokers.highlighted do
			G.jokers.highlighted[i]:juice_up()
			SMODS.Stickers["jud_targeteddrawfour_a"]:apply(G.jokers.highlighted[i], true)
		end
	end,
})

SMODS.Consumable({
	key = "upack",
	set = "stickerpacks",
	config = {
		extra = { cards = 2 },
	},
	cost = 5,
	loc_vars = function(self, info_queue, card)
		local jud = card.ability.extra
		return {
			vars = { jud.cards },
		}
	end,
	can_use = function(self, card)
		local jud = card.ability.extra
		if #G.jokers.highlighted > 0 and #G.jokers.highlighted <= jud.cards then
			return true
		end
		return false
	end,
	use = function(self, card, area, copier)
		for i = 1, #G.jokers.highlighted do
			G.jokers.highlighted[i]:juice_up()
			SMODS.Stickers["jud_u"]:apply(G.jokers.highlighted[i], true)
		end
	end,
})

SMODS.Consumable({
	key = "npack",
	set = "stickerpacks",
	config = {
		extra = { cards = 2 },
	},
	cost = 5,
	loc_vars = function(self, info_queue, card)
		local jud = card.ability.extra
		return {
			vars = { jud.cards },
		}
	end,
	can_use = function(self, card)
		local jud = card.ability.extra
		if #G.jokers.highlighted > 0 and #G.jokers.highlighted <= jud.cards then
			return true
		end
		return false
	end,
	use = function(self, card, area, copier)
		for i = 1, #G.jokers.highlighted do
			G.jokers.highlighted[i]:juice_up()
			SMODS.Stickers["jud_n"]:apply(G.jokers.highlighted[i], true)
		end
	end,
})

SMODS.Consumable({
	key = "opack",
	set = "stickerpacks",
	config = {
		extra = { cards = 2 },
	},
	cost = 5,
	loc_vars = function(self, info_queue, card)
		local jud = card.ability.extra
		return {
			vars = { jud.cards },
		}
	end,
	can_use = function(self, card)
		local jud = card.ability.extra
		if #G.jokers.highlighted > 0 and #G.jokers.highlighted <= jud.cards then
			return true
		end
		return false
	end,
	use = function(self, card, area, copier)
		for i = 1, #G.jokers.highlighted do
			G.jokers.highlighted[i]:juice_up()
			SMODS.Stickers["jud_o"]:apply(G.jokers.highlighted[i], true)
		end
	end,
})


SMODS.Consumable({
	key = "expack",
	set = "stickerpacks",
	config = {
		extra = { cards = 2 },
	},
	cost = 5,
	loc_vars = function(self, info_queue, card)
		local jud = card.ability.extra
		return {
			vars = { jud.cards },
		}
	end,
	can_use = function(self, card)
		local jud = card.ability.extra
		if #G.jokers.highlighted > 0 and #G.jokers.highlighted <= jud.cards then
			return true
		end
		return false
	end,
	use = function(self, card, area, copier)
		for i = 1, #G.jokers.highlighted do
			G.jokers.highlighted[i]:juice_up()
			SMODS.Stickers["jud_ex"]:apply(G.jokers.highlighted[i], true)
		end
	end,
})


SMODS.Consumable({
	key = "wildjackpotpack",
	set = "stickerpacks",
	config = {
		extra = { cards = 2 },
	},
	cost = 5,
	loc_vars = function(self, info_queue, card)
		local jud = card.ability.extra
		return {
			vars = { jud.cards },
		}
	end,
	can_use = function(self, card)
		local jud = card.ability.extra
		if #G.jokers.highlighted > 0 and #G.jokers.highlighted <= jud.cards then
			return true
		end
		return false
	end,
	use = function(self, card, area, copier)
		for i = 1, #G.jokers.highlighted do
			G.jokers.highlighted[i]:juice_up()
			SMODS.Stickers["jud_wildjackpot"]:apply(G.jokers.highlighted[i], true)
		end
	end,
})


SMODS.Consumable({
	key = "temporarypack",
	set = "stickerpacks",
	config = {
		extra = { cards = 2 },
	},
	cost = 5,
	loc_vars = function(self, info_queue, card)
		local jud = card.ability.extra
		return {
			vars = { jud.cards },
		}
	end,
	can_use = function(self, card)
		local jud = card.ability.extra
		if #G.jokers.highlighted > 0 and #G.jokers.highlighted <= jud.cards then
			return true
		end
		return false
	end,
	use = function(self, card, area, copier)
		for i = 1, #G.jokers.highlighted do
			G.jokers.highlighted[i]:juice_up()
			SMODS.Stickers["jud_temporary"]:apply(G.jokers.highlighted[i], true)
		end
	end,
})












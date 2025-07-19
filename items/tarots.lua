SMODS.Consumable({
	key = "famine",
	set = "Tarot",
	config = { mod_conv = "m_jud_cannibal", max_highlighted = 1 },
	loc_vars = function(self, info_queue)
		info_queue[#info_queue + 1] = G.P_CENTERS[self.config.mod_conv]
		return { vars = { self.config.max_highlighted } }
	end,
})

SMODS.Consumable({
	key = "music",
	set = "Tarot",
	config = { mod_conv = "m_jud_celestial", max_highlighted = 1 },
	loc_vars = function(self, info_queue)
		info_queue[#info_queue + 1] = G.P_CENTERS[self.config.mod_conv]
		return { vars = { self.config.max_highlighted } }
	end,
})

SMODS.Consumable({
	key = "pilgrimage",
	set = "Tarot",
	config = { max_highlighted = 1 },
	loc_vars = function(self, info_queue)
		return { vars = { self.config.max_highlighted } }
	end,
	use = function(self, card, area, copier)
		for i = 1, #G.hand.highlighted do
			G.hand.highlighted[i]:juice_up()
			Judgement.random_post(G.hand.highlighted[i])
		end
	end,
})

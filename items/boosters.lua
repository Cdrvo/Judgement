SMODS.Booster({
	key = "boonp",
	pos = { x = 0, y = 0 },
	config = { extra = 2, choose = 1 },
	group_key = "k_jud_boonpk",
	cost = 4,
	weight = 0.06,
	select_card = "jud_boons",
	create_card = function(self, card, i)
		return SMODS.create_card({
			set = "boons",
			skip_materialize = true,
		})
	end,
})

SMODS.Booster({
	key = "boonpj",
	pos = { x = 0, y = 0 },
	config = { extra = 4, choose = 1 },
	group_key = "k_jud_boonpk",
	cost = 4,
	weight = 0.06,
	select_card = "jud_boons",
	create_card = function(self, card, i)
		return SMODS.create_card({
			set = "boons",
			skip_materialize = true,
		})
	end,
})

--Boons ^
--Uno

SMODS.Booster({
	key = "unop",
	pos = { x = 0, y = 0 },
	config = { extra = 3, choose = 1 },
	group_key = "k_jud_unopk",
	cost = 4,
	weight = 0.06,
	select_card = "Consumeables",
	create_card = function(self, card, i)
		return SMODS.create_card({
			set = "uno",
			skip_materialize = true,
		})
	end,
	in_pool = function(self, wawa, wawa2)
		if G.GAME.flipped == false or G.GAME.used_vouchers["v_jud_flip"] == true then
			return true
		end
		return false
	end,
})

SMODS.Booster({
	key = "unopj",
	pos = { x = 0, y = 0 },
	config = { extra = 5, choose = 1 },
	group_key = "k_jud_unopk",
	cost = 4,
	weight = 0.06,
	select_card = "Consumeables",
	create_card = function(self, card, i)
		return SMODS.create_card({
			set = "uno",
			skip_materialize = true,
		})
	end,
	in_pool = function(self, wawa, wawa2)
		if G.GAME.flipped == false or G.GAME.used_vouchers["v_jud_flip"] == true then
			return true
		end
		return false
	end,
})

SMODS.Booster({
	key = "unopm",
	pos = { x = 0, y = 0 },
	config = { extra = 5, choose = 2 },
	group_key = "k_jud_deedspk",
	cost = 4,
	weight = 0.06,
	select_card = "Consumeables",
	create_card = function(self, card, i)
		return SMODS.create_card({
			set = "uno",
			skip_materialize = true,
		})
	end,
	in_pool = function(self, wawa, wawa2)
		if G.GAME.flipped == false or G.GAME.used_vouchers["v_jud_flip"] == true then
			return true
		end
		return false
	end,
})

-- Title Deeds

SMODS.Booster({
	key = "titlep",
	pos = { x = 0, y = 0 },
	config = { extra = 3, choose = 1 },
	group_key = "k_jud_deedspk",
	cost = 4,
	weight = 0.06,
	select_card = "Consumeables",
	create_card = function(self, card, i)
		return SMODS.create_card({
			set = "titledeeds",
			skip_materialize = true,
		})
	end,
})

SMODS.Booster({
	key = "titlepj",
	pos = { x = 0, y = 0 },
	config = { extra = 5, choose = 1 },
	group_key = "k_jud_deedspk",
	cost = 4,
	weight = 0.06,
	select_card = "Consumeables",
	create_card = function(self, card, i)
		return SMODS.create_card({
			set = "titledeeds",
			skip_materialize = true,
		})
	end,
})

SMODS.Booster({
	key = "titlepm",
	pos = { x = 0, y = 0 },
	config = { extra = 5, choose = 2 },
	group_key = "k_jud_unopk",
	cost = 4,
	weight = 0.06,
	select_card = "Consumeables",
	create_card = function(self, card, i)
		return SMODS.create_card({
			set = "titledeeds",
			skip_materialize = true,
		})
	end,
})

-- Runes

SMODS.Booster({
	key = "runep",
	pos = { x = 0, y = 0 },
	config = { extra = 3, choose = 1 },
	group_key = "k_jud_runespk",
	cost = 4,
	weight = 0.06,
	select_card = "Consumeables",
	create_card = function(self, card, i)
		return SMODS.create_card({
			set = "rune",
			skip_materialize = true,
		})
	end,
})

SMODS.Booster({
	key = "runepj",
	pos = { x = 0, y = 0 },
	config = { extra = 5, choose = 1 },
	group_key = "k_jud_runespk",
	cost = 4,
	weight = 0.06,
	select_card = "Consumeables",
	create_card = function(self, card, i)
		return SMODS.create_card({
			set = "rune",
			skip_materialize = true,
		})
	end,
})

SMODS.Booster({
	key = "runepm",
	pos = { x = 0, y = 0 },
	config = { extra = 5, choose = 2 },
	group_key = "k_jud_runespk",
	cost = 4,
	weight = 0.06,
	select_card = "Consumeables",
	create_card = function(self, card, i)
		return SMODS.create_card({
			set = "rune",
			skip_materialize = true,
		})
	end,
})

--Sticker Packs

SMODS.Booster({
	key = "stickerpackp",
	pos = { x = 0, y = 0 },
	config = { extra = 3, choose = 1 },
	group_key = "k_jud_stickerpackpk",
	cost = 4,
	weight = 0.06,
	select_card = "Consumeables",
	create_card = function(self, card, i)
		return SMODS.create_card({
			set = "stickerpacks",
			skip_materialize = true,
		})
	end,
})

SMODS.Booster({
	key = "stickerpackpj",
	pos = { x = 0, y = 0 },
	config = { extra = 5, choose = 1 },
	group_key = "k_jud_stickerpackpk",
	cost = 4,
	weight = 0.06,
	select_card = "Consumeables",
	create_card = function(self, card, i)
		return SMODS.create_card({
			set = "stickerpacks",
			skip_materialize = true,
		})
	end,
})

SMODS.Booster({
	key = "stickerpackpm",
	pos = { x = 0, y = 0 },
	config = { extra = 5, choose = 2 },
	group_key = "k_jud_stickerpackpk",
	cost = 4,
	weight = 0.06,
	select_card = "Consumeables",
	create_card = function(self, card, i)
		return SMODS.create_card({
			set = "stickerpacks",
			skip_materialize = true,
		})
	end,
})

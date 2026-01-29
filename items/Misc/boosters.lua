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
	atlas = "boosters",
	pos = { x = 0, y = 0 },
	set_badges = function(self, card, badges)
		badges[#badges + 1] = create_badge("Art by: superb_thing", Judgement.C.UNOC, G.C.BLACK, 0.8)
	end,
	config = { extra = 3, choose = 1 },
	group_key = "k_jud_unopk",
	cost = 4,
	weight = 0.06,
	select_card = "consumeables",
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
	key = "unop1",
	pos = { x = 1, y = 0 },
	atlas = "boosters",
	config = { extra = 3, choose = 1 },
	set_badges = function(self, card, badges)
		badges[#badges + 1] = create_badge("Art by: superb_thing", Judgement.C.UNOC, G.C.BLACK, 0.8)
	end,
	group_key = "k_jud_unopk",
	cost = 4,
	weight = 0.06,
	select_card = "consumeables",
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
	key = "unop2",
	pos = { x = 2, y = 0 },
	atlas = "boosters",
	config = { extra = 3, choose = 1 },
	set_badges = function(self, card, badges)
		badges[#badges + 1] = create_badge("Art by: superb_thing", Judgement.C.UNOC, G.C.BLACK, 0.8)
	end,
	group_key = "k_jud_unopk",
	cost = 4,
	weight = 0.06,
	select_card = "consumeables",
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
	key = "unop3",
	pos = { x = 3, y = 0 },
	atlas = "boosters",
	config = { extra = 3, choose = 1 },
	set_badges = function(self, card, badges)
		badges[#badges + 1] = create_badge("Art by: superb_thing", Judgement.C.UNOC, G.C.BLACK, 0.8)
	end,
	group_key = "k_jud_unopk",
	cost = 4,
	weight = 0.06,
	select_card = "consumeables",
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
	pos = { x = 4, y = 0 },
	atlas = "boosters",
	config = { extra = 5, choose = 1 },
	set_badges = function(self, card, badges)
		badges[#badges + 1] = create_badge("Art by: superb_thing", Judgement.C.UNOC, G.C.BLACK, 0.8)
	end,
	group_key = "k_jud_unopk",
	cost = 4,
	weight = 0.06,
	select_card = "consumeables",
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
	key = "unopj2",
	pos = { x = 5, y = 0 },
	atlas = "boosters",
	config = { extra = 5, choose = 1 },
	set_badges = function(self, card, badges)
		badges[#badges + 1] = create_badge("Art by: superb_thing", Judgement.C.UNOC, G.C.BLACK, 0.8)
	end,
	group_key = "k_jud_unopk",
	cost = 4,
	weight = 0.06,
	select_card = "consumeables",
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
	pos = { x = 6, y = 0 },
	atlas = "boosters",
	config = { extra = 5, choose = 2 },
	set_badges = function(self, card, badges)
		badges[#badges + 1] = create_badge("Art by: superb_thing", Judgement.C.UNOC, G.C.BLACK, 0.8)
	end,
	group_key = "k_jud_deedspk",
	cost = 4,
	weight = 0.06,
	select_card = "consumeables",
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
	key = "unopm2",
	pos = { x = 7, y = 0 },
	atlas = "boosters",
	config = { extra = 5, choose = 2 },
	set_badges = function(self, card, badges)
		badges[#badges + 1] = create_badge("Art by: superb_thing", Judgement.C.UNOC, G.C.BLACK, 0.8)
	end,
	group_key = "k_jud_deedspk",
	cost = 4,
	weight = 0.06,
	select_card = "consumeables",
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
	select_card = "consumeables",
	create_card = function(self, card, i)
		local AA = { "1", "2", "3" }
		local addc = pseudorandom("titlep")
		local ccd = pseudorandom_element(AA)
		if ccd == "1" then
			return SMODS.create_card({
				set = "monopoly",
				skip_materialize = true,
			})
		elseif ccd == "2" then
			return SMODS.create_card({
				set = "community",
				skip_materialize = true,
			})
		elseif ccd == "3" then
			if addc < 0.5 then
				return SMODS.create_card({
					set = "CommonDeeds",
					skip_materialize = true,
				})
			elseif addc > 0.5 and addc <= 0.89 then
				return SMODS.create_card({
					set = "UncommonDeeds",
					skip_materialize = true,
				})
			elseif addc > 0.89 and addc <= 0.99 then
				return SMODS.create_card({
					set = "RareDeeds",
					skip_materialize = true,
				})
			elseif addc > 0.99 then
				return SMODS.create_card({
					set = "LegendaryDeeds",
					skip_materialize = true,
				})
			end
		end
	end,
})

SMODS.Booster({
	key = "titlepj",
	pos = { x = 0, y = 0 },
	config = { extra = 5, choose = 1 },
	group_key = "k_jud_deedspk",
	cost = 4,
	weight = 0.06,
	select_card = "consumeables",
	create_card = function(self, card, i)
		local AA = { "1", "2", "3" }
		local addc = pseudorandom("titlep")
		local ccd = pseudorandom_element(AA)
		if ccd == "1" then
			return SMODS.create_card({
				set = "monopoly",
				skip_materialize = true,
			})
		elseif ccd == "2" then
			return SMODS.create_card({
				set = "community",
				skip_materialize = true,
			})
		elseif ccd == "3" then
			if addc < 0.5 then
				return SMODS.create_card({
					set = "CommonDeeds",
					skip_materialize = true,
				})
			elseif addc > 0.5 and addc <= 0.8 then
				return SMODS.create_card({
					set = "UncommonDeeds",
					skip_materialize = true,
				})
			elseif addc > 0.8 and addc <= 0.99 then
				return SMODS.create_card({
					set = "RareDeeds",
					skip_materialize = true,
				})
			elseif addc > 0.99 then
				return SMODS.create_card({
					set = "LegendaryDeeds",
					skip_materialize = true,
				})
			end
		end
	end,
})

SMODS.Booster({
	key = "titlepm",
	pos = { x = 0, y = 0 },
	config = { extra = 5, choose = 2 },
	group_key = "k_jud_deedspk",
	cost = 4,
	weight = 0.06,
	select_card = "consumeables",
	create_card = function(self, card, i)
		local AA = { "1", "2", "3" }
		local addc = pseudorandom("titlep")
		local ccd = pseudorandom_element(AA)
		if ccd == "1" then
			return SMODS.create_card({
				set = "monopoly",
				skip_materialize = true,
			})
		elseif ccd == "2" then
			return SMODS.create_card({
				set = "community",
				skip_materialize = true,
			})
		elseif ccd == "3" then
			if addc < 0.5 then
				return SMODS.create_card({
					set = "CommonDeeds",
					skip_materialize = true,
				})
			elseif addc > 0.5 and addc <= 0.8 then
				return SMODS.create_card({
					set = "UncommonDeeds",
					skip_materialize = true,
				})
			elseif addc > 0.8 and addc <= 0.99 then
				return SMODS.create_card({
					set = "RareDeeds",
					skip_materialize = true,
				})
			elseif addc > 0.99 then
				return SMODS.create_card({
					set = "LegendaryDeeds",
					skip_materialize = true,
				})
			end
		end
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
	select_card = "consumeables",
	create_card = function(self, card, i)
		return SMODS.create_card({
			set = "runes",
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
	select_card = "consumeables",
	create_card = function(self, card, i)
		return SMODS.create_card({
			set = "runes",
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
	select_card = "consumeables",
	create_card = function(self, card, i)
		return SMODS.create_card({
			set = "runes",
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
	select_card = "consumeables",
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
	select_card = "consumeables",
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
	select_card = "consumeables",
	create_card = function(self, card, i)
		return SMODS.create_card({
			set = "stickerpacks",
			skip_materialize = true,
		})
	end,
})

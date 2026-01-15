SMODS.ConsumableType({
	key = "uno",
	collection_rows = { 5, 5 },
	primary_colour = Judgement.C.UNOC,
	secondary_colour = Judgement.C.UNOC,
	shop_rate = 0.01,
})

SMODS.Consumable({
	key = "unoone_a",
	set = "uno",
	atlas = "unoc",
	set_badges = function(self, card, badges)
		badges[#badges + 1] = create_badge("Art by: superb_thing", Judgement.C.UNOC, G.C.BLACK, 0.8)
	end,
	pos = {
		x = 0,
		y = 0,
	},
	config = {
		extra = {},
	},
	cost = 5,
	Pools = {
		UnoRed = true,
	},
	can_use = function(self, card)
		return true
	end,
	use = function(self, card, area, copier)
		local wcard
		wcard = Judgement.playing_card(G.deck, "Ace", "Hearts", SMODS.poll_enhancement({ guaranteed = true }))
		if G.GAME.used_vouchers["v_jud_dice"] == true then
			SMODS.Stickers["cry_rigged"]:apply(wcard, true)
		end
	end,
	in_pool = function(self, wawa, wawa2)
		if G.GAME.flipped == false or G.GAME.used_vouchers["v_jud_flip"] == true then
			return true
		end
		return false
	end,
})

SMODS.Consumable({
	key = "unoone_b",
	set = "uno",
	atlas = "unoc",
	set_badges = function(self, card, badges)
		badges[#badges + 1] = create_badge("Art by: superb_thing", Judgement.C.UNOC, G.C.BLACK, 0.8)
	end,
	no_collection = true,
	pos = {
		x = 1,
		y = 0,
	},
	config = {
		extra = {},
	},
	Pools = {
		UnoYellow = true,
	},
	cost = 5,
	can_use = function(self, card)
		return true
	end,
	use = function(self, card, area, copier)
		local wcard
		wcard = Judgement.playing_card(G.deck, "Ace", "Diamonds", SMODS.poll_enhancement({ guaranteed = true }))
		if G.GAME.used_vouchers["v_jud_dice"] == true then
			SMODS.Stickers["cry_rigged"]:apply(wcard, true)
		end
	end,
	in_pool = function(self, wawa, wawa2)
		if G.GAME.flipped == false or G.GAME.used_vouchers["v_jud_flip"] == true then
			return true
		end
		return false
	end,
})

SMODS.Consumable({
	key = "unoone_c",
	set = "uno",
	atlas = "unoc",
	set_badges = function(self, card, badges)
		badges[#badges + 1] = create_badge("Art by: superb_thing", Judgement.C.UNOC, G.C.BLACK, 0.8)
	end,
	no_collection = true,
	pos = {
		x = 2,
		y = 0,
	},
	config = {
		extra = {},
	},
	Pools = {
		UnoGreen = true,
	},
	cost = 5,
	can_use = function(self, card)
		return true
	end,
	use = function(self, card, area, copier)
		local wcard
		wcard = Judgement.playing_card(G.deck, "Ace", "Clubs", SMODS.poll_enhancement({ guaranteed = true }))
		if G.GAME.used_vouchers["v_jud_dice"] == true then
			SMODS.Stickers["cry_rigged"]:apply(wcard, true)
		end
	end,
	in_pool = function(self, wawa, wawa2)
		if G.GAME.flipped == false or G.GAME.used_vouchers["v_jud_flip"] == true then
			return true
		end
		return false
	end,
})

SMODS.Consumable({
	key = "unoone_d",
	set = "uno",
	atlas = "unoc",
	set_badges = function(self, card, badges)
		badges[#badges + 1] = create_badge("Art by: superb_thing", Judgement.C.UNOC, G.C.BLACK, 0.8)
	end,
	no_collection = true,
	pos = {
		x = 3,
		y = 0,
	},
	Pools = {
		UnoBlue = true,
	},
	config = {
		extra = {},
	},
	cost = 5,
	can_use = function(self, card)
		return true
	end,
	use = function(self, card, area, copier)
		local wcard
		wcard = Judgement.playing_card(G.deck, "Ace", "Spades", SMODS.poll_enhancement({ guaranteed = true }))
		if G.GAME.used_vouchers["v_jud_dice"] == true then
			SMODS.Stickers["cry_rigged"]:apply(wcard, true)
		end
	end,
	in_pool = function(self, wawa, wawa2)
		if G.GAME.flipped == false or G.GAME.used_vouchers["v_jud_flip"] == true then
			return true
		end
		return false
	end,
})

SMODS.Consumable({
	key = "unotwo_a",
	set = "uno",
	atlas = "unoc",
	set_badges = function(self, card, badges)
		badges[#badges + 1] = create_badge("Art by: superb_thing", Judgement.C.UNOC, G.C.BLACK, 0.8)
	end,
	pos = {
		x = 4,
		y = 0,
	},
	config = {
		extra = {},
	},
	Pools = {
		UnoRed = true,
	},
	cost = 5,
	can_use = function(self, card)
		return true
	end,
	use = function(self, card, area, copier)
		local wcard
		wcard = Judgement.playing_card(G.deck, "2", "Hearts", SMODS.poll_enhancement({ guaranteed = true }))
		if G.GAME.used_vouchers["v_jud_dice"] == true then
			SMODS.Stickers["cry_rigged"]:apply(wcard, true)
		end
	end,
	in_pool = function(self, wawa, wawa2)
		if G.GAME.flipped == false or G.GAME.used_vouchers["v_jud_flip"] == true then
			return true
		end
		return false
	end,
})

SMODS.Consumable({
	key = "unotwo_b",
	set = "uno",
	atlas = "unoc",
	set_badges = function(self, card, badges)
		badges[#badges + 1] = create_badge("Art by: superb_thing", Judgement.C.UNOC, G.C.BLACK, 0.8)
	end,
	no_collection = true,
	pos = {
		x = 5,
		y = 0,
	},
	config = {
		extra = {},
	},
	Pools = {
		UnoYellow = true,
	},
	cost = 5,
	can_use = function(self, card)
		return true
	end,
	use = function(self, card, area, copier)
		local wcard
		wcard = Judgement.playing_card(G.deck, "2", "Diamonds", SMODS.poll_enhancement({ guaranteed = true }))
		if G.GAME.used_vouchers["v_jud_dice"] == true then
			SMODS.Stickers["cry_rigged"]:apply(wcard, true)
		end
	end,
	in_pool = function(self, wawa, wawa2)
		if G.GAME.flipped == false or G.GAME.used_vouchers["v_jud_flip"] == true then
			return true
		end
		return false
	end,
})

SMODS.Consumable({
	key = "unotwo_c",
	set = "uno",
	atlas = "unoc",
	set_badges = function(self, card, badges)
		badges[#badges + 1] = create_badge("Art by: superb_thing", Judgement.C.UNOC, G.C.BLACK, 0.8)
	end,
	no_collection = true,
	pos = {
		x = 6,
		y = 0,
	},
	config = {
		extra = {},
	},
	Pools = {
		UnoGreen = true,
	},
	cost = 5,
	can_use = function(self, card)
		return true
	end,
	use = function(self, card, area, copier)
		local wcard
		wcard = Judgement.playing_card(G.deck, "2", "Clubs", SMODS.poll_enhancement({ guaranteed = true }))
		if G.GAME.used_vouchers["v_jud_dice"] == true then
			SMODS.Stickers["cry_rigged"]:apply(wcard, true)
		end
	end,
	in_pool = function(self, wawa, wawa2)
		if G.GAME.flipped == false or G.GAME.used_vouchers["v_jud_flip"] == true then
			return true
		end
		return false
	end,
})

SMODS.Consumable({
	key = "unotwo_d",
	set = "uno",
	atlas = "unoc",
	set_badges = function(self, card, badges)
		badges[#badges + 1] = create_badge("Art by: superb_thing", Judgement.C.UNOC, G.C.BLACK, 0.8)
	end,
	no_collection = true,
	pos = {
		x = 7,
		y = 0,
	},
	config = {
		extra = {},
	},
	Pools = {
		UnoBlue = true,
	},
	cost = 5,
	can_use = function(self, card)
		return true
	end,
	use = function(self, card, area, copier)
		local wcard
		wcard = Judgement.playing_card(G.deck, "2", "Spades", SMODS.poll_enhancement({ guaranteed = true }))
		if G.GAME.used_vouchers["v_jud_dice"] == true then
			SMODS.Stickers["cry_rigged"]:apply(wcard, true)
		end
	end,
	in_pool = function(self, wawa, wawa2)
		if G.GAME.flipped == false or G.GAME.used_vouchers["v_jud_flip"] == true then
			return true
		end
		return false
	end,
})

SMODS.Consumable({
	key = "unothree_a",
	set = "uno",
	atlas = "unoc",
	set_badges = function(self, card, badges)
		badges[#badges + 1] = create_badge("Art by: superb_thing", Judgement.C.UNOC, G.C.BLACK, 0.8)
	end,
	pos = {
		x = 8,
		y = 0,
	},
	config = {
		extra = {},
	},
	Pools = {
		UnoRed = true,
	},
	cost = 5,
	can_use = function(self, card)
		return true
	end,
	use = function(self, card, area, copier)
		local wcard
		wcard = Judgement.playing_card(G.deck, "3", "Hearts", SMODS.poll_enhancement({ guaranteed = true }))
		if G.GAME.used_vouchers["v_jud_dice"] == true then
			SMODS.Stickers["cry_rigged"]:apply(wcard, true)
		end
	end,
	in_pool = function(self, wawa, wawa2)
		if G.GAME.flipped == false or G.GAME.used_vouchers["v_jud_flip"] == true then
			return true
		end
		return false
	end,
})

SMODS.Consumable({
	key = "unothree_b",
	set = "uno",
	atlas = "unoc",
	set_badges = function(self, card, badges)
		badges[#badges + 1] = create_badge("Art by: superb_thing", Judgement.C.UNOC, G.C.BLACK, 0.8)
	end,
	no_collection = true,
	pos = {
		x = 9,
		y = 0,
	},
	config = {
		extra = {},
	},
	Pools = {
		UnoYellow = true,
	},
	cost = 5,
	can_use = function(self, card)
		return true
	end,
	use = function(self, card, area, copier)
		local wcard
		wcard = Judgement.playing_card(G.deck, "3", "Diamonds", SMODS.poll_enhancement({ guaranteed = true }))
		if G.GAME.used_vouchers["v_jud_dice"] == true then
			SMODS.Stickers["cry_rigged"]:apply(wcard, true)
		end
	end,
	in_pool = function(self, wawa, wawa2)
		if G.GAME.flipped == false or G.GAME.used_vouchers["v_jud_flip"] == true then
			return true
		end
		return false
	end,
})

SMODS.Consumable({
	key = "unothree_c",
	set = "uno",
	atlas = "unoc",
	set_badges = function(self, card, badges)
		badges[#badges + 1] = create_badge("Art by: superb_thing", Judgement.C.UNOC, G.C.BLACK, 0.8)
	end,
	no_collection = true,
	pos = {
		x = 10,
		y = 0,
	},
	config = {
		extra = {},
	},
	Pools = {
		UnoGreen = true,
	},
	cost = 5,
	can_use = function(self, card)
		return true
	end,
	use = function(self, card, area, copier)
		local wcard
		wcard = Judgement.playing_card(G.deck, "3", "Clubs", SMODS.poll_enhancement({ guaranteed = true }))
		if G.GAME.used_vouchers["v_jud_dice"] == true then
			SMODS.Stickers["cry_rigged"]:apply(wcard, true)
		end
	end,
	in_pool = function(self, wawa, wawa2)
		if G.GAME.flipped == false or G.GAME.used_vouchers["v_jud_flip"] == true then
			return true
		end
		return false
	end,
})

SMODS.Consumable({
	key = "unothree_d",
	set = "uno",
	atlas = "unoc",
	set_badges = function(self, card, badges)
		badges[#badges + 1] = create_badge("Art by: superb_thing", Judgement.C.UNOC, G.C.BLACK, 0.8)
	end,
	no_collection = true,
	pos = {
		x = 11,
		y = 0,
	},
	config = {
		extra = {},
	},
	Pools = {
		UnoBlue = true,
	},
	cost = 5,
	can_use = function(self, card)
		return true
	end,
	use = function(self, card, area, copier)
		local wcard
		wcard = Judgement.playing_card(G.deck, "3", "Spades", SMODS.poll_enhancement({ guaranteed = true }))
		if G.GAME.used_vouchers["v_jud_dice"] == true then
			SMODS.Stickers["cry_rigged"]:apply(wcard, true)
		end
	end,
	in_pool = function(self, wawa, wawa2)
		if G.GAME.flipped == false or G.GAME.used_vouchers["v_jud_flip"] == true then
			return true
		end
		return false
	end,
})

SMODS.Consumable({
	key = "unofour_a",
	set = "uno",
	atlas = "unoc",
	set_badges = function(self, card, badges)
		badges[#badges + 1] = create_badge("Art by: superb_thing", Judgement.C.UNOC, G.C.BLACK, 0.8)
	end,
	pos = {
		x = 12,
		y = 0,
	},
	config = {
		extra = {},
	},
	Pools = {
		UnoRed = true,
	},
	cost = 5,
	can_use = function(self, card)
		return true
	end,
	use = function(self, card, area, copier)
		local wcard
		wcard = Judgement.playing_card(G.deck, "4", "Hearts", SMODS.poll_enhancement({ guaranteed = true }))
		if G.GAME.used_vouchers["v_jud_dice"] == true then
			SMODS.Stickers["cry_rigged"]:apply(wcard, true)
		end
	end,
	in_pool = function(self, wawa, wawa2)
		if G.GAME.flipped == false or G.GAME.used_vouchers["v_jud_flip"] == true then
			return true
		end
		return false
	end,
})

SMODS.Consumable({
	key = "unofour_b",
	set = "uno",
	atlas = "unoc",
	set_badges = function(self, card, badges)
		badges[#badges + 1] = create_badge("Art by: superb_thing", Judgement.C.UNOC, G.C.BLACK, 0.8)
	end,
	no_collection = true,
	pos = {
		x = 13,
		y = 0,
	},
	Pools = {
		UnoYellow = true,
	},
	config = {
		extra = {},
	},
	cost = 5,
	can_use = function(self, card)
		return true
	end,
	use = function(self, card, area, copier)
		local wcard
		wcard = Judgement.playing_card(G.deck, "4", "Diamonds", SMODS.poll_enhancement({ guaranteed = true }))
		if G.GAME.used_vouchers["v_jud_dice"] == true then
			SMODS.Stickers["cry_rigged"]:apply(wcard, true)
		end
	end,
	in_pool = function(self, wawa, wawa2)
		if G.GAME.flipped == false or G.GAME.used_vouchers["v_jud_flip"] == true then
			return true
		end
		return false
	end,
})

SMODS.Consumable({
	key = "unofour_c",
	set = "uno",
	atlas = "unoc",
	set_badges = function(self, card, badges)
		badges[#badges + 1] = create_badge("Art by: superb_thing", Judgement.C.UNOC, G.C.BLACK, 0.8)
	end,
	no_collection = true,
	pos = {
		x = 14,
		y = 0,
	},
	config = {
		extra = {},
	},
	Pools = {
		UnoGreen = true,
	},
	cost = 5,
	can_use = function(self, card)
		return true
	end,
	use = function(self, card, area, copier)
		local wcard
		wcard = Judgement.playing_card(G.deck, "4", "Clubs", SMODS.poll_enhancement({ guaranteed = true }))
		if G.GAME.used_vouchers["v_jud_dice"] == true then
			SMODS.Stickers["cry_rigged"]:apply(wcard, true)
		end
	end,
	in_pool = function(self, wawa, wawa2)
		if G.GAME.flipped == false or G.GAME.used_vouchers["v_jud_flip"] == true then
			return true
		end
		return false
	end,
})

SMODS.Consumable({
	key = "unofour_d",
	set = "uno",
	atlas = "unoc",
	set_badges = function(self, card, badges)
		badges[#badges + 1] = create_badge("Art by: superb_thing", Judgement.C.UNOC, G.C.BLACK, 0.8)
	end,
	no_collection = true,
	pos = {
		x = 15,
		y = 0,
	},
	config = {
		extra = {},
	},
	Pools = {
		UnoBlue = true,
	},
	cost = 5,
	can_use = function(self, card)
		return true
	end,
	use = function(self, card, area, copier)
		local wcard
		wcard = Judgement.playing_card(G.deck, "4", "Spades", SMODS.poll_enhancement({ guaranteed = true }))
		if G.GAME.used_vouchers["v_jud_dice"] == true then
			SMODS.Stickers["cry_rigged"]:apply(wcard, true)
		end
	end,
	in_pool = function(self, wawa, wawa2)
		if G.GAME.flipped == false or G.GAME.used_vouchers["v_jud_flip"] == true then
			return true
		end
		return false
	end,
})

SMODS.Consumable({
	key = "unofive_a",
	set = "uno",
	atlas = "unoc",
	set_badges = function(self, card, badges)
		badges[#badges + 1] = create_badge("Art by: superb_thing", Judgement.C.UNOC, G.C.BLACK, 0.8)
	end,
	pos = {
		x = 0,
		y = 1,
	},
	config = {
		extra = {},
	},
	Pools = {
		UnoRed = true,
	},
	cost = 5,
	can_use = function(self, card)
		return true
	end,
	use = function(self, card, area, copier)
		local wcard
		wcard = Judgement.playing_card(G.deck, "5", "Hearts", SMODS.poll_enhancement({ guaranteed = true }))
		if G.GAME.used_vouchers["v_jud_dice"] == true then
			SMODS.Stickers["cry_rigged"]:apply(wcard, true)
		end
	end,
	in_pool = function(self, wawa, wawa2)
		if G.GAME.flipped == false or G.GAME.used_vouchers["v_jud_flip"] == true then
			return true
		end
		return false
	end,
})

SMODS.Consumable({
	key = "unofive_b",
	set = "uno",
	atlas = "unoc",
	set_badges = function(self, card, badges)
		badges[#badges + 1] = create_badge("Art by: superb_thing", Judgement.C.UNOC, G.C.BLACK, 0.8)
	end,
	no_collection = true,
	pos = {
		x = 1,
		y = 1,
	},
	Pools = {
		UnoYellow = true,
	},
	config = {
		extra = {},
	},
	cost = 5,
	can_use = function(self, card)
		return true
	end,
	use = function(self, card, area, copier)
		local wcard
		wcard = Judgement.playing_card(G.deck, "5", "Diamonds", SMODS.poll_enhancement({ guaranteed = true }))
		if G.GAME.used_vouchers["v_jud_dice"] == true then
			SMODS.Stickers["cry_rigged"]:apply(wcard, true)
		end
	end,
	in_pool = function(self, wawa, wawa2)
		if G.GAME.flipped == false or G.GAME.used_vouchers["v_jud_flip"] == true then
			return true
		end
		return false
	end,
})

SMODS.Consumable({
	key = "unofive_c",
	set = "uno",
	atlas = "unoc",
	set_badges = function(self, card, badges)
		badges[#badges + 1] = create_badge("Art by: superb_thing", Judgement.C.UNOC, G.C.BLACK, 0.8)
	end,
	no_collection = true,
	pos = {
		x = 2,
		y = 1,
	},
	config = {
		extra = {},
	},
	Pools = {
		UnoGreen = true,
	},
	cost = 5,
	can_use = function(self, card)
		return true
	end,
	use = function(self, card, area, copier)
		local wcard
		wcard = Judgement.playing_card(G.deck, "5", "Clubs", SMODS.poll_enhancement({ guaranteed = true }))
		if G.GAME.used_vouchers["v_jud_dice"] == true then
			SMODS.Stickers["cry_rigged"]:apply(wcard, true)
		end
	end,
	in_pool = function(self, wawa, wawa2)
		if G.GAME.flipped == false or G.GAME.used_vouchers["v_jud_flip"] == true then
			return true
		end
		return false
	end,
})

SMODS.Consumable({
	key = "unofive_d",
	set = "uno",
	atlas = "unoc",
	set_badges = function(self, card, badges)
		badges[#badges + 1] = create_badge("Art by: superb_thing", Judgement.C.UNOC, G.C.BLACK, 0.8)
	end,
	no_collection = true,
	pos = {
		x = 3,
		y = 1,
	},
	config = {
		extra = {},
	},
	Pools = {
		UnoBlue = true,
	},
	cost = 5,
	can_use = function(self, card)
		return true
	end,
	use = function(self, card, area, copier)
		local wcard
		wcard = Judgement.playing_card(G.deck, "5", "Spades", SMODS.poll_enhancement({ guaranteed = true }))
		if G.GAME.used_vouchers["v_jud_dice"] == true then
			SMODS.Stickers["cry_rigged"]:apply(wcard, true)
		end
	end,
	in_pool = function(self, wawa, wawa2)
		if G.GAME.flipped == false or G.GAME.used_vouchers["v_jud_flip"] == true then
			return true
		end
		return false
	end,
})

SMODS.Consumable({
	key = "unosix_a",
	set = "uno",
	atlas = "unoc",
	set_badges = function(self, card, badges)
		badges[#badges + 1] = create_badge("Art by: superb_thing", Judgement.C.UNOC, G.C.BLACK, 0.8)
	end,
	pos = {
		x = 4,
		y = 1,
	},
	config = {
		extra = {},
	},
	Pools = {
		UnoRed = true,
	},
	cost = 5,
	can_use = function(self, card)
		return true
	end,
	use = function(self, card, area, copier)
		local wcard
		wcard = Judgement.playing_card(G.deck, "6", "Hearts", SMODS.poll_enhancement({ guaranteed = true }))
		if G.GAME.used_vouchers["v_jud_dice"] == true then
			SMODS.Stickers["cry_rigged"]:apply(wcard, true)
		end
	end,
	in_pool = function(self, wawa, wawa2)
		if G.GAME.flipped == false or G.GAME.used_vouchers["v_jud_flip"] == true then
			return true
		end
		return false
	end,
})

SMODS.Consumable({
	key = "unosix_b",
	set = "uno",
	atlas = "unoc",
	set_badges = function(self, card, badges)
		badges[#badges + 1] = create_badge("Art by: superb_thing", Judgement.C.UNOC, G.C.BLACK, 0.8)
	end,
	no_collection = true,
	pos = {
		x = 5,
		y = 1,
	},
	Pools = {
		UnoYellow = true,
	},
	config = {
		extra = {},
	},
	cost = 5,
	can_use = function(self, card)
		return true
	end,
	use = function(self, card, area, copier)
		local wcard
		wcard = Judgement.playing_card(G.deck, "6", "Diamonds", SMODS.poll_enhancement({ guaranteed = true }))
		if G.GAME.used_vouchers["v_jud_dice"] == true then
			SMODS.Stickers["cry_rigged"]:apply(wcard, true)
		end
	end,
	in_pool = function(self, wawa, wawa2)
		if G.GAME.flipped == false or G.GAME.used_vouchers["v_jud_flip"] == true then
			return true
		end
		return false
	end,
})

SMODS.Consumable({
	key = "unosix_c",
	set = "uno",
	atlas = "unoc",
	set_badges = function(self, card, badges)
		badges[#badges + 1] = create_badge("Art by: superb_thing", Judgement.C.UNOC, G.C.BLACK, 0.8)
	end,
	no_collection = true,
	pos = {
		x = 6,
		y = 1,
	},
	config = {
		extra = {},
	},
	Pools = {
		UnoGreen = true,
	},
	cost = 5,
	can_use = function(self, card)
		return true
	end,
	use = function(self, card, area, copier)
		local wcard
		wcard = Judgement.playing_card(G.deck, "6", "Clubs", SMODS.poll_enhancement({ guaranteed = true }))
		if G.GAME.used_vouchers["v_jud_dice"] == true then
			SMODS.Stickers["cry_rigged"]:apply(wcard, true)
		end
	end,
	in_pool = function(self, wawa, wawa2)
		if G.GAME.flipped == false or G.GAME.used_vouchers["v_jud_flip"] == true then
			return true
		end
		return false
	end,
})

SMODS.Consumable({
	key = "unosix_d",
	set = "uno",
	atlas = "unoc",
	set_badges = function(self, card, badges)
		badges[#badges + 1] = create_badge("Art by: superb_thing", Judgement.C.UNOC, G.C.BLACK, 0.8)
	end,
	no_collection = true,
	pos = {
		x = 7,
		y = 1,
	},
	config = {
		extra = {},
	},
	Pools = {
		UnoBlue = true,
	},
	cost = 5,
	can_use = function(self, card)
		return true
	end,
	use = function(self, card, area, copier)
		local wcard
		wcard = Judgement.playing_card(G.deck, "6", "Spades", SMODS.poll_enhancement({ guaranteed = true }))
		if G.GAME.used_vouchers["v_jud_dice"] == true then
			SMODS.Stickers["cry_rigged"]:apply(wcard, true)
		end
	end,
	in_pool = function(self, wawa, wawa2)
		if G.GAME.flipped == false or G.GAME.used_vouchers["v_jud_flip"] == true then
			return true
		end
		return false
	end,
})

SMODS.Consumable({
	key = "unoseven_a",
	set = "uno",
	atlas = "unoc",
	set_badges = function(self, card, badges)
		badges[#badges + 1] = create_badge("Art by: superb_thing", Judgement.C.UNOC, G.C.BLACK, 0.8)
	end,
	pos = {
		x = 8,
		y = 1,
	},
	Pools = {
		UnoRed = true,
	},
	config = {
		extra = {},
	},
	cost = 5,
	can_use = function(self, card)
		return true
	end,
	use = function(self, card, area, copier)
		local wcard
		wcard = Judgement.playing_card(G.deck, "7", "Hearts", SMODS.poll_enhancement({ guaranteed = true }))
		if G.GAME.used_vouchers["v_jud_dice"] == true then
			SMODS.Stickers["cry_rigged"]:apply(wcard, true)
		end
	end,
	in_pool = function(self, wawa, wawa2)
		if G.GAME.flipped == false or G.GAME.used_vouchers["v_jud_flip"] == true then
			return true
		end
		return false
	end,
})

SMODS.Consumable({
	key = "unoseven_b",
	set = "uno",
	atlas = "unoc",
	set_badges = function(self, card, badges)
		badges[#badges + 1] = create_badge("Art by: superb_thing", Judgement.C.UNOC, G.C.BLACK, 0.8)
	end,
	no_collection = true,
	pos = {
		x = 9,
		y = 1,
	},
	Pools = {
		UnoYellow = true,
	},
	config = {
		extra = {},
	},
	cost = 5,
	can_use = function(self, card)
		return true
	end,
	use = function(self, card, area, copier)
		local wcard
		wcard = Judgement.playing_card(G.deck, "7", "Diamonds", SMODS.poll_enhancement({ guaranteed = true }))
		if G.GAME.used_vouchers["v_jud_dice"] == true then
			SMODS.Stickers["cry_rigged"]:apply(wcard, true)
		end
	end,
	in_pool = function(self, wawa, wawa2)
		if G.GAME.flipped == false or G.GAME.used_vouchers["v_jud_flip"] == true then
			return true
		end
		return false
	end,
})

SMODS.Consumable({
	key = "unoseven_c",
	set = "uno",
	atlas = "unoc",
	set_badges = function(self, card, badges)
		badges[#badges + 1] = create_badge("Art by: superb_thing", Judgement.C.UNOC, G.C.BLACK, 0.8)
	end,
	no_collection = true,
	pos = {
		x = 10,
		y = 1,
	},
	config = {
		extra = {},
	},
	Pools = {
		UnoGreen = true,
	},
	cost = 5,
	can_use = function(self, card)
		return true
	end,
	use = function(self, card, area, copier)
		local wcard
		wcard = Judgement.playing_card(G.deck, "7", "Clubs", SMODS.poll_enhancement({ guaranteed = true }))
		if G.GAME.used_vouchers["v_jud_dice"] == true then
			SMODS.Stickers["cry_rigged"]:apply(wcard, true)
		end
	end,
	in_pool = function(self, wawa, wawa2)
		if G.GAME.flipped == false or G.GAME.used_vouchers["v_jud_flip"] == true then
			return true
		end
		return false
	end,
})

SMODS.Consumable({
	key = "unoseven_d",
	set = "uno",
	atlas = "unoc",
	set_badges = function(self, card, badges)
		badges[#badges + 1] = create_badge("Art by: superb_thing", Judgement.C.UNOC, G.C.BLACK, 0.8)
	end,
	no_collection = true,
	pos = {
		x = 11,
		y = 1,
	},
	config = {
		extra = {},
	},
	Pools = {
		UnoBlue = true,
	},
	cost = 5,
	can_use = function(self, card)
		return true
	end,
	use = function(self, card, area, copier)
		local wcard
		wcard = Judgement.playing_card(G.deck, "7", "Spades", SMODS.poll_enhancement({ guaranteed = true }))
		if G.GAME.used_vouchers["v_jud_dice"] == true then
			SMODS.Stickers["cry_rigged"]:apply(wcard, true)
		end
	end,
	in_pool = function(self, wawa, wawa2)
		if G.GAME.flipped == false or G.GAME.used_vouchers["v_jud_flip"] == true then
			return true
		end
		return false
	end,
})

SMODS.Consumable({
	key = "unoeight_a",
	set = "uno",
	atlas = "unoc",
	set_badges = function(self, card, badges)
		badges[#badges + 1] = create_badge("Art by: superb_thing", Judgement.C.UNOC, G.C.BLACK, 0.8)
	end,
	pos = {
		x = 12,
		y = 1,
	},
	Pools = {
		UnoRed = true,
	},
	config = {
		extra = {},
	},
	cost = 5,
	can_use = function(self, card)
		return true
	end,
	use = function(self, card, area, copier)
		local wcard
		wcard = Judgement.playing_card(G.deck, "8", "Hearts", SMODS.poll_enhancement({ guaranteed = true }))
		if G.GAME.used_vouchers["v_jud_dice"] == true then
			SMODS.Stickers["cry_rigged"]:apply(wcard, true)
		end
	end,
	in_pool = function(self, wawa, wawa2)
		if G.GAME.flipped == false or G.GAME.used_vouchers["v_jud_flip"] == true then
			return true
		end
		return false
	end,
})

SMODS.Consumable({
	key = "unoeight_b",
	set = "uno",
	atlas = "unoc",
	set_badges = function(self, card, badges)
		badges[#badges + 1] = create_badge("Art by: superb_thing", Judgement.C.UNOC, G.C.BLACK, 0.8)
	end,
	no_collection = true,
	pos = {
		x = 13,
		y = 1,
	},
	Pools = {
		UnoYellow = true,
	},
	config = {
		extra = {},
	},
	cost = 5,
	can_use = function(self, card)
		return true
	end,
	use = function(self, card, area, copier)
		local wcard
		wcard = Judgement.playing_card(G.deck, "8", "Diamonds", SMODS.poll_enhancement({ guaranteed = true }))
		if G.GAME.used_vouchers["v_jud_dice"] == true then
			SMODS.Stickers["cry_rigged"]:apply(wcard, true)
		end
	end,
	in_pool = function(self, wawa, wawa2)
		if G.GAME.flipped == false or G.GAME.used_vouchers["v_jud_flip"] == true then
			return true
		end
		return false
	end,
})

SMODS.Consumable({
	key = "unoeight_c",
	set = "uno",
	atlas = "unoc",
	set_badges = function(self, card, badges)
		badges[#badges + 1] = create_badge("Art by: superb_thing", Judgement.C.UNOC, G.C.BLACK, 0.8)
	end,
	no_collection = true,
	pos = {
		x = 14,
		y = 1,
	},
	config = {
		extra = {},
	},
	Pools = {
		UnoGreen = true,
	},
	cost = 5,
	can_use = function(self, card)
		return true
	end,
	use = function(self, card, area, copier)
		local wcard
		wcard = Judgement.playing_card(G.deck, "8", "Clubs", SMODS.poll_enhancement({ guaranteed = true }))
		if G.GAME.used_vouchers["v_jud_dice"] == true then
			SMODS.Stickers["cry_rigged"]:apply(wcard, true)
		end
	end,
	in_pool = function(self, wawa, wawa2)
		if G.GAME.flipped == false or G.GAME.used_vouchers["v_jud_flip"] == true then
			return true
		end
		return false
	end,
})

SMODS.Consumable({
	key = "unoeight_d",
	set = "uno",
	atlas = "unoc",
	set_badges = function(self, card, badges)
		badges[#badges + 1] = create_badge("Art by: superb_thing", Judgement.C.UNOC, G.C.BLACK, 0.8)
	end,
	no_collection = true,
	pos = {
		x = 15,
		y = 1,
	},
	config = {
		extra = {},
	},
	Pools = {
		UnoBlue = true,
	},
	cost = 5,
	can_use = function(self, card)
		return true
	end,
	use = function(self, card, area, copier)
		local wcard
		wcard = Judgement.playing_card(G.deck, "8", "Spades", SMODS.poll_enhancement({ guaranteed = true }))
		if G.GAME.used_vouchers["v_jud_dice"] == true then
			SMODS.Stickers["cry_rigged"]:apply(wcard, true)
		end
	end,
	in_pool = function(self, wawa, wawa2)
		if G.GAME.flipped == false or G.GAME.used_vouchers["v_jud_flip"] == true then
			return true
		end
		return false
	end,
})

SMODS.Consumable({
	key = "unonine_a",
	set = "uno",
	atlas = "unoc",
	set_badges = function(self, card, badges)
		badges[#badges + 1] = create_badge("Art by: superb_thing", Judgement.C.UNOC, G.C.BLACK, 0.8)
	end,
	pos = {
		x = 0,
		y = 2,
	},
	Pools = {
		UnoRed = true,
	},
	config = {
		extra = {},
	},
	cost = 5,
	can_use = function(self, card)
		return true
	end,
	use = function(self, card, area, copier)
		local wcard
		wcard = Judgement.playing_card(G.deck, "9", "Hearts", SMODS.poll_enhancement({ guaranteed = true }))
		if G.GAME.used_vouchers["v_jud_dice"] == true then
			SMODS.Stickers["cry_rigged"]:apply(wcard, true)
		end
	end,
	in_pool = function(self, wawa, wawa2)
		if G.GAME.flipped == false or G.GAME.used_vouchers["v_jud_flip"] == true then
			return true
		end
		return false
	end,
})

SMODS.Consumable({
	key = "unonine_b",
	set = "uno",
	atlas = "unoc",
	set_badges = function(self, card, badges)
		badges[#badges + 1] = create_badge("Art by: superb_thing", Judgement.C.UNOC, G.C.BLACK, 0.8)
	end,
	no_collection = true,
	pos = {
		x = 1,
		y = 2,
	},
	Pools = {
		UnoYellow = true,
	},
	config = {
		extra = {},
	},
	cost = 5,
	can_use = function(self, card)
		return true
	end,
	use = function(self, card, area, copier)
		local wcard
		wcard = Judgement.playing_card(G.deck, "9", "Diamonds", SMODS.poll_enhancement({ guaranteed = true }))
		if G.GAME.used_vouchers["v_jud_dice"] == true then
			SMODS.Stickers["cry_rigged"]:apply(wcard, true)
		end
	end,
	in_pool = function(self, wawa, wawa2)
		if G.GAME.flipped == false or G.GAME.used_vouchers["v_jud_flip"] == true then
			return true
		end
		return false
	end,
})

SMODS.Consumable({
	key = "unonine_c",
	set = "uno",
	atlas = "unoc",
	set_badges = function(self, card, badges)
		badges[#badges + 1] = create_badge("Art by: superb_thing", Judgement.C.UNOC, G.C.BLACK, 0.8)
	end,
	no_collection = true,
	pos = {
		x = 2,
		y = 2,
	},
	Pools = {
		UnoGreen = true,
	},
	config = {
		extra = {},
	},
	cost = 5,
	can_use = function(self, card)
		return true
	end,
	use = function(self, card, area, copier)
		local wcard
		wcard = Judgement.playing_card(G.deck, "9", "Clubs", SMODS.poll_enhancement({ guaranteed = true }))
		if G.GAME.used_vouchers["v_jud_dice"] == true then
			SMODS.Stickers["cry_rigged"]:apply(wcard, true)
		end
	end,
	in_pool = function(self, wawa, wawa2)
		if G.GAME.flipped == false or G.GAME.used_vouchers["v_jud_flip"] == true then
			return true
		end
		return false
	end,
})

SMODS.Consumable({
	key = "unonine_d",
	set = "uno",
	atlas = "unoc",
	set_badges = function(self, card, badges)
		badges[#badges + 1] = create_badge("Art by: superb_thing", Judgement.C.UNOC, G.C.BLACK, 0.8)
	end,
	no_collection = true,
	pos = {
		x = 3,
		y = 2,
	},
	config = {
		extra = {},
	},
	Pools = {
		UnoBlue = true,
	},
	cost = 5,
	can_use = function(self, card)
		return true
	end,
	use = function(self, card, area, copier)
		local wcard
		wcard = Judgement.playing_card(G.deck, "9", "Spades", SMODS.poll_enhancement({ guaranteed = true }))
		if G.GAME.used_vouchers["v_jud_dice"] == true then
			SMODS.Stickers["cry_rigged"]:apply(wcard, true)
		end
	end,
	in_pool = function(self, wawa, wawa2)
		if G.GAME.flipped == false or G.GAME.used_vouchers["v_jud_flip"] == true then
			return true
		end
		return false
	end,
})

SMODS.Consumable({
	key = "unoten_a",
	set = "uno",
	atlas = "unoc",
	set_badges = function(self, card, badges)
		badges[#badges + 1] = create_badge("Art by: superb_thing", Judgement.C.UNOC, G.C.BLACK, 0.8)
	end,
	pos = {
		x = 4,
		y = 2,
	},
	Pools = {
		UnoRed = true,
	},
	config = {
		extra = {},
	},
	cost = 5,
	can_use = function(self, card)
		return true
	end,
	use = function(self, card, area, copier)
		local wcard
		wcard = Judgement.playing_card(G.deck, "10", "Hearts", SMODS.poll_enhancement({ guaranteed = true }))
		if G.GAME.used_vouchers["v_jud_dice"] == true then
			SMODS.Stickers["cry_rigged"]:apply(wcard, true)
		end
	end,
	in_pool = function(self, wawa, wawa2)
		if G.GAME.flipped == false or G.GAME.used_vouchers["v_jud_flip"] == true then
			return true
		end
		return false
	end,
})

SMODS.Consumable({
	key = "unoten_b",
	set = "uno",
	atlas = "unoc",
	set_badges = function(self, card, badges)
		badges[#badges + 1] = create_badge("Art by: superb_thing", Judgement.C.UNOC, G.C.BLACK, 0.8)
	end,
	no_collection = true,
	pos = {
		x = 5,
		y = 2,
	},
	config = {
		extra = {},
	},
	Pools = {
		UnoYellow = true,
	},
	cost = 5,
	can_use = function(self, card)
		return true
	end,
	use = function(self, card, area, copier)
		local wcard
		wcard = Judgement.playing_card(G.deck, "10", "Diamonds", SMODS.poll_enhancement({ guaranteed = true }))
		if G.GAME.used_vouchers["v_jud_dice"] == true then
			SMODS.Stickers["cry_rigged"]:apply(wcard, true)
		end
	end,
	in_pool = function(self, wawa, wawa2)
		if G.GAME.flipped == false or G.GAME.used_vouchers["v_jud_flip"] == true then
			return true
		end
		return false
	end,
})

SMODS.Consumable({
	key = "unoten_c",
	set = "uno",
	atlas = "unoc",
	set_badges = function(self, card, badges)
		badges[#badges + 1] = create_badge("Art by: superb_thing", Judgement.C.UNOC, G.C.BLACK, 0.8)
	end,
	no_collection = true,
	pos = {
		x = 6,
		y = 2,
	},
	Pools = {
		UnoGreen = true,
	},
	config = {
		extra = {},
	},
	cost = 5,
	can_use = function(self, card)
		return true
	end,
	use = function(self, card, area, copier)
		local wcard
		wcard = Judgement.playing_card(G.deck, "10", "Clubs", SMODS.poll_enhancement({ guaranteed = true }))
		if G.GAME.used_vouchers["v_jud_dice"] == true then
			SMODS.Stickers["cry_rigged"]:apply(wcard, true)
		end
	end,
	in_pool = function(self, wawa, wawa2)
		if G.GAME.flipped == false or G.GAME.used_vouchers["v_jud_flip"] == true then
			return true
		end
		return false
	end,
})

SMODS.Consumable({
	key = "unoten_d",
	set = "uno",
	atlas = "unoc",
	set_badges = function(self, card, badges)
		badges[#badges + 1] = create_badge("Art by: superb_thing", Judgement.C.UNOC, G.C.BLACK, 0.8)
	end,
	no_collection = true,
	pos = {
		x = 7,
		y = 2,
	},
	config = {
		extra = {},
	},
	Pools = {
		UnoBlue = true,
	},
	cost = 5,
	can_use = function(self, card)
		return true
	end,
	use = function(self, card, area, copier)
		local wcard
		wcard = Judgement.playing_card(G.deck, "10", "Spades", SMODS.poll_enhancement({ guaranteed = true }))
		if G.GAME.used_vouchers["v_jud_dice"] == true then
			SMODS.Stickers["cry_rigged"]:apply(wcard, true)
		end
	end,
	in_pool = function(self, wawa, wawa2)
		if G.GAME.flipped == false or G.GAME.used_vouchers["v_jud_flip"] == true then
			return true
		end
		return false
	end,
})

-- Finally thats done ;-;
--Thers more. NOOOOOOOOOOOOOOO

SMODS.Consumable({
	key = "unodrawtwo_a",
	set = "uno",
	atlas = "unoc",
	set_badges = function(self, card, badges)
		badges[#badges + 1] = create_badge("Art by: superb_thing", Judgement.C.UNOC, G.C.BLACK, 0.8)
	end,
	pos = {
		x = 8,
		y = 3,
	},
	loc_vars = function(self, info_queue, center)
		return {
			vars = {
				self.config.max_highlighted,
			},
		}
	end,
	Pools = {
		UnoRed = true,
	},
	config = { max_highlighted = 1 },
	cost = 5,
	use = function(self, card, area, copier)
		for i, card in pairs(G.hand.highlighted) do
			card:flip()
			G.E_MANAGER:add_event(Event({
				trigger = "before",
				delay = 0.2,
				func = function()
					SMODS.modify_rank(card, 2)
					SMODS.change_base(card, "Hearts")
					return true
				end,
			}))
			delay(0.5)
			G.E_MANAGER:add_event(Event({
				trigger = "after",
				delay = 0.2,
				func = function()
					G.hand:unhighlight_all()
					card:flip()
					return true
				end,
			}))
		end
		if G.GAME.used_vouchers["v_jud_allwild"] == true then
			local wcard
			local _suit, _rank =
				pseudorandom_element(SMODS.Suits, pseudoseed("unowild")).card_key,
				pseudorandom_element(Judgement.facepool(), pseudoseed("unowild")).card_key
			wcard = Judgement.playing_card(G.deck, _rank, _suit, SMODS.poll_enhancement({ guaranteed = true }))
			if G.GAME.used_vouchers["v_jud_dice"] == true then
				SMODS.Stickers["cry_rigged"]:apply(wcard, true)
			end
		end
	end,
	in_pool = function(self, wawa, wawa2)
		if G.GAME.flipped == false or G.GAME.used_vouchers["v_jud_flip"] == true then
			return true
		end
		return false
	end,
})

SMODS.Consumable({
	key = "unodrawtwo_b",
	set = "uno",
	atlas = "unoc",
	set_badges = function(self, card, badges)
		badges[#badges + 1] = create_badge("Art by: superb_thing", Judgement.C.UNOC, G.C.BLACK, 0.8)
	end,
	no_collection = true,
	pos = {
		x = 9,
		y = 3,
	},
	loc_vars = function(self, info_queue, center)
		return {
			vars = {
				self.config.max_highlighted,
			},
		}
	end,
	Pools = {
		UnoYellow = true,
	},
	config = { max_highlighted = 1 },
	cost = 5,
	use = function(self, card, area, copier)
		for i, card in pairs(G.hand.highlighted) do
			card:flip()
			G.E_MANAGER:add_event(Event({
				trigger = "before",
				delay = 0.2,
				func = function()
					SMODS.modify_rank(card, 2)
					SMODS.change_base(card, "Diamonds")
					return true
				end,
			}))
			delay(0.5)
			G.E_MANAGER:add_event(Event({
				trigger = "after",
				delay = 0.2,
				func = function()
					G.hand:unhighlight_all()
					card:flip()
					return true
				end,
			}))
		end
		if G.GAME.used_vouchers["v_jud_allwild"] == true then
			local wcard
			local _suit, _rank =
				pseudorandom_element(SMODS.Suits, pseudoseed("unowild")).card_key,
				pseudorandom_element(Judgement.facepool(), pseudoseed("unowild")).card_key
			wcard = Judgement.playing_card(G.deck, _rank, _suit, SMODS.poll_enhancement({ guaranteed = true }))
			if G.GAME.used_vouchers["v_jud_dice"] == true then
				SMODS.Stickers["cry_rigged"]:apply(wcard, true)
			end
		end
	end,
	in_pool = function(self, wawa, wawa2)
		if G.GAME.flipped == false or G.GAME.used_vouchers["v_jud_flip"] == true then
			return true
		end
		return false
	end,
})

SMODS.Consumable({
	key = "unodrawtwo_c",
	set = "uno",
	atlas = "unoc",
	set_badges = function(self, card, badges)
		badges[#badges + 1] = create_badge("Art by: superb_thing", Judgement.C.UNOC, G.C.BLACK, 0.8)
	end,
	no_collection = true,
	pos = {
		x = 10,
		y = 3,
	},
	config = { max_highlighted = 1 },
	Pools = {
		UnoGreen = true,
	},
	loc_vars = function(self, info_queue, center)
		return {
			vars = {
				self.config.max_highlighted,
			},
		}
	end,
	cost = 5,
	use = function(self, card, area, copier)
		for i, card in pairs(G.hand.highlighted) do
			card:flip()
			G.E_MANAGER:add_event(Event({
				trigger = "before",
				delay = 0.2,
				func = function()
					SMODS.modify_rank(card, 2)
					SMODS.change_base(card, "Clubs")
					return true
				end,
			}))
			delay(0.5)
			G.E_MANAGER:add_event(Event({
				trigger = "after",
				delay = 0.2,
				func = function()
					G.hand:unhighlight_all()
					card:flip()
					return true
				end,
			}))
		end
		if G.GAME.used_vouchers["v_jud_allwild"] == true then
			local wcard
			local _suit, _rank =
				pseudorandom_element(SMODS.Suits, pseudoseed("unowild")).card_key,
				pseudorandom_element(Judgement.facepool(), pseudoseed("unowild")).card_key
			wcard = Judgement.playing_card(G.deck, _rank, _suit, SMODS.poll_enhancement({ guaranteed = true }))
			if G.GAME.used_vouchers["v_jud_dice"] == true then
				SMODS.Stickers["cry_rigged"]:apply(wcard, true)
			end
		end
	end,
	in_pool = function(self, wawa, wawa2)
		if G.GAME.flipped == false or G.GAME.used_vouchers["v_jud_flip"] == true then
			return true
		end
		return false
	end,
})

SMODS.Consumable({
	key = "unodrawtwo_d",
	set = "uno",
	atlas = "unoc",
	set_badges = function(self, card, badges)
		badges[#badges + 1] = create_badge("Art by: superb_thing", Judgement.C.UNOC, G.C.BLACK, 0.8)
	end,
	no_collection = true,
	pos = {
		x = 11,
		y = 3,
	},
	loc_vars = function(self, info_queue, center)
		return {
			vars = {
				self.config.max_highlighted,
			},
		}
	end,
	Pools = {
		UnoBlue = true,
	},
	config = { max_highlighted = 1 },
	cost = 5,
	use = function(self, card, area, copier)
		for i, card in pairs(G.hand.highlighted) do
			card:flip()
			G.E_MANAGER:add_event(Event({
				trigger = "before",
				delay = 0.2,
				func = function()
					SMODS.modify_rank(card, 2)
					SMODS.change_base(card, "Spades")
					return true
				end,
			}))
			delay(0.5)
			G.E_MANAGER:add_event(Event({
				trigger = "after",
				delay = 0.2,
				func = function()
					G.hand:unhighlight_all()
					card:flip()
					return true
				end,
			}))
		end
		if G.GAME.used_vouchers["v_jud_allwild"] == true then
			local wcard
			local _suit, _rank =
				pseudorandom_element(SMODS.Suits, pseudoseed("unowild")).card_key,
				pseudorandom_element(Judgement.facepool(), pseudoseed("unowild")).card_key
			wcard = Judgement.playing_card(G.deck, _rank, _suit, SMODS.poll_enhancement({ guaranteed = true }))
			if G.GAME.used_vouchers["v_jud_dice"] == true then
				SMODS.Stickers["cry_rigged"]:apply(wcard, true)
			end
		end
	end,
	in_pool = function(self, wawa, wawa2)
		if G.GAME.flipped == false or G.GAME.used_vouchers["v_jud_flip"] == true then
			return true
		end
		return false
	end,
})

SMODS.Consumable({
	key = "unoskip_a",
	set = "uno",
	atlas = "unoc",
	set_badges = function(self, card, badges)
		badges[#badges + 1] = create_badge("Art by: superb_thing", Judgement.C.UNOC, G.C.BLACK, 0.8)
	end,
	pos = {
		x = 0,
		y = 3,
	},
	loc_vars = function(self, info_queue, center)
		return {
			vars = {
				self.config.blindreq,
			},
		}
	end,
	Pools = {
		UnoRed = true,
	},
	config = { blindreq = 0.9 },
	cost = 5,
	can_use = function(self, card)
		return G.GAME and G.GAME.blind and G.GAME.blind.in_blind
	end,
	use = function(self, card, area, copier)
		for i = 1, Judgement.suitcheck("Hearts", G.playing_cards) do
			G.GAME.blind.chips = G.GAME.blind.chips * self.config.blindreq
			G.GAME.blind.chip_text = number_format(G.GAME.blind.chips)
		end
		if G.GAME.used_vouchers["v_jud_allwild"] == true then
			local wcard
			local _suit, _rank =
				pseudorandom_element(SMODS.Suits, pseudoseed("unowild")).card_key,
				pseudorandom_element(Judgement.facepool(), pseudoseed("unowild")).card_key
			wcard = Judgement.playing_card(G.deck, _rank, _suit, SMODS.poll_enhancement({ guaranteed = true }))
			if G.GAME.used_vouchers["v_jud_dice"] == true then
				SMODS.Stickers["cry_rigged"]:apply(wcard, true)
			end
		end
	end,
	in_pool = function(self, wawa, wawa2)
		if G.GAME.flipped == false or G.GAME.used_vouchers["v_jud_flip"] == true then
			return true
		end
		return false
	end,
})

SMODS.Consumable({
	key = "unoskip_b",
	set = "uno",
	atlas = "unoc",
	set_badges = function(self, card, badges)
		badges[#badges + 1] = create_badge("Art by: superb_thing", Judgement.C.UNOC, G.C.BLACK, 0.8)
	end,
	no_collection = true,
	pos = {
		x = 1,
		y = 3,
	},
	loc_vars = function(self, info_queue, center)
		return {
			vars = {
				self.config.blindreq,
			},
		}
	end,
	Pools = {
		UnoYellow = true,
	},
	config = { blindreq = 0.9 },
	cost = 5,
	can_use = function(self, card)
		return G.GAME and G.GAME.blind and G.GAME.blind.in_blind
	end,
	use = function(self, card, area, copier)
		for i = 1, Judgement.suitcheck("Diamonds", G.playing_cards) do
			G.GAME.blind.chips = G.GAME.blind.chips * self.config.blindreq
			G.GAME.blind.chip_text = number_format(G.GAME.blind.chips)
		end
		if G.GAME.used_vouchers["v_jud_allwild"] == true then
			local _suit, _rank =
				pseudorandom_element(SMODS.Suits, pseudoseed("unowild")).card_key,
				pseudorandom_element(Judgement.facepool(), pseudoseed("unowild")).card_key
			local wcard = Judgement.playing_card(G.deck, _rank, _suit, SMODS.poll_enhancement({ guaranteed = true }))
			if G.GAME.used_vouchers["v_jud_dice"] == true then
				SMODS.Stickers["cry_rigged"]:apply(wcard, true)
			end
		end
	end,
	in_pool = function(self, wawa, wawa2)
		if G.GAME.flipped == false or G.GAME.used_vouchers["v_jud_flip"] == true then
			return true
		end
		return false
	end,
})

SMODS.Consumable({
	key = "unoskip_c",
	set = "uno",
	atlas = "unoc",
	set_badges = function(self, card, badges)
		badges[#badges + 1] = create_badge("Art by: superb_thing", Judgement.C.UNOC, G.C.BLACK, 0.8)
	end,
	no_collection = true,
	pos = {
		x = 2,
		y = 3,
	},
	loc_vars = function(self, info_queue, center)
		return {
			vars = {
				self.config.blindreq,
			},
		}
	end,
	config = { blindreq = 0.9 },
	Pools = {
		UnoGreen = true,
	},
	cost = 5,
	can_use = function(self, card)
		return G.GAME and G.GAME.blind and G.GAME.blind.in_blind
	end,
	use = function(self, card, area, copier)
		for i = 1, Judgement.suitcheck("Clubs", G.playing_cards) do
			G.GAME.blind.chips = G.GAME.blind.chips * self.config.blindreq
			G.GAME.blind.chip_text = number_format(G.GAME.blind.chips)
		end
		if G.GAME.used_vouchers["v_jud_allwild"] == true then
			local _suit, _rank =
				pseudorandom_element(SMODS.Suits, pseudoseed("unowild")).card_key,
				pseudorandom_element(Judgement.facepool(), pseudoseed("unowild")).card_key
			local wcard = Judgement.playing_card(G.deck, _rank, _suit, SMODS.poll_enhancement({ guaranteed = true }))
			if G.GAME.used_vouchers["v_jud_dice"] == true then
				SMODS.Stickers["cry_rigged"]:apply(wcard, true)
			end
		end
	end,
	in_pool = function(self, wawa, wawa2)
		if G.GAME.flipped == false or G.GAME.used_vouchers["v_jud_flip"] == true then
			return true
		end
		return false
	end,
})

SMODS.Consumable({
	key = "unoskip_d",
	set = "uno",
	atlas = "unoc",
	set_badges = function(self, card, badges)
		badges[#badges + 1] = create_badge("Art by: superb_thing", Judgement.C.UNOC, G.C.BLACK, 0.8)
	end,
	no_collection = true,
	pos = {
		x = 3,
		y = 3,
	},
	loc_vars = function(self, info_queue, center)
		return {
			vars = {
				self.config.blindreq,
			},
		}
	end,
	Pools = {
		UnoBlue = true,
	},
	config = { blindreq = 0.9 },
	cost = 5,
	can_use = function(self, card)
		return G.GAME and G.GAME.blind and G.GAME.blind.in_blind
	end,
	use = function(self, card, area, copier)
		for i = 1, Judgement.suitcheck("Spades", G.playing_cards) do
			G.GAME.blind.chips = G.GAME.blind.chips * self.config.blindreq
			G.GAME.blind.chip_text = number_format(G.GAME.blind.chips)
		end
		if G.GAME.used_vouchers["v_jud_allwild"] == true then
			local _suit, _rank =
				pseudorandom_element(SMODS.Suits, pseudoseed("unowild")).card_key,
				pseudorandom_element(Judgement.facepool(), pseudoseed("unowild")).card_key
			local wcard = Judgement.playing_card(G.deck, _rank, _suit, SMODS.poll_enhancement({ guaranteed = true }))
			if G.GAME.used_vouchers["v_jud_dice"] == true then
				SMODS.Stickers["cry_rigged"]:apply(wcard, true)
			end
		end
	end,
	in_pool = function(self, wawa, wawa2)
		if G.GAME.flipped == false or G.GAME.used_vouchers["v_jud_flip"] == true then
			return true
		end
		return false
	end,
})

SMODS.Consumable({
	key = "unoreverse_a",
	set = "uno",
	atlas = "unoc",
	set_badges = function(self, card, badges)
		badges[#badges + 1] = create_badge("Art by: superb_thing", Judgement.C.UNOC, G.C.BLACK, 0.8)
	end,
	pos = {
		x = 4,
		y = 3,
	},
	Pools = {
		UnoRed = true,
	},
	loc_vars = function(self, info_queue, center)
		return {
			vars = {
				self.config.add,
			},
		}
	end,
	config = { add = 1 },
	cost = 5,
	can_use = function(self, card)
		return G.GAME and G.GAME.blind and G.GAME.blind.in_blind
	end,
	use = function(self, card, area, copier)
		local _cards = {}
		for i = 1, #G.hand.cards do
			if G.hand.cards[i]:is_suit("Hearts") then
				_cards[#_cards + 1] = G.hand.cards[i]
			end
		end
		ease_hands_played(Judgement.find_lowest(_cards).base.id * self.config.add)
		if G.GAME.used_vouchers["v_jud_allwild"] == true then
			local _suit, _rank =
				pseudorandom_element(SMODS.Suits, pseudoseed("unowild")).card_key,
				pseudorandom_element(Judgement.facepool(), pseudoseed("unowild")).card_key
			local wcard = Judgement.playing_card(G.deck, _rank, _suit, SMODS.poll_enhancement({ guaranteed = true }))
			if G.GAME.used_vouchers["v_jud_dice"] == true then
				SMODS.Stickers["cry_rigged"]:apply(wcard, true)
			end
		end
	end,
	in_pool = function(self, wawa, wawa2)
		if G.GAME.flipped == false or G.GAME.used_vouchers["v_jud_flip"] == true then
			return true
		end
		return false
	end,
})

SMODS.Consumable({
	key = "unoreverse_b",
	set = "uno",
	atlas = "unoc",
	set_badges = function(self, card, badges)
		badges[#badges + 1] = create_badge("Art by: superb_thing", Judgement.C.UNOC, G.C.BLACK, 0.8)
	end,
	no_collection = true,
	pos = {
		x = 5,
		y = 3,
	},
	loc_vars = function(self, info_queue, center)
		return {
			vars = {
				self.config.add,
			},
		}
	end,
	Pools = {
		UnoYellow = true,
	},
	config = {},
	cost = 5,
	can_use = function(self, card)
		return G.GAME and G.GAME.blind and G.GAME.blind.in_blind
	end,
	use = function(self, card, area, copier)
		local _cards = {}
		for i = 1, #G.hand.cards do
			if G.hand.cards[i]:is_suit("Diamonds") then
				_cards[#_cards + 1] = G.hand.cards[i]
			end
		end
		ease_hands_played(Judgement.find_lowest(_cards).base.id)
		if G.GAME.used_vouchers["v_jud_allwild"] == true then
			local _suit, _rank =
				pseudorandom_element(SMODS.Suits, pseudoseed("unowild")).card_key,
				pseudorandom_element(Judgement.facepool(), pseudoseed("unowild")).card_key
			local wcard = Judgement.playing_card(G.deck, _rank, _suit, SMODS.poll_enhancement({ guaranteed = true }))
			if G.GAME.used_vouchers["v_jud_dice"] == true then
				SMODS.Stickers["cry_rigged"]:apply(wcard, true)
			end
		end
	end,
	in_pool = function(self, wawa, wawa2)
		if G.GAME.flipped == false or G.GAME.used_vouchers["v_jud_flip"] == true then
			return true
		end
		return false
	end,
})

SMODS.Consumable({
	key = "unoreverse_c",
	set = "uno",
	atlas = "unoc",
	set_badges = function(self, card, badges)
		badges[#badges + 1] = create_badge("Art by: superb_thing", Judgement.C.UNOC, G.C.BLACK, 0.8)
	end,
	no_collection = true,
	pos = {
		x = 6,
		y = 3,
	},
	loc_vars = function(self, info_queue, center)
		return {
			vars = {
				self.config.add,
			},
		}
	end,
	config = {},
	Pools = {
		UnoGreen = true,
	},
	cost = 5,
	can_use = function(self, card)
		return G.GAME and G.GAME.blind and G.GAME.blind.in_blind
	end,
	use = function(self, card, area, copier)
		local _cards = {}
		for i = 1, #G.hand.cards do
			if G.hand.cards[i]:is_suit("Clubs") then
				_cards[#_cards + 1] = G.hand.cards[i]
			end
		end
		ease_hands_played(Judgement.find_lowest(_cards).base.id)
		if G.GAME.used_vouchers["v_jud_allwild"] == true then
			local _suit, _rank =
				pseudorandom_element(SMODS.Suits, pseudoseed("unowild")).card_key,
				pseudorandom_element(Judgement.facepool(), pseudoseed("unowild")).card_key
			local wcard = Judgement.playing_card(G.deck, _rank, _suit, SMODS.poll_enhancement({ guaranteed = true }))
			if G.GAME.used_vouchers["v_jud_dice"] == true then
				SMODS.Stickers["cry_rigged"]:apply(wcard, true)
			end
		end
	end,
	in_pool = function(self, wawa, wawa2)
		if G.GAME.flipped == false or G.GAME.used_vouchers["v_jud_flip"] == true then
			return true
		end
		return false
	end,
})

SMODS.Consumable({
	key = "unoreverse_d",
	set = "uno",
	atlas = "unoc",
	set_badges = function(self, card, badges)
		badges[#badges + 1] = create_badge("Art by: superb_thing", Judgement.C.UNOC, G.C.BLACK, 0.8)
	end,
	no_collection = true,
	pos = {
		x = 7,
		y = 3,
	},
	loc_vars = function(self, info_queue, center)
		return {
			vars = {
				self.config.add,
			},
		}
	end,
	Pools = {
		UnoBlue = true,
	},
	config = {},
	cost = 5,
	can_use = function(self, card)
		return G.GAME and G.GAME.blind and G.GAME.blind.in_blind
	end,
	use = function(self, card, area, copier)
		local _cards = {}
		for i = 1, #G.hand.cards do
			if G.hand.cards[i]:is_suit("Spades") then
				_cards[#_cards + 1] = G.hand.cards[i]
			end
		end
		ease_hands_played(Judgement.find_lowest(_cards).base.id)
		if G.GAME.used_vouchers["v_jud_allwild"] == true then
			local wcard
			local _suit, _rank =
				pseudorandom_element(SMODS.Suits, pseudoseed("unowild")).card_key,
				pseudorandom_element(Judgement.facepool(), pseudoseed("unowild")).card_key
			wcard = Judgement.playing_card(G.deck, _rank, _suit, SMODS.poll_enhancement({ guaranteed = true }))
			if G.GAME.used_vouchers["v_jud_dice"] == true then
				SMODS.Stickers["cry_rigged"]:apply(wcard, true)
			end
		end
	end,
	in_pool = function(self, wawa, wawa2)
		if G.GAME.flipped == false or G.GAME.used_vouchers["v_jud_flip"] == true then
			return true
		end
		return false
	end,
})

SMODS.Consumable({
	key = "unowild",
	set = "uno",
	atlas = "unoc",
	set_badges = function(self, card, badges)
		badges[#badges + 1] = create_badge("Art by: superb_thing", Judgement.C.UNOC, G.C.BLACK, 0.8)
	end,
	pos = {
		x = 12,
		y = 3,
	},
	config = {},
	cost = 5,
	can_use = function(self, card)
		return true
	end,
	use = function(self, card, area, copier)
		local wcard
		local _suit, _rank =
			pseudorandom_element(SMODS.Suits, pseudoseed("unowild")).card_key,
			pseudorandom_element(Judgement.facepool(), pseudoseed("unowild")).card_key
		wcard = Judgement.playing_card(G.deck, _rank, _suit, SMODS.poll_enhancement({ guaranteed = true }))
		if G.GAME.used_vouchers["v_jud_dice"] == true then
			SMODS.Stickers["cry_rigged"]:apply(wcard, true)
		end
	end,
	in_pool = function(self, wawa, wawa2)
		if G.GAME.flipped == false or G.GAME.used_vouchers["v_jud_flip"] == true then
			return true
		end
		return false
	end,
})

SMODS.Consumable({
	key = "unowild_four",
	set = "uno",
	atlas = "unoc",
	set_badges = function(self, card, badges)
		badges[#badges + 1] = create_badge("Art by: superb_thing", Judgement.C.UNOC, G.C.BLACK, 0.8)
	end,
	pos = {
		x = 13,
		y = 3,
	},
	loc_vars = function(self, info_queue, center)
		return {
			vars = {
				self.config.max,
			},
		}
	end,
	config = { max = 4 },
	cost = 5,
	can_use = function(self, card)
		return true
	end,
	use = function(self, card, area, copier)
		local wcard
		for i = 1, self.config.max do
			local _suit, _rank =
				pseudorandom_element(SMODS.Suits, pseudoseed("unowild")).card_key,
				pseudorandom_element(Judgement.facepool(), pseudoseed("unowild")).card_key
			wcard = Judgement.playing_card(G.deck, _rank, _suit, SMODS.poll_enhancement({ guaranteed = true }))
			if G.GAME.used_vouchers["v_jud_dice"] == true then
				SMODS.Stickers["cry_rigged"]:apply(wcard, true)
			end
		end
	end,
	in_pool = function(self, wawa, wawa2)
		if G.GAME.flipped == false or G.GAME.used_vouchers["v_jud_flip"] == true then
			return true
		end
		return false
	end,
})

SMODS.Consumable({
	key = "unowild_custom",
	set = "uno",
	atlas = "unoc",
	set_badges = function(self, card, badges)
		badges[#badges + 1] = create_badge("Art by: superb_thing", Judgement.C.UNOC, G.C.BLACK, 0.8)
	end,
	pos = {
		x = 14,
		y = 3,
	},
	config = { max = 1 },
	cost = 5,
	can_use = function(self, card)
		return true
	end,
	loc_vars = function(self, info_queue, center)
		return {
			vars = {
				self.config.max,
			},
		}
	end,
	use = function(self, card, area, copier)
		local wcard
		for i = 1, self.config.max do
			local _suit, _rank =
				pseudorandom_element(SMODS.Suits, pseudoseed("unowild")).card_key,
				pseudorandom_element(Judgement.facepool(), pseudoseed("unowild")).card_key
			wcard = Judgement.playing_card(G.deck, "King", _suit, "m_glass", "e_polychrome", nil, "Red")
			if G.GAME.used_vouchers["v_jud_dice"] == true then
				SMODS.Stickers["cry_rigged"]:apply(wcard, true)
			end
		end
	end,
	in_pool = function(self, wawa, wawa2)
		if G.GAME.flipped == false or G.GAME.used_vouchers["v_jud_flip"] == true then
			return true
		end
		return false
	end,
})

--No Mercy
-- I fucking hate uno cards (sorry fem)

SMODS.Consumable({
	key = "unodrawfour_am",
	set = "uno",
	atlas = "unoc",
	set_badges = function(self, card, badges)
		badges[#badges + 1] = create_badge("Art by: superb_thing", Judgement.C.UNOC, G.C.BLACK, 0.8)
	end,
	pos = {
		x = 8,
		y = 3,
	},
	Pools = {
		UnoRed = true,
	},
	loc_vars = function(self, info_queue, center)
		return {
			vars = {
				self.config.max_highlighted,
			},
		}
	end,
	config = { max_highlighted = 4 },
	cost = 5,
	use = function(self, card, area, copier)
		for i, card in pairs(G.hand.highlighted) do
			card:flip()
			G.E_MANAGER:add_event(Event({
				trigger = "before",
				delay = 0.2,
				func = function()
					SMODS.modify_rank(card, 4)
					SMODS.change_base(card, "Hearts")
					return true
				end,
			}))
			delay(0.5)
			G.E_MANAGER:add_event(Event({
				trigger = "after",
				delay = 0.2,
				func = function()
					G.hand:unhighlight_all()
					card:flip()
					return true
				end,
			}))
		end
	end,
	in_pool = function(self, wawa, wawa2)
		if
			G.GAME.used_vouchers["v_jud_nomercy"] == true
			and (G.GAME.flipped == false or G.GAME.used_vouchers["v_jud_flip"] == true)
		then
			return true
		end
		return false
	end,
})

SMODS.Consumable({
	key = "unodrawfour_bm",
	set = "uno",
	atlas = "unoc",
	set_badges = function(self, card, badges)
		badges[#badges + 1] = create_badge("Art by: superb_thing", Judgement.C.UNOC, G.C.BLACK, 0.8)
	end,
	no_collection = true,
	pos = {
		x = 9,
		y = 3,
	},
	Pools = {
		UnoYellow = true,
	},
	loc_vars = function(self, info_queue, center)
		return {
			vars = {
				self.config.max_highlighted,
			},
		}
	end,
	config = { max_highlighted = 4 },
	cost = 5,
	use = function(self, card, area, copier)
		for i, card in pairs(G.hand.highlighted) do
			card:flip()
			G.E_MANAGER:add_event(Event({
				trigger = "before",
				delay = 0.2,
				func = function()
					SMODS.modify_rank(card, 4)
					SMODS.change_base(card, "Diamonds")
					return true
				end,
			}))
			delay(0.5)
			G.E_MANAGER:add_event(Event({
				trigger = "after",
				delay = 0.2,
				func = function()
					G.hand:unhighlight_all()
					card:flip()
					return true
				end,
			}))
		end
	end,
	in_pool = function(self, wawa, wawa2)
		if
			G.GAME.used_vouchers["v_jud_nomercy"] == true
			and (G.GAME.flipped == false or G.GAME.used_vouchers["v_jud_flip"] == true)
		then
			return true
		end
		return false
	end,
})

SMODS.Consumable({
	key = "unodrawfour_cm",
	set = "uno",
	atlas = "unoc",
	set_badges = function(self, card, badges)
		badges[#badges + 1] = create_badge("Art by: superb_thing", Judgement.C.UNOC, G.C.BLACK, 0.8)
	end,
	no_collection = true,
	pos = {
		x = 10,
		y = 3,
	},
	Pools = {
		UnoGreen = true,
	},
	loc_vars = function(self, info_queue, center)
		return {
			vars = {
				self.config.max_highlighted,
			},
		}
	end,
	config = { max_highlighted = 4 },
	cost = 5,
	use = function(self, card, area, copier)
		for i, card in pairs(G.hand.highlighted) do
			card:flip()
			G.E_MANAGER:add_event(Event({
				trigger = "before",
				delay = 0.2,
				func = function()
					SMODS.modify_rank(card, 4)
					SMODS.change_base(card, "Clubs")
					return true
				end,
			}))
			delay(0.5)
			G.E_MANAGER:add_event(Event({
				trigger = "after",
				delay = 0.2,
				func = function()
					G.hand:unhighlight_all()
					card:flip()
					return true
				end,
			}))
		end
	end,
	in_pool = function(self, wawa, wawa2)
		if
			G.GAME.used_vouchers["v_jud_nomercy"] == true
			and (G.GAME.flipped == false or G.GAME.used_vouchers["v_jud_flip"] == true)
		then
			return true
		end
		return false
	end,
})

SMODS.Consumable({
	key = "unodrawfour_dm",
	set = "uno",
	atlas = "unoc",
	set_badges = function(self, card, badges)
		badges[#badges + 1] = create_badge("Art by: superb_thing", Judgement.C.UNOC, G.C.BLACK, 0.8)
	end,
	no_collection = true,
	pos = {
		x = 11,
		y = 3,
	},
	Pools = {
		UnoBlue = true,
	},
	loc_vars = function(self, info_queue, center)
		return {
			vars = {
				self.config.max_highlighted,
			},
		}
	end,
	config = { max_highlighted = 4 },
	cost = 5,
	use = function(self, card, area, copier)
		for i, card in pairs(G.hand.highlighted) do
			card:flip()
			G.E_MANAGER:add_event(Event({
				trigger = "before",
				delay = 0.2,
				func = function()
					SMODS.modify_rank(card, 4)
					SMODS.change_base(card, "Spades")
					return true
				end,
			}))
			delay(0.5)
			G.E_MANAGER:add_event(Event({
				trigger = "after",
				delay = 0.2,
				func = function()
					G.hand:unhighlight_all()
					card:flip()
					return true
				end,
			}))
		end
	end,
	in_pool = function(self, wawa, wawa2)
		if
			G.GAME.used_vouchers["v_jud_nomercy"] == true
			and (G.GAME.flipped == false or G.GAME.used_vouchers["v_jud_flip"] == true)
		then
			return true
		end
		return false
	end,
})

SMODS.Consumable({
	key = "unoskipall_am",
	set = "uno",
	atlas = "unoc",
	set_badges = function(self, card, badges)
		badges[#badges + 1] = create_badge("Art by: superb_thing", Judgement.C.UNOC, G.C.BLACK, 0.8)
	end,
	pos = {
		x = 8,
		y = 3,
	},
	Pools = {
		UnoRed = true,
	},
	loc_vars = function(self, info_queue, center)
		return {
			vars = {
				self.config.max,
			},
		}
	end,
	config = { max = 1 },
	cost = 5,
	can_use = function(self, card)
		return G.GAME and G.GAME.blind and G.GAME.blind.in_blind
	end,
	use = function(self, card, area, copier)
		local add = 0
		for i = 1, Judgement.suitcheck("Hearts", G.hand.cards) do
			add = add + 1
		end
		ease_hands_played(add)
	end,
	in_pool = function(self, wawa, wawa2)
		if
			G.GAME.used_vouchers["v_jud_nomercy"] == true
			and (G.GAME.flipped == false or G.GAME.used_vouchers["v_jud_flip"] == true)
		then
			return true
		end
		return false
	end,
})

SMODS.Consumable({
	key = "unoskipall_bm",
	set = "uno",
	atlas = "unoc",
	set_badges = function(self, card, badges)
		badges[#badges + 1] = create_badge("Art by: superb_thing", Judgement.C.UNOC, G.C.BLACK, 0.8)
	end,
	no_collection = true,
	pos = {
		x = 9,
		y = 3,
	},
	Pools = {
		UnoYellow = true,
	},
	loc_vars = function(self, info_queue, center)
		return {
			vars = {
				self.config.max,
			},
		}
	end,
	config = { max = 1 },
	cost = 5,
	can_use = function(self, card)
		return G.GAME and G.GAME.blind and G.GAME.blind.in_blind
	end,
	use = function(self, card, area, copier)
		local add = 0
		for i = 1, Judgement.suitcheck("Diamonds", G.hand.cards) do
			add = add + 1
		end
		ease_hands_played(add)
	end,
	in_pool = function(self, wawa, wawa2)
		if
			G.GAME.used_vouchers["v_jud_nomercy"] == true
			and (G.GAME.flipped == false or G.GAME.used_vouchers["v_jud_flip"] == true)
		then
			return true
		end
		return false
	end,
})

SMODS.Consumable({
	key = "unoskipall_cm",
	set = "uno",
	atlas = "unoc",
	set_badges = function(self, card, badges)
		badges[#badges + 1] = create_badge("Art by: superb_thing", Judgement.C.UNOC, G.C.BLACK, 0.8)
	end,
	no_collection = true,
	pos = {
		x = 10,
		y = 3,
	},
	Pools = {
		UnoGreen = true,
	},
	loc_vars = function(self, info_queue, center)
		return {
			vars = {
				self.config.max,
			},
		}
	end,
	config = { max = 1 },
	cost = 5,
	can_use = function(self, card)
		return G.GAME and G.GAME.blind and G.GAME.blind.in_blind
	end,
	use = function(self, card, area, copier)
		local add = 0
		for i = 1, Judgement.suitcheck("Clubs", G.hand.cards) do
			add = add + 1
		end
		ease_hands_played(add)
	end,
	in_pool = function(self, wawa, wawa2)
		if
			G.GAME.used_vouchers["v_jud_nomercy"] == true
			and (G.GAME.flipped == false or G.GAME.used_vouchers["v_jud_flip"] == true)
		then
			return true
		end
		return false
	end,
})

SMODS.Consumable({
	key = "unoskipall_dm",
	set = "uno",
	atlas = "unoc",
	set_badges = function(self, card, badges)
		badges[#badges + 1] = create_badge("Art by: superb_thing", Judgement.C.UNOC, G.C.BLACK, 0.8)
	end,
	no_collection = true,
	pos = {
		x = 11,
		y = 3,
	},
	Pools = {
		UnoBlue = true,
	},
	loc_vars = function(self, info_queue, center)
		return {
			vars = {
				self.config.max,
			},
		}
	end,
	config = { max = 1 },
	cost = 5,
	can_use = function(self, card)
		return G.GAME and G.GAME.blind and G.GAME.blind.in_blind
	end,
	use = function(self, card, area, copier)
		local add = 0
		for i = 1, Judgement.suitcheck("Spades", G.hand.cards) do
			add = add + 1
		end
		ease_hands_played(add)
	end,
	in_pool = function(self, wawa, wawa2)
		if
			G.GAME.used_vouchers["v_jud_nomercy"] == true
			and (G.GAME.flipped == false or G.GAME.used_vouchers["v_jud_flip"] == true)
		then
			return true
		end
		return false
	end,
})

SMODS.Consumable({
	key = "unodiscardall_am",
	set = "uno",
	atlas = "unoc",
	set_badges = function(self, card, badges)
		badges[#badges + 1] = create_badge("Art by: superb_thing", Judgement.C.UNOC, G.C.BLACK, 0.8)
	end,
	pos = {
		x = 8,
		y = 3,
	},
	Pools = {
		UnoRed = true,
	},
	config = {},
	cost = 5,
	can_use = function(self, card)
		return G.GAME and G.GAME.blind and G.GAME.blind.in_blind
	end,

	use = function(self, card, area, copier)
		local cards = {}
		for i = 1, #G.hand.cards do
			if G.hand.cards[i]:is_suit("Hearts") then
				cards[#cards + 1] = G.hand.cards[i]
			end
		end
		Judgement.discard(#cards, cards)
	end,

	in_pool = function(self, wawa, wawa2)
		if
			G.GAME.used_vouchers["v_jud_nomercy"] == true
			and (G.GAME.flipped == false or G.GAME.used_vouchers["v_jud_flip"] == true)
		then
			return true
		end
		return false
	end,
})

SMODS.Consumable({
	key = "unodiscardall_bm",
	set = "uno",
	atlas = "unoc",
	set_badges = function(self, card, badges)
		badges[#badges + 1] = create_badge("Art by: superb_thing", Judgement.C.UNOC, G.C.BLACK, 0.8)
	end,
	no_collection = true,
	pos = {
		x = 8,
		y = 3,
	},
	Pools = {
		UnoYellow = true,
	},
	config = {},
	cost = 5,
	can_use = function(self, card)
		return G.GAME and G.GAME.blind and G.GAME.blind.in_blind
	end,

	use = function(self, card, area, copier)
		local cards = {}
		for i = 1, #G.hand.cards do
			if G.hand.cards[i]:is_suit("Diamonds") then
				cards[#cards + 1] = G.hand.cards[i]
			end
		end
		Judgement.discard(#cards, cards)
	end,

	in_pool = function(self, wawa, wawa2)
		if
			G.GAME.used_vouchers["v_jud_nomercy"] == true
			and (G.GAME.flipped == false or G.GAME.used_vouchers["v_jud_flip"] == true)
		then
			return true
		end
		return false
	end,
})

SMODS.Consumable({
	key = "unodiscardall_cm",
	set = "uno",
	atlas = "unoc",
	set_badges = function(self, card, badges)
		badges[#badges + 1] = create_badge("Art by: superb_thing", Judgement.C.UNOC, G.C.BLACK, 0.8)
	end,
	no_collection = true,
	pos = {
		x = 8,
		y = 3,
	},
	Pools = {
		UnoGreen = true,
	},
	config = {},
	cost = 5,
	can_use = function(self, card)
		return G.GAME and G.GAME.blind and G.GAME.blind.in_blind
	end,

	use = function(self, card, area, copier)
		local cards = {}
		for i = 1, #G.hand.cards do
			if G.hand.cards[i]:is_suit("Clubs") then
				cards[#cards + 1] = G.hand.cards[i]
			end
		end
		Judgement.discard(#cards, cards)
	end,

	in_pool = function(self, wawa, wawa2)
		if
			G.GAME.used_vouchers["v_jud_nomercy"] == true
			and (G.GAME.flipped == false or G.GAME.used_vouchers["v_jud_flip"] == true)
		then
			return true
		end
		return false
	end,
})

SMODS.Consumable({
	key = "unodiscardall_dm",
	set = "uno",
	atlas = "unoc",
	set_badges = function(self, card, badges)
		badges[#badges + 1] = create_badge("Art by: superb_thing", Judgement.C.UNOC, G.C.BLACK, 0.8)
	end,
	no_collection = true,
	pos = {
		x = 8,
		y = 3,
	},
	Pools = {
		UnoBlue = true,
	},
	config = {},
	cost = 5,
	can_use = function(self, card)
		return G.GAME and G.GAME.blind and G.GAME.blind.in_blind
	end,

	use = function(self, card, area, copier)
		local cards = {}
		for i = 1, #G.hand.cards do
			if G.hand.cards[i]:is_suit("Spades") then
				cards[#cards + 1] = G.hand.cards[i]
			end
		end
		Judgement.discard(#cards, cards)
	end,

	in_pool = function(self, wawa, wawa2)
		if
			G.GAME.used_vouchers["v_jud_nomercy"] == true
			and (G.GAME.flipped == false or G.GAME.used_vouchers["v_jud_flip"] == true)
		then
			return true
		end
		return false
	end,
})

SMODS.Consumable({
	key = "unowild_six",
	set = "uno",
	atlas = "unoc",
	set_badges = function(self, card, badges)
		badges[#badges + 1] = create_badge("Art by: superb_thing", Judgement.C.UNOC, G.C.BLACK, 0.8)
	end,
	pos = {
		x = 13,
		y = 3,
	},
	loc_vars = function(self, info_queue, center)
		return {
			vars = {
				self.config.max,
			},
		}
	end,
	config = { max = 6 },
	cost = 5,
	can_use = function(self, card)
		return true
	end,
	use = function(self, card, area, copier)
		local faces = {}
		for _, v in ipairs(SMODS.Rank.obj_buffer) do
			local r = SMODS.Ranks[v]
			if r.face then
				table.insert(faces, r)
			end
		end
		for i = 1, self.config.max do
			local _suit, _rank =
				pseudorandom_element(SMODS.Suits, pseudoseed("unowild")).card_key,
				pseudorandom_element(faces, pseudoseed("unowild")).card_key
			local wcard = Judgement.playing_card(G.deck, _rank, _suit, SMODS.poll_enhancement({ guaranteed = true }))
			if G.GAME.used_vouchers["v_jud_dice"] == true then
				SMODS.Stickers["cry_rigged"]:apply(wcard, true)
			end
		end
	end,
	in_pool = function(self, wawa, wawa2)
		if G.GAME.flipped == false or G.GAME.used_vouchers["v_jud_flip"] == true then
			return true
		end
		return false
	end,
})

SMODS.Consumable({
	key = "unowild_ten",
	set = "uno",
	atlas = "unoc",
	set_badges = function(self, card, badges)
		badges[#badges + 1] = create_badge("Art by: superb_thing", Judgement.C.UNOC, G.C.BLACK, 0.8)
	end,
	pos = {
		x = 13,
		y = 3,
	},
	loc_vars = function(self, info_queue, center)
		return {
			vars = {
				self.config.max,
			},
		}
	end,
	config = { max = 10 },
	cost = 5,
	can_use = function(self, card)
		return true
	end,
	use = function(self, card, area, copier)
		local faces = {}
		for _, v in ipairs(SMODS.Rank.obj_buffer) do
			local r = SMODS.Ranks[v]
			if r.face then
				table.insert(faces, r)
			end
		end
		for i = 1, self.config.max do
			local _suit, _rank =
				pseudorandom_element(SMODS.Suits, pseudoseed("unowild")).card_key,
				pseudorandom_element(faces, pseudoseed("unowild")).card_key
			local wcard = Judgement.playing_card(G.deck, _rank, _suit, SMODS.poll_enhancement({ guaranteed = true }))
			if G.GAME.used_vouchers["v_jud_dice"] == true then
				SMODS.Stickers["cry_rigged"]:apply(wcard, true)
			end
		end
	end,
	in_pool = function(self, wawa, wawa2)
		if G.GAME.flipped == false or G.GAME.used_vouchers["v_jud_flip"] == true then
			return true
		end
		return false
	end,
})

SMODS.Consumable({
	key = "unowild_reversefour",
	set = "uno",
	atlas = "unoc",
	set_badges = function(self, card, badges)
		badges[#badges + 1] = create_badge("Art by: superb_thing", Judgement.C.UNOC, G.C.BLACK, 0.8)
	end,
	pos = {
		x = 13,
		y = 3,
	},
	loc_vars = function(self, info_queue, center)
		return {
			vars = {
				self.config.max,
			},
		}
	end,
	config = { max = 1 },
	cost = 5,
	can_use = function(self, card)
		return true
	end,
	use = function(self, card, area, copier)
		local faces = {}
		for _, v in ipairs(SMODS.Rank.obj_buffer) do
			local r = SMODS.Ranks[v]
			if r.face then
				table.insert(faces, r)
			end
		end
		for i = 1, self.config.max do
			local _suit, _rank =
				pseudorandom_element(SMODS.Suits, pseudoseed("unowild")).card_key,
				pseudorandom_element(faces, pseudoseed("unowild")).card_key
			local wcard = Judgement.playing_card(G.deck, _rank, _suit, SMODS.poll_enhancement({ guaranteed = true }))
			if G.GAME.used_vouchers["v_jud_dice"] == true then
				SMODS.Stickers["cry_rigged"]:apply(wcard, true)
			end
		end
		local easeh = 0
		for i = 1, #G.hand.cards do
			easeh = easeh + 1 * self.config.max
		end
		ease_hands_played(easeh)
	end,
	in_pool = function(self, wawa, wawa2)
		if G.GAME.flipped == false or G.GAME.used_vouchers["v_jud_flip"] == true then
			return true
		end
		return false
	end,
})

--[[SMODS.Consumable({
	key = "unoroulette",
	set = "uno",
	atlas = "unoc",
		set_badges = function(self, card, badges)
		badges[#badges+1] = create_badge("Art by: Tatteredlurker", G.C.PURPLE, G.C.BLACK, 0.8 )
 	end,
	pos = {
		x = 13,
		y = 3,
	},
	config = { max_highlighted = 1, draw = false, selected = nil },
	cost = 5,
	use = function(self, card, area, copier)
		local selected = pseudorandom_element(G.deck.cards)
		self.config.selected = selected
		copy_card(G.hand.highlighted[1], selected)
		self.config.draw = true
		if self.config.draw then
			card:juice_up()
			local drawn = draw_card(G.deck, G.hand, 1 * 100 / 1, "up", true)
			if drawn == self.config.selected then
				self.config.draw = false
			end
		end
	end,
})]]

--Stuff below are releated to flip

SMODS.Consumable({
	key = "flip",
	set = "uno",
	atlas = "unoc",
	set_badges = function(self, card, badges)
		badges[#badges + 1] = create_badge("Art by: superb_thing", Judgement.C.UNOC, G.C.BLACK, 0.8)
	end,
	pos = {
		x = 13,
		y = 3,
	},
	config = { max = 4 },
	cost = 5,
	can_use = function(self, card)
		return true
	end,
	use = function(self, card, area, copier)
		if G.GAME.flipped == false then
			G.GAME.flipped = true
			local flipcards = { "c_jud_drawfive", "c_jud_skipeveryonef" }
			for i = 1, #G.consumeables.cards do
				local rcards = G.consumeables.cards[i]
				local randomflipcard = pseudorandom_element(flipcards)
				if rcards.ability.set == "uno" then
					G.E_MANAGER:add_event(Event({
						trigger = "before",
						delay = 0.2,
						func = function()
							rcards:flip()
							rcards:set_ability(randomflipcard)
							return true
						end,
					}))
					G.E_MANAGER:add_event(Event({
						trigger = "after",
						delay = 0.2,
						func = function()
							rcards:flip()
							return true
						end,
					}))
				end
			end
		else
			G.GAME.flipped = false
			local unocards = {}
			for i = 1, #G.P_CENTER_POOLS.uno do
				if
					G.P_CENTER_POOLS.uno[i].key ~= "c_jud_drawfive"
					and G.P_CENTER_POOLS.uno[i].key ~= "c_jud_skipeveryonef"
				then
					unocards[#unocards + 1] = G.P_CENTER_POOLS.uno[i]
				end
			end
			for i = 1, #G.consumeables.cards do
				local rcards = G.consumeables.cards[i]
				local randomflipcard = pseudorandom_element(unocards)
				if rcards.ability.set == "uno" then
					G.E_MANAGER:add_event(Event({
						trigger = "before",
						delay = 0.2,
						func = function()
							rcards:flip()
							rcards:set_ability(randomflipcard)
							return true
						end,
					}))
					G.E_MANAGER:add_event(Event({
						trigger = "after",
						delay = 0.2,
						func = function()
							rcards:flip()
							return true
						end,
					}))
				end
			end
		end
	end,
})

SMODS.Consumable({
	key = "flip_b",
	set = "uno",
	atlas = "unoc",
	set_badges = function(self, card, badges)
		badges[#badges + 1] = create_badge("Art by: superb_thing", Judgement.C.UNOC, G.C.BLACK, 0.8)
	end,
	pos = {
		x = 14,
		y = 6,
	},
	no_collection = true,
	config = { max = 4 },
	cost = 5,
	can_use = function(self, card)
		return true
	end,
	use = function(self, card, area, copier)
		if G.GAME.flipped == false then
			G.GAME.flipped = true
			local flipcards = { "c_jud_drawfive", "c_jud_skipeveryonef" }
			for i = 1, #G.consumeables.cards do
				local rcards = G.consumeables.cards[i]
				local randomflipcard = pseudorandom_element(flipcards)
				if rcards.ability.set == "uno" then
					G.E_MANAGER:add_event(Event({
						trigger = "before",
						delay = 0.2,
						func = function()
							rcards:flip()
							rcards:set_ability(randomflipcard)
							return true
						end,
					}))
					G.E_MANAGER:add_event(Event({
						trigger = "after",
						delay = 0.2,
						func = function()
							rcards:flip()
							return true
						end,
					}))
				end
			end
		else
			G.GAME.flipped = false
			local unocards = {}
			for i = 1, #G.P_CENTER_POOLS.uno do
				if
					G.P_CENTER_POOLS.uno[i].key ~= "c_jud_drawfive"
					and G.P_CENTER_POOLS.uno[i].key ~= "c_jud_skipeveryonef"
				then
					unocards[#unocards + 1] = G.P_CENTER_POOLS.uno[i]
				end
			end
			for i = 1, #G.consumeables.cards do
				local rcards = G.consumeables.cards[i]
				local randomflipcard = pseudorandom_element(unocards)
				if rcards.ability.set == "uno" then
					G.E_MANAGER:add_event(Event({
						trigger = "before",
						delay = 0.2,
						func = function()
							rcards:flip()
							rcards:set_ability(randomflipcard)
							return true
						end,
					}))
					G.E_MANAGER:add_event(Event({
						trigger = "after",
						delay = 0.2,
						func = function()
							rcards:flip()
							return true
						end,
					}))
				end
			end
		end
	end,
})

SMODS.Consumable({
	key = "flip_c",
	set = "uno",
	atlas = "unoc",
	set_badges = function(self, card, badges)
		badges[#badges + 1] = create_badge("Art by: superb_thing", Judgement.C.UNOC, G.C.BLACK, 0.8)
	end,
	pos = {
		x = 15,
		y = 6,
	},
	no_collection = true,
	config = { max = 4 },
	cost = 5,
	can_use = function(self, card)
		return true
	end,
	use = function(self, card, area, copier)
		if G.GAME.flipped == false then
			G.GAME.flipped = true
			local flipcards = { "c_jud_drawfive", "c_jud_skipeveryonef" }
			for i = 1, #G.consumeables.cards do
				local rcards = G.consumeables.cards[i]
				local randomflipcard = pseudorandom_element(flipcards)
				if rcards.ability.set == "uno" then
					G.E_MANAGER:add_event(Event({
						trigger = "before",
						delay = 0.2,
						func = function()
							rcards:flip()
							rcards:set_ability(randomflipcard)
							return true
						end,
					}))
					G.E_MANAGER:add_event(Event({
						trigger = "after",
						delay = 0.2,
						func = function()
							rcards:flip()
							return true
						end,
					}))
				end
			end
		else
			G.GAME.flipped = false
			local unocards = {}
			for i = 1, #G.P_CENTER_POOLS.uno do
				if
					G.P_CENTER_POOLS.uno[i].key ~= "c_jud_drawfive"
					and G.P_CENTER_POOLS.uno[i].key ~= "c_jud_skipeveryonef"
				then
					unocards[#unocards + 1] = G.P_CENTER_POOLS.uno[i]
				end
			end
			for i = 1, #G.consumeables.cards do
				local rcards = G.consumeables.cards[i]
				local randomflipcard = pseudorandom_element(unocards)
				if rcards.ability.set == "uno" then
					G.E_MANAGER:add_event(Event({
						trigger = "before",
						delay = 0.2,
						func = function()
							rcards:flip()
							rcards:set_ability(randomflipcard)
							return true
						end,
					}))
					G.E_MANAGER:add_event(Event({
						trigger = "after",
						delay = 0.2,
						func = function()
							rcards:flip()
							return true
						end,
					}))
				end
			end
		end
	end,
})

SMODS.Consumable({
	key = "flip_d",
	set = "uno",
	atlas = "unoc",
	set_badges = function(self, card, badges)
		badges[#badges + 1] = create_badge("Art by: superb_thing", Judgement.C.UNOC, G.C.BLACK, 0.8)
	end,
	pos = {
		x = 16,
		y = 6,
	},
	no_collection = true,
	config = { max = 4 },
	cost = 5,
	can_use = function(self, card)
		return true
	end,
	use = function(self, card, area, copier)
		if G.GAME.flipped == false then
			G.GAME.flipped = true
			local flipcards = { "c_jud_drawfive", "c_jud_skipeveryonef" }
			for i = 1, #G.consumeables.cards do
				local rcards = G.consumeables.cards[i]
				local randomflipcard = pseudorandom_element(flipcards)
				if rcards.ability.set == "uno" then
					G.E_MANAGER:add_event(Event({
						trigger = "before",
						delay = 0.2,
						func = function()
							rcards:flip()
							rcards:set_ability(randomflipcard)
							return true
						end,
					}))
					G.E_MANAGER:add_event(Event({
						trigger = "after",
						delay = 0.2,
						func = function()
							rcards:flip()
							return true
						end,
					}))
				end
			end
		else
			G.GAME.flipped = false
			local unocards = {}
			for i = 1, #G.P_CENTER_POOLS.uno do
				if
					G.P_CENTER_POOLS.uno[i].key ~= "c_jud_drawfive"
					and G.P_CENTER_POOLS.uno[i].key ~= "c_jud_skipeveryonef"
				then
					unocards[#unocards + 1] = G.P_CENTER_POOLS.uno[i]
				end
			end
			for i = 1, #G.consumeables.cards do
				local rcards = G.consumeables.cards[i]
				local randomflipcard = pseudorandom_element(unocards)
				if rcards.ability.set == "uno" then
					G.E_MANAGER:add_event(Event({
						trigger = "before",
						delay = 0.2,
						func = function()
							rcards:flip()
							rcards:set_ability(randomflipcard)
							return true
						end,
					}))
					G.E_MANAGER:add_event(Event({
						trigger = "after",
						delay = 0.2,
						func = function()
							rcards:flip()
							return true
						end,
					}))
				end
			end
		end
	end,
})

--Flipped flips :D

SMODS.Consumable({
	key = "flip_f",
	set = "uno",
	atlas = "unoc",
	set_badges = function(self, card, badges)
		badges[#badges + 1] = create_badge("Art by: superb_thing", Judgement.C.UNOC, G.C.BLACK, 0.8)
	end,
	pos = {
		x = 8,
		y = 6,
	},
	config = { max = 4 },
	cost = 5,
	can_use = function(self, card)
		return true
	end,
	use = function(self, card, area, copier)
		if G.GAME.flipped == false then
			G.GAME.flipped = true
			local flipcards = { "c_jud_drawfive", "c_jud_skipeveryonef" }
			for i = 1, #G.consumeables.cards do
				local rcards = G.consumeables.cards[i]
				local randomflipcard = pseudorandom_element(flipcards)
				if rcards.ability.set == "uno" then
					G.E_MANAGER:add_event(Event({
						trigger = "before",
						delay = 0.2,
						func = function()
							rcards:flip()
							rcards:set_ability(randomflipcard)
							return true
						end,
					}))
					G.E_MANAGER:add_event(Event({
						trigger = "after",
						delay = 0.2,
						func = function()
							rcards:flip()
							return true
						end,
					}))
				end
			end
		else
			G.GAME.flipped = false
			local unocards = {}
			for i = 1, #G.P_CENTER_POOLS.uno do
				if
					G.P_CENTER_POOLS.uno[i].key ~= "c_jud_drawfive"
					and G.P_CENTER_POOLS.uno[i].key ~= "c_jud_skipeveryonef"
				then
					unocards[#unocards + 1] = G.P_CENTER_POOLS.uno[i]
				end
			end
			for i = 1, #G.consumeables.cards do
				local rcards = G.consumeables.cards[i]
				local randomflipcard = pseudorandom_element(unocards)
				if rcards.ability.set == "uno" then
					G.E_MANAGER:add_event(Event({
						trigger = "before",
						delay = 0.2,
						func = function()
							rcards:flip()
							rcards:set_ability(randomflipcard)
							return true
						end,
					}))
					G.E_MANAGER:add_event(Event({
						trigger = "after",
						delay = 0.2,
						func = function()
							rcards:flip()
							return true
						end,
					}))
				end
			end
		end
	end,
})

SMODS.Consumable({
	key = "flip_fb",
	set = "uno",
	atlas = "unoc",
	set_badges = function(self, card, badges)
		badges[#badges + 1] = create_badge("Art by: superb_thing", Judgement.C.UNOC, G.C.BLACK, 0.8)
	end,
	pos = {
		x = 9,
		y = 6,
	},
	no_collection = true,
	config = { max = 4 },
	cost = 5,
	can_use = function(self, card)
		return true
	end,
	use = function(self, card, area, copier)
		if G.GAME.flipped == false then
			G.GAME.flipped = true
			local flipcards = { "c_jud_drawfive", "c_jud_skipeveryonef" }
			for i = 1, #G.consumeables.cards do
				local rcards = G.consumeables.cards[i]
				local randomflipcard = pseudorandom_element(flipcards)
				if rcards.ability.set == "uno" then
					G.E_MANAGER:add_event(Event({
						trigger = "before",
						delay = 0.2,
						func = function()
							rcards:flip()
							rcards:set_ability(randomflipcard)
							return true
						end,
					}))
					G.E_MANAGER:add_event(Event({
						trigger = "after",
						delay = 0.2,
						func = function()
							rcards:flip()
							return true
						end,
					}))
				end
			end
		else
			G.GAME.flipped = false
			local unocards = {}
			for i = 1, #G.P_CENTER_POOLS.uno do
				if
					G.P_CENTER_POOLS.uno[i].key ~= "c_jud_drawfive"
					and G.P_CENTER_POOLS.uno[i].key ~= "c_jud_skipeveryonef"
				then
					unocards[#unocards + 1] = G.P_CENTER_POOLS.uno[i]
				end
			end
			for i = 1, #G.consumeables.cards do
				local rcards = G.consumeables.cards[i]
				local randomflipcard = pseudorandom_element(unocards)
				if rcards.ability.set == "uno" then
					G.E_MANAGER:add_event(Event({
						trigger = "before",
						delay = 0.2,
						func = function()
							rcards:flip()
							rcards:set_ability(randomflipcard)
							return true
						end,
					}))
					G.E_MANAGER:add_event(Event({
						trigger = "after",
						delay = 0.2,
						func = function()
							rcards:flip()
							return true
						end,
					}))
				end
			end
		end
	end,
})

SMODS.Consumable({
	key = "flip_fc",
	set = "uno",
	atlas = "unoc",
	set_badges = function(self, card, badges)
		badges[#badges + 1] = create_badge("Art by: superb_thing", Judgement.C.UNOC, G.C.BLACK, 0.8)
	end,
	pos = {
		x = 10,
		y = 6,
	},
	no_collection = true,
	config = { max = 4 },
	cost = 5,
	can_use = function(self, card)
		return true
	end,
	use = function(self, card, area, copier)
		if G.GAME.flipped == false then
			G.GAME.flipped = true
			local flipcards = { "c_jud_drawfive", "c_jud_skipeveryonef" }
			for i = 1, #G.consumeables.cards do
				local rcards = G.consumeables.cards[i]
				local randomflipcard = pseudorandom_element(flipcards)
				if rcards.ability.set == "uno" then
					G.E_MANAGER:add_event(Event({
						trigger = "before",
						delay = 0.2,
						func = function()
							rcards:flip()
							rcards:set_ability(randomflipcard)
							return true
						end,
					}))
					G.E_MANAGER:add_event(Event({
						trigger = "after",
						delay = 0.2,
						func = function()
							rcards:flip()
							return true
						end,
					}))
				end
			end
		else
			G.GAME.flipped = false
			local unocards = {}
			for i = 1, #G.P_CENTER_POOLS.uno do
				if
					G.P_CENTER_POOLS.uno[i].key ~= "c_jud_drawfive"
					and G.P_CENTER_POOLS.uno[i].key ~= "c_jud_skipeveryonef"
				then
					unocards[#unocards + 1] = G.P_CENTER_POOLS.uno[i]
				end
			end
			for i = 1, #G.consumeables.cards do
				local rcards = G.consumeables.cards[i]
				local randomflipcard = pseudorandom_element(unocards)
				if rcards.ability.set == "uno" then
					G.E_MANAGER:add_event(Event({
						trigger = "before",
						delay = 0.2,
						func = function()
							rcards:flip()
							rcards:set_ability(randomflipcard)
							return true
						end,
					}))
					G.E_MANAGER:add_event(Event({
						trigger = "after",
						delay = 0.2,
						func = function()
							rcards:flip()
							return true
						end,
					}))
				end
			end
		end
	end,
})

SMODS.Consumable({
	key = "flip_fd",
	set = "uno",
	atlas = "unoc",
	set_badges = function(self, card, badges)
		badges[#badges + 1] = create_badge("Art by: superb_thing", Judgement.C.UNOC, G.C.BLACK, 0.8)
	end,
	pos = {
		x = 11,
		y = 6,
	},
	no_collection = true,
	config = { max = 4 },
	cost = 5,
	can_use = function(self, card)
		return true
	end,
	use = function(self, card, area, copier)
		if G.GAME.flipped == false then
			G.GAME.flipped = true
			local flipcards = { "c_jud_drawfive", "c_jud_skipeveryonef" }
			for i = 1, #G.consumeables.cards do
				local rcards = G.consumeables.cards[i]
				local randomflipcard = pseudorandom_element(flipcards)
				if rcards.ability.set == "uno" then
					G.E_MANAGER:add_event(Event({
						trigger = "before",
						delay = 0.2,
						func = function()
							rcards:flip()
							rcards:set_ability(randomflipcard)
							return true
						end,
					}))
					G.E_MANAGER:add_event(Event({
						trigger = "after",
						delay = 0.2,
						func = function()
							rcards:flip()
							return true
						end,
					}))
				end
			end
		else
			G.GAME.flipped = false
			local unocards = {}
			for i = 1, #G.P_CENTER_POOLS.uno do
				if
					G.P_CENTER_POOLS.uno[i].key ~= "c_jud_drawfive"
					and G.P_CENTER_POOLS.uno[i].key ~= "c_jud_skipeveryonef"
				then
					unocards[#unocards + 1] = G.P_CENTER_POOLS.uno[i]
				end
			end
			for i = 1, #G.consumeables.cards do
				local rcards = G.consumeables.cards[i]
				local randomflipcard = pseudorandom_element(unocards)
				if rcards.ability.set == "uno" then
					G.E_MANAGER:add_event(Event({
						trigger = "before",
						delay = 0.2,
						func = function()
							rcards:flip()
							rcards:set_ability(randomflipcard)
							return true
						end,
					}))
					G.E_MANAGER:add_event(Event({
						trigger = "after",
						delay = 0.2,
						func = function()
							rcards:flip()
							return true
						end,
					}))
				end
			end
		end
	end,
})

SMODS.Consumable({
	key = "drawfive_a",
	set = "uno",
	atlas = "unoc",
	set_badges = function(self, card, badges)
		badges[#badges + 1] = create_badge("Art by: superb_thing", Judgement.C.UNOC, G.C.BLACK, 0.8)
	end,
	pos = {
		x = 8,
		y = 7,
	},
	config = { max = 5 },
	cost = 5,
	can_use = function(self, card)
		return true
	end,
	loc_vars = function(self, info_queue, center)
		return {
			vars = {
				self.config.max,
			},
		}
	end,
	use = function(self, card, area, copier)
		for i = 1, self.config.max do
			local wcard
			local _suit, _rank = pseudorandom_element(SMODS.Ranks, pseudoseed("unowild")).card_key
			wcard = Judgement.playing_card(G.deck, _rank, "Hearts", SMODS.poll_enhancement({ guaranteed = true }))
			if G.GAME.used_vouchers["v_jud_dice"] == true then
				SMODS.Stickers["cry_rigged"]:apply(wcard, true)
			end
		end
	end,
	in_pool = function(self, wawa, wawa2)
		if G.GAME.flipped == true or G.GAME.used_vouchers["v_jud_flip"] == true then
			return true
		end
		return false
	end,
})

SMODS.Consumable({
	key = "drawfive_b",
	set = "uno",
	atlas = "unoc",
	set_badges = function(self, card, badges)
		badges[#badges + 1] = create_badge("Art by: superb_thing", Judgement.C.UNOC, G.C.BLACK, 0.8)
	end,
	pos = {
		x = 9,
		y = 7,
	},
	config = { max = 5 },
	no_collection = true,
	cost = 5,
	can_use = function(self, card)
		return true
	end,
	loc_vars = function(self, info_queue, center)
		return {
			vars = {
				self.config.max,
			},
		}
	end,
	use = function(self, card, area, copier)
		for i = 1, self.config.max do
			local wcard
			local _suit, _rank = pseudorandom_element(SMODS.Ranks, pseudoseed("unowild")).card_key
			wcard = Judgement.playing_card(G.deck, _rank, "Diamonds", SMODS.poll_enhancement({ guaranteed = true }))
			if G.GAME.used_vouchers["v_jud_dice"] == true then
				SMODS.Stickers["cry_rigged"]:apply(wcard, true)
			end
		end
	end,
	in_pool = function(self, wawa, wawa2)
		if G.GAME.flipped == true or G.GAME.used_vouchers["v_jud_flip"] == true then
			return true
		end
		return false
	end,
})

SMODS.Consumable({
	key = "drawfive_c",
	set = "uno",
	atlas = "unoc",
	set_badges = function(self, card, badges)
		badges[#badges + 1] = create_badge("Art by: superb_thing", Judgement.C.UNOC, G.C.BLACK, 0.8)
	end,
	pos = {
		x = 10,
		y = 7,
	},
	config = { max = 5 },
	no_collection = true,
	cost = 5,
	can_use = function(self, card)
		return true
	end,
	loc_vars = function(self, info_queue, center)
		return {
			vars = {
				self.config.max,
			},
		}
	end,
	use = function(self, card, area, copier)
		for i = 1, self.config.max do
			local wcard
			local _suit, _rank = pseudorandom_element(SMODS.Ranks, pseudoseed("unowild")).card_key
			wcard = Judgement.playing_card(G.deck, _rank, "Clubs", SMODS.poll_enhancement({ guaranteed = true }))
			if G.GAME.used_vouchers["v_jud_dice"] == true then
				SMODS.Stickers["cry_rigged"]:apply(wcard, true)
			end
		end
	end,
	in_pool = function(self, wawa, wawa2)
		if G.GAME.flipped == true or G.GAME.used_vouchers["v_jud_flip"] == true then
			return true
		end
		return false
	end,
})

SMODS.Consumable({
	key = "drawfive_d",
	set = "uno",
	atlas = "unoc",
	set_badges = function(self, card, badges)
		badges[#badges + 1] = create_badge("Art by: superb_thing", Judgement.C.UNOC, G.C.BLACK, 0.8)
	end,
	pos = {
		x = 11,
		y = 7,
	},
	config = { max = 5 },
	no_collection = true,
	cost = 5,
	can_use = function(self, card)
		return true
	end,
	loc_vars = function(self, info_queue, center)
		return {
			vars = {
				self.config.max,
			},
		}
	end,
	use = function(self, card, area, copier)
		for i = 1, self.config.max do
			local wcard
			local _rank = pseudorandom_element(SMODS.Ranks, pseudoseed("unowild")).card_key
			wcard = Judgement.playing_card(G.deck, _rank, "Spades", SMODS.poll_enhancement({ guaranteed = true }))
			if G.GAME.used_vouchers["v_jud_dice"] == true then
				SMODS.Stickers["cry_rigged"]:apply(wcard, true)
			end
		end
	end,
	in_pool = function(self, wawa, wawa2)
		if G.GAME.flipped == true or G.GAME.used_vouchers["v_jud_flip"] == true then
			return true
		end
		return false
	end,
})

SMODS.Consumable({
	key = "skipeveryonef_a",
	set = "uno",
	atlas = "unoc",
	set_badges = function(self, card, badges)
		badges[#badges + 1] = create_badge("Art by: superb_thing", Judgement.C.UNOC, G.C.BLACK, 0.8)
	end,
	pos = {
		x = 0,
		y = 7,
	},
	config = {},
	cost = 5,
	can_use = function(self, card)
		return G.GAME and G.GAME.blind and G.GAME.blind.in_blind
	end,
	use = function(self, card, area, copier)
		local add = 0
		for i = 1, Judgement.suitcheck("Hearts", G.hand.cards) do
			add = add + 1
		end
		ease_hands_played(add)
	end,
	in_pool = function(self, wawa, wawa2)
		if G.GAME.flipped == true or G.GAME.used_vouchers["v_jud_flip"] == true then
			return true
		end
		return false
	end,
})

SMODS.Consumable({
	key = "skipeveryonef_b",
	set = "uno",
	atlas = "unoc",
	set_badges = function(self, card, badges)
		badges[#badges + 1] = create_badge("Art by: superb_thing", Judgement.C.UNOC, G.C.BLACK, 0.8)
	end,
	pos = {
		x = 1,
		y = 7,
	},
	config = {},
	no_collection = true,
	cost = 5,
	can_use = function(self, card)
		return G.GAME and G.GAME.blind and G.GAME.blind.in_blind
	end,
	use = function(self, card, area, copier)
		local add = 0
		for i = 1, Judgement.suitcheck("Diamonds", G.hand.cards) do
			add = add + 1
		end
		ease_hands_played(add)
	end,
	in_pool = function(self, wawa, wawa2)
		if G.GAME.flipped == true or G.GAME.used_vouchers["v_jud_flip"] == true then
			return true
		end
		return false
	end,
})

SMODS.Consumable({
	key = "skipeveryonef_c",
	set = "uno",
	atlas = "unoc",
	set_badges = function(self, card, badges)
		badges[#badges + 1] = create_badge("Art by: superb_thing", Judgement.C.UNOC, G.C.BLACK, 0.8)
	end,
	pos = {
		x = 2,
		y = 7,
	},
	config = {},
	no_collection = true,
	cost = 5,
	can_use = function(self, card)
		return G.GAME and G.GAME.blind and G.GAME.blind.in_blind
	end,
	use = function(self, card, area, copier)
		local add = 0
		for i = 1, Judgement.suitcheck("Clubs", G.hand.cards) do
			add = add + 1
		end
		ease_hands_played(add)
	end,
	in_pool = function(self, wawa, wawa2)
		if G.GAME.flipped == true or G.GAME.used_vouchers["v_jud_flip"] == true then
			return true
		end
		return false
	end,
})

SMODS.Consumable({
	key = "skipeveryonef_d",
	set = "uno",
	atlas = "unoc",
	set_badges = function(self, card, badges)
		badges[#badges + 1] = create_badge("Art by: superb_thing", Judgement.C.UNOC, G.C.BLACK, 0.8)
	end,
	pos = {
		x = 3,
		y = 7,
	},
	config = {},
	no_collection = true,
	cost = 5,
	can_use = function(self, card)
		return G.GAME and G.GAME.blind and G.GAME.blind.in_blind
	end,
	use = function(self, card, area, copier)
		local add = 0
		for i = 1, Judgement.suitcheck("Diamonds", G.hand.cards) do
			add = add + 1
		end
		ease_hands_played(add)
	end,
	in_pool = function(self, wawa, wawa2)
		if G.GAME.flipped == true or G.GAME.used_vouchers["v_jud_flip"] == true then
			return true
		end
		return false
	end,
})

SMODS.Consumable({
	key = "discardall_fam",
	set = "uno",
	atlas = "unoc",
	set_badges = function(self, card, badges)
		badges[#badges + 1] = create_badge("Art by: superb_thing", Judgement.C.UNOC, G.C.BLACK, 0.8)
	end,
	pos = {
		x = 9,
		y = 0,
	},
	config = {},
	cost = 5,
	can_use = function(self, card)
		return G.GAME and G.GAME.blind and G.GAME.blind.in_blind
	end,

	use = function(self, card, area, copier)
		local cards = {}
		for i = 1, #G.hand.cards do
			if G.hand.cards[i]:is_suit("Hearts") then
				cards[#cards + 1] = G.hand.cards[i]
			end
		end
		Judgement.discard(#cards, cards)
	end,
	in_pool = function(self, wawa, wawa2)
		if G.GAME.flipped == true or G.GAME.used_vouchers["v_jud_flip"] == true then
			return true
		end
		return false
	end,
})

SMODS.Consumable({
	key = "discardall_fbm",
	set = "uno",
	atlas = "unoc",
	set_badges = function(self, card, badges)
		badges[#badges + 1] = create_badge("Art by: superb_thing", Judgement.C.UNOC, G.C.BLACK, 0.8)
	end,
	pos = {
		x = 9,
		y = 0,
	},
	config = {},
	no_collection = true,
	cost = 5,
	can_use = function(self, card)
		return G.GAME and G.GAME.blind and G.GAME.blind.in_blind
	end,

	use = function(self, card, area, copier)
		local cards = {}
		for i = 1, #G.hand.cards do
			if G.hand.cards[i]:is_suit("Diamonds") then
				cards[#cards + 1] = G.hand.cards[i]
			end
		end
		Judgement.discard(#cards, cards)
	end,
	in_pool = function(self, wawa, wawa2)
		if G.GAME.flipped == true or G.GAME.used_vouchers["v_jud_flip"] == true then
			return true
		end
		return false
	end,
})

SMODS.Consumable({
	key = "discardall_fcm",
	set = "uno",
	atlas = "unoc",
	set_badges = function(self, card, badges)
		badges[#badges + 1] = create_badge("Art by: superb_thing", Judgement.C.UNOC, G.C.BLACK, 0.8)
	end,
	pos = {
		x = 9,
		y = 0,
	},
	config = {},
	no_collection = true,
	cost = 5,
	can_use = function(self, card)
		return G.GAME and G.GAME.blind and G.GAME.blind.in_blind
	end,

	use = function(self, card, area, copier)
		local cards = {}
		for i = 1, #G.hand.cards do
			if G.hand.cards[i]:is_suit("Clubs") then
				cards[#cards + 1] = G.hand.cards[i]
			end
		end
		Judgement.discard(#cards, cards)
	end,
	in_pool = function(self, wawa, wawa2)
		if G.GAME.flipped == true or G.GAME.used_vouchers["v_jud_flip"] == true then
			return true
		end
		return false
	end,
})

SMODS.Consumable({
	key = "discardall_fdm",
	set = "uno",
	atlas = "unoc",
	set_badges = function(self, card, badges)
		badges[#badges + 1] = create_badge("Art by: superb_thing", Judgement.C.UNOC, G.C.BLACK, 0.8)
	end,
	pos = {
		x = 9,
		y = 0,
	},
	config = {},
	no_collection = true,
	cost = 5,
	can_use = function(self, card)
		return G.GAME and G.GAME.blind and G.GAME.blind.in_blind
	end,

	use = function(self, card, area, copier)
		local cards = {}
		for i = 1, #G.hand.cards do
			if G.hand.cards[i]:is_suit("Spades") then
				cards[#cards + 1] = G.hand.cards[i]
			end
		end
		Judgement.discard(#cards, cards)
	end,
	in_pool = function(self, wawa, wawa2)
		if G.GAME.flipped == true or G.GAME.used_vouchers["v_jud_flip"] == true then
			return true
		end
		return false
	end,
})

SMODS.Consumable({
	key = "unowildtwenty",
	set = "uno",
	atlas = "unoc",
	set_badges = function(self, card, badges)
		badges[#badges + 1] = create_badge("Art by: superb_thing", Judgement.C.UNOC, G.C.BLACK, 0.8)
	end,
	pos = {
		x = 9,
		y = 0,
	},
	config = { max = 20 },
	no_collection = true,
	cost = 5,
	can_use = function(self, card)
		return true
	end,

	use = function(self, card, area, copier)
		for i = 1, self.config.max do
			local _suit, _rank =
				pseudorandom_element(SMODS.Suits, pseudoseed("unowild")).card_key,
				pseudorandom_element(Judgement.facepool(), pseudoseed("unowild")).card_key
			local wcard = Judgement.playing_card(G.deck, _rank, _suit, SMODS.poll_enhancement({ guaranteed = true }))
			if G.GAME.used_vouchers["v_jud_dice"] == true then
				SMODS.Stickers["cry_rigged"]:apply(wcard, true)
			end
		end
	end,
	in_pool = function(self, wawa, wawa2)
		if G.GAME.flipped == true or G.GAME.used_vouchers["v_jud_flip"] == true then
			return true
		end
		return false
	end,
})

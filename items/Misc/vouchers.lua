SMODS.Voucher({
	key = "nomercy",
	unlocked = false,
	pos = {
		x = 0,
		y = 0,
	},
	cost = 10,
	check_for_unlock = function(self, args)
		if args.type == "nomercy_voucher" then
			return true
		end
	end,
})

SMODS.Voucher({
	key = "unostickers",
	unlocked = true,
	pos = {
		x = 0,
		y = 0,
	},
	cost = 10,
	redeem = function(self, card)
		G.GAME.unostickerse = true
	end,
})

SMODS.Voucher({
	key = "unostickerstier",
	unlocked = true,
	pos = {
		x = 0,
		y = 0,
	},
	requires = { "v_jud_unostickers" },
	cost = 10,
	redeem = function(self, card)
	end,
})

SMODS.Voucher({
	key = "nomercytier",
	unlocked = true,
	pos = {
		x = 0,
		y = 0,
	},
	cost = 10,
	requires = { "v_jud_nomercy" },
	redeem = function(self, card)
		if G.hand.config.card_limit >= 25 then
			G.hand:change_size(1)
		else
			G.hand:change_size(25 - G.hand.config.card_limit)
		end
	end,
})

SMODS.Voucher({
	key = "divinevoucher",
	unlocked = true,
	pos = {
		x = 0,
		y = 1,
	},
	cost = 10,
	redeem = function(self, card)
		G.GAME.boons_rate = 0.09
	end,
})

SMODS.Voucher({
	key = "allwild",
	unlocked = true,
	pos = {
		x = 0,
		y = 1,
	},
	cost = 10,
	redeem = function(self, card) end,
})

if next(SMODS.find_mod("Cryptid")) then
	SMODS.Voucher({
		key = "dice",
		unlocked = true,
		pos = {
			x = 0,
			y = 1,
		},
		cost = 10,
		redeem = function(self, card) end,
	})
end

SMODS.Voucher({
	key = "console",
	unlocked = true,
	pos = {
		x = 0,
		y = 1,
	},
	cost = 10,
	redeem = function(self, card) end,
})

SMODS.Voucher({
	key = "flip",
	unlocked = true,
	pos = {
		x = 0,
		y = 1,
	},
	cost = 10,
	redeem = function(self, card) end,
})

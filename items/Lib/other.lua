

SMODS.ObjectType({
	key = "CommonDeeds",
	cards = {},
})
SMODS.ObjectType({
	key = "UncommonDeeds",
	cards = {},
})

SMODS.ObjectType({
	key = "RareDeeds",
	cards = {},
})

SMODS.ObjectType({
	key = "LegendaryDeeds",
	cards = {},
})

SMODS.ObjectType({
	key = "Utilities",
	cards = {},
})

SMODS.ObjectType({
	key = "Railroads",
	cards = {},
})

SMODS.ObjectType({
	key = "UnoRed",
	cards = {},
})

SMODS.ObjectType({
	key = "UnoYellow",
	cards = {},
})

SMODS.ObjectType({
	key = "UnoBlue",
	cards = {},
})

SMODS.ObjectType({
	key = "UnoGreen",
	cards = {},
})

Judgement.C = {
	BOONSB = HEX("a6f7f3"),
	SPACK = HEX("81307d"),
	CHANCE = HEX("E1C16E"),
	COMMUNITY = HEX("DAA520"),
	DEEDS = HEX("C70039"),
	UNOC = HEX("ff0000"),
}


if not SMODS.Rarities["cry_epic"] then
	SMODS.Rarity({
	key = "epic",
	loc_txt = {},
	badge_colour = HEX("ef0098"),
	default_weight = 0.003,
	pools = { ["Joker"] = true },
	get_weight = function(self, weight, object_type)
		if Cryptid_config then
			if Cryptid_config["Epic Jokers"] then
				return 0.003
			else
				return 0
			end
		else
			return 0.003
		end
	end,
})
end

if not SMODS.Rarities["cry_exotic"] then
	SMODS.Rarity({
		key = "exotic",
		loc_txt = {},
		badge_colour = HEX("708b91"),	
		default_weight = 0.00005,
		pools = { ["Joker"] = true },
		get_weight = function(self, weight, object_type)
			if next(SMODS.find_mod("Cryptid")) then
				return 0
			else
				return 0.00005
			end
		end,
	})
end

if not SMODS.Rarities["cry_cursed"] then
	SMODS.Rarity({
		key = "cursed",
		loc_txt = {},
		badge_colour = HEX("474931"),
	})
end
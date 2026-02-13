SMODS.Joker({
	key = "thermophobia",
	config = {
		extra = {
			blindreq = 2,
		},
	},
	rarity = "cry_cursed",
	blueprint_compat = false,
	discovered = false,
	no_collection = true,
	atlas = "wip",
	pos = {
		x = 1,
		y = 1,
	},
	cost = 5,
	loc_vars = function(self, info_queue, card)
		local jud = card.ability.extra
		return {
			vars = {jud.blindreq},
		}
	end,
	calculate = function(self, card, context)
		local jud = card.ability.extra
		if context.setting_blind then
			G.GAME.blind.chips = G.GAME.blind.chips * jud.blindreq
			G.GAME.blind.chip_text = number_format(G.GAME.blind.chips)
		end
		if context.hand_drawn then
			G.GAME.chips = 0
			return {
				message = localize("k_reset"),
			}
		end
		if context.end_of_round and context.main_eval then
			if to_big(G.GAME.chips) >= to_big(G.GAME.blind.chips) then
				card:start_dissolve(nil, 1.6)
			end
		end
	end,
})

SMODS.Joker({
	key = "chrometophobia",
	config = {
		extra = {
			odds1 = 2,
			odds = 3,
			earned = 0,
		},
	},
	rarity = "cry_cursed",
	blueprint_compat = false,
	discovered = false,
	no_collection = true,
	atlas = "wip",
	pos = {
		x = 1,
		y = 1,
	},
	cost = 5,
	loc_vars = function(self, info_queue, card)
		local jud = card.ability.extra
		return {
			vars = {},
		}
	end,
	calculate = function(self, card, context)
		local jud = card.ability.extra
		local added = 0
		if context.jud_easedollar and to_big(context.jud_easedollar) > to_big(0) then
			if to_big(jud.earned) < to_big(10) then
				jud.earned = jud.earned + to_big(context.jud_easedollar)
			end
			if to_big(jud.earned) >= to_big(10) then
				card:start_dissolve(nil, 1.6)
			end
		end
	end,
})

SMODS.Joker({
	key = "nihilophobia",
	config = {
		extra = {
			added = 0,
		},
	},
	rarity = "cry_cursed",
	blueprint_compat = false,
	discovered = false,
	no_collection = true,
	atlas = "wip",
	pos = {
		x = 1,
		y = 1,
	},
	cost = 5,
	loc_vars = function(self, info_queue, card)
		local jud = card.ability.extra
		return {
			vars = {},
		}
	end,
	calculate = function(self, card, context)
		local jud = card.ability.extra
		if
			context.jud_joker_destroyed
			and not context.blueprint
			and context.jud_destroyedj.config.center.key ~= "j_jud_nihilophobia"
		then
			G.hand:change_size(-1)
			jud.added = jud.added + 1
		end
		if context.end_of_round and not context.blueprint and context.main_eval then
			if G.GAME.blind and G.GAME.blind.boss then
				card:start_dissolve(nil, 1.6)
			else
				G.hand:change_size(jud.added)
				jud.added = 0
			end
		end
	end,
	remove_from_deck = function(self, card, from_debuff)
		local jud = card.ability.extra
		G.hand:change_size(jud.added)
	end,
	add_to_deck = function(self, card, from_debuff)
		local jud = card.ability.extra
		jud.added = 0
	end,
})

SMODS.Joker({
	key = "apeirophobia",
	config = {
		extra = {
			xmult = 0.5,
		},
	},
	rarity = "cry_cursed",
	blueprint_compat = false,
	discovered = false,
	no_collection = true,
	atlas = "wip",
	pos = {
		x = 1,
		y = 1,
	},
	cost = 5,
	loc_vars = function(self, info_queue, card)
		local jud = card.ability.extra
		return {
			vars = {},
		}
	end,
	calculate = function(self, card, context)
		local jud = card.ability.extra
		if context.final_scoring_step then
			return {
				xmult = jud.xmult,
			}
		end
		if context.end_of_round and not context.blueprint and context.main_eval then
			if to_big(G.GAME.chips) >= to_big(G.GAME.blind.chips * 3) then
				card:start_dissolve(nil, 1.6)
			end
		end
	end,
})

SMODS.Joker({
	key = "bananaphobia",
	config = {
		extra = {},
	},
	atlas = "cursj",
	rarity = "cry_cursed",
	blueprint_compat = false,
	discovered = false,
	no_collection = true,
	pos = {
		x = 0,
		y = 0,
	},
	cost = 5,
	loc_vars = function(self, info_queue, card)
		local jud = card.ability.extra
		return {
			vars = {},
		}
	end,
	calculate = function(self, card, context)
		local jud = card.ability.extra
		local choosenone = Judgement.random_joker(G.jokers.cards)
		if choosenone == card then
			card:start_dissolve(nil, 1.6)
		else
			SMODS.Stickers["banana"]:apply(choosenone, true)
		end
	end,
	set_badges = function(self, card, badges)
		badges[#badges + 1] = create_badge("Art by: ven_the_person", G.C.BLACK, G.C.WHITE, 0.8)
	end,
})

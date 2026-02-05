
SMODS.ConsumableType({
	key = "pills",
	collection_rows = { 4, 5 },
	primary_colour = G.C.BLUE,
	secondary_colour = G.C.BLUE,
	shop_rate = 0.01,
})

SMODS.Consumable({
	key = "bluepill",
	set = "pills",
	config = {
		extra = {
			xchips = 2,
		},
	},
	loc_vars = function(self, info_queue, card)
		local jud = card.ability.extra
		return {
			vars = {jud.xchips},
		}
	end,
	calculate = function(self, card, context)
		local jud = card.ability.extra
		if context.joker_main then
			return {
				xchips = jud.xchips,
			}
		end
	end,
})

SMODS.Consumable({
	key = "redpill",
	set = "pills",
	config = {
		extra = {
			xmult = 2,
		},
	},	loc_vars = function(self, info_queue, card)
		local jud = card.ability.extra
		return {
			vars = {jud.xmult},
		}
	end,
	calculate = function(self, card, context)
		local jud = card.ability.extra
		if context.joker_main then
			return {
				xmult = jud.xmult,
			}
		end
	end,
})

SMODS.Consumable({
	key = "yellowpill",
	set = "pills",
	config = {
		extra = {
			dollars = 10,
		},
	},	loc_vars = function(self, info_queue, card)
		local jud = card.ability.extra
		return {
			vars = {jud.dollars},
		}
	end,
	calculate = function(self, card, context)
		local jud = card.ability.extra
		if context.joker_main then
			return {
				dollars = jud.dollars,
			}
		end
	end,
})

SMODS.Consumable({
	key = "purplepill",
	set = "pills",
	config = {
		extra = {
			multipler = 1.5,
			odds = 4,
		},
	},
		loc_vars = function(self, info_queue, card)
		local jud = card.ability.extra
		return {
			vars = {jud.multipler,(G.GAME.probabilities.normal or 1),jud.odds},
		}
	end,
	calculate = function(self, card, context)
		local jud = card.ability.extra
		if context.setting_blind then
			if pseudorandom("purplepill") < G.GAME.probabilities.normal / jud.odds then
				if Judgement.random_joker(G.jokers.cards) then
					Judgement.random_joker(G.jokers.cards):set_edition({ negative = true }, true)
				end
			end
			G.GAME.blind.chips = G.GAME.blind.chips * jud.multipler
			G.GAME.blind.chip_text = number_format(G.GAME.blind.chips)
			card:juice_up(0.3, 0.4)
			return {
				message = "Increased Blind Chips",
			}
		end
	end,
})

SMODS.Consumable({
	key = "greenpill",
	set = "pills",
	config = {
		extra = {
			lose = 5,
			odds = 4,
		},
	},
		loc_vars = function(self, info_queue, card)
		local jud = card.ability.extra
		return {
			vars = {(G.GAME.probabilities.normal or 1),jud.odds,jud.lose},
		}
	end,
	calculate = function(self, card, context)
		local jud = card.ability.extra
		if context.end_of_round and context.main_eval then
			if pseudorandom("greenpill") < G.GAME.probabilities.normal / jud.odds then
				return {
					dollars = to_big(G.GAME.dollars),
				}
			else
				return {
					dollars = -jud.lose,
				}
			end
		end
	end,
})

SMODS.Consumable({
	key = "blueredpill",
	set = "pills",
	config = {
		extra = {
			hands = 1,
		},
	},
		loc_vars = function(self, info_queue, card)
		local jud = card.ability.extra
		return {
			vars = {jud.hands},
		}
	end,
	calculate = function(self, card, context)
		local jud = card.ability.extra
		if context.setting_blind then
			ease_hands_played(jud.hands)
		end
	end,
})

SMODS.Consumable({
	key = "redbluepill",
	set = "pills",
	config = {
		extra = {	
			discards = 1,
		},
	},
		loc_vars = function(self, info_queue, card)
		local jud = card.ability.extra
		return {
			vars = {jud.discards},
		}
	end,
	calculate = function(self, card, context)
		local jud = card.ability.extra
		if context.setting_blind then
			ease_discard(jud.discards)
		end
	end,
})

SMODS.Consumable({
	key = "handypill",
	set = "pills",
	config = {
		extra = {
			hands = 1,
		},
	},
		loc_vars = function(self, info_queue, card)
		local jud = card.ability.extra
		return {
			vars = {jud.hands},
		}
	end,
	add_to_deck = function(self, card, from_debuff)
		local jud = card.ability.extra
		G.hand:change_size(jud.hands)
	end,
	remove_from_deck = function(self, card, from_debuff)
		local jud = card.ability.extra
		G.hand:change_size(-jud.hands)
	end,
})

SMODS.Consumable({
	key = "darkbluepill",
	set = "pills",
	config = {
		extra = {
			hands = 3,
			cooldown = 0,
			max = 3
		},
	},
		loc_vars = function(self, info_queue, card)
		local jud = card.ability.extra
		return {
			vars = {jud.hands,jud.max,jud.cooldown},
		}
	end,
	calculate = function(self, card, context)
		if context.end_of_round and context.main_eval and card.ability.extra.cooldown < card.ability.extra.max then
			card.ability.extra.cooldown = card.ability.extra.cooldown + 1
		end
	end,
	update = function(self, card, context)
		if G.GAME.current_round.hands_left <= 1 and card.ability.extra.cooldown >= card.ability.extra.max and not to_big(G.GAME.chips) >= to_big(G.GAME.blind.chips) then
			card.ability.extra.cooldown = 0
			ease_hands_played(card.ability.extra.hands)
		end
	end,
})

SMODS.Consumable({
	key = "tarotpill",
	set = "pills",
	config = {
		extra = {
			cooldown = 0,
		},
	},
	calculate = function(self, card, context)
		if context.end_of_round and context.main_eval and card.ability.extra.cooldown < 3 then
			card.ability.extra.cooldown = card.ability.extra.cooldown + 1
		elseif context.end_of_round and context.main_eval and card.ability.extra.cooldown >= 3 then
			SMODS.add_card({
				set = "Tarot",
			})
		end
	end,
})

SMODS.Consumable({
	key = "planetpill",
	set = "pills",
	config = {
		extra = {
			cooldown = 0,
		},
	},
	calculate = function(self, card, context)
		if context.end_of_round and context.main_eval and card.ability.extra.cooldown < 3 then
			card.ability.extra.cooldown = card.ability.extra.cooldown + 1
		elseif context.end_of_round and context.main_eval and card.ability.extra.cooldown >= 3 then
			SMODS.add_card({
				set = "Planet",
			})
		end
	end,
})

SMODS.Consumable({
	key = "spectralpill",
	set = "pills",
	config = {
		extra = {
			cooldown = 0,
		},
	},
	calculate = function(self, card, context)
		if context.end_of_round and context.main_eval and card.ability.extra.cooldown < 3 then
			card.ability.extra.cooldown = card.ability.extra.cooldown + 1
		elseif context.end_of_round and context.main_eval and card.ability.extra.cooldown >= 3 then
			SMODS.add_card({
				set = "Spectral",
			})
		end
	end,
})

SMODS.Consumable({
	key = "runicpill",
	set = "pills",
	config = {
		extra = {
			cooldown = 0,
		},
	},
	calculate = function(self, card, context)
		if context.end_of_round and context.main_eval and card.ability.extra.cooldown < 3 then
			card.ability.extra.cooldown = card.ability.extra.cooldown + 1
		elseif context.end_of_round and context.main_eval and card.ability.extra.cooldown >= 3 then
			SMODS.add_card({
				set = "runes",
			})
		end
	end,
})

SMODS.Consumable({
	key = "blessedpill",
	set = "pills",
	config = {
		extra = {
			cooldown = 0,
		},
	},
	calculate = function(self, card, context)
		if context.end_of_round and context.main_eval and card.ability.extra.cooldown < 3 then
			card.ability.extra.cooldown = card.ability.extra.cooldown + 1
		elseif context.end_of_round and context.main_eval and card.ability.extra.cooldown >= 3 then
			SMODS.add_card({
				set = "boons",
			})
		end
	end,
})

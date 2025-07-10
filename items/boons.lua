SMODS.ConsumableType({
	key = "boons",
	collection_rows = { 4, 5 },
	primary_colour = G.C.YELLOW,
	secondary_colour = G.C.YELLOW,
	shop_rate = 0.01,
})

local card_highlighted_ref = Card.highlight
function Card:highlight(is_highlighted)
	self.highlighted = is_highlighted
	if self.highlighted and string.find(self.ability.set, "boons") and self.area == G.jud_boons then
		if self.children.use_button then
			self.children.use_button:remove()
			self.children.use_button = nil
		end

		self.children.use_button = UIBox({
			definition = Judgement.create_sell_and_switch_buttons(self, {
				use = true,
			}),
			config = {
				align = "cr",
				offset = {
					x = -0.4,
					y = 0,
				},
				parent = self,
			},
		})
	else
		card_highlighted_ref(self, is_highlighted)
	end
end

SMODS.Consumable({
	key = "knowledge",
	set = "boons",
	loc_vars = function(self, info_queue, card)
		return {
			vars = {
				(G.deck and G.deck.cards[1] and G.deck.cards[#G.deck.cards].base.name),
			},
		}
	end,
})

--[[
SMODS.Consumable{
    key = "closure"
}


SMODS.Consumable{
 key = "trust"
}]]

SMODS.Consumable({
	key = "health",
	set = "boons",
	calculate = function(self, card, context)
		for k, v in ipairs(G.play.cards) do
			if v.debuff then
				v:set_debuff(false)
			end
		end
	end,
})

SMODS.Consumable({
	key = "wealth",
	set = "boons",
	config = {
		extra = {
			blinds = 0,
		},
	},
	calculate = function(self, card, context)
		if context.end_of_round and context.main_eval then
			local jud = card.ability.extra
			jud.blinds = jud.blinds + 1
			return {
				dollars = jud.blinds,
			}
		end
	end,
})

SMODS.Consumable({
	key = "power",
	set = "boons",
	config = {
		extra = {},
	},
	calculate = function(self, card, context)
		if context.setting_blind then
			if pseudorandom("power") < 1 / 50 then
				SMODS.add_card({
					set = "Joker",
					legendary = true,
				})
			end
		end
	end,
})

SMODS.Consumable({
	key = "resource",
	set = "boons",
	config = {
		extra = {
			setsize = 0,
		},
	},
	add_to_deck = function(self, card, from_debuff)
		local jud = card.ability.extra
		jud.setsize = G.GAME.round_resets.discards
		SMODS.change_discard_limit(G.GAME.round_resets.discards)
	end,
	remove_from_deck = function(self, card, from_debuff)
		local jud = card.ability.extra
		SMODS.change_discard_limit(-jud.setsize)
	end,
})

SMODS.Consumable({
	key = "serendipity",
	set = "boons",
	pos = {
		x = 0,
		y = 0,
	},
	config = {
		extra = {},
	},
	loc_vars = function(self, info_queue, card)
		return {
			vars = {
				card.ability.extra.defaults,
			},
		}
	end,
	cost = 5,
	add_to_deck = function(self, card, from_debuff)
		card.ability.extra.defaults = card.ability.extra.defaults or {}
		card.ability.extra.defaults["cry_epic"] = G.GAME[("cry_epic"):lower() .. "_mod"]
		G.GAME[("cry_epic"):lower() .. "_mod"] = 10
	end,
	remove_from_deck = function(self, card, from_debuff)
		G.GAME[("cry_epic"):lower() .. "_mod"] = card.ability.extra.defaults["cry_epic"]
	end,
})

SMODS.Consumable({
	key = "respect",
	set = "boons",
	pos = {
		x = 0,
		y = 0,
	},
	config = {
		extra = {
			original = 0,
		},
	},
	loc_vars = function(self, info_queue, card)
		return {
			vars = {},
		}
	end,
	cost = 5,
	add_to_deck = function(self, card, from_debuff)
		card.ability.extra.original = SMODS.ObjectTypes["Joker"].rarities[1].weight
		SMODS.ObjectTypes["Joker"].rarities[1].weight = SMODS.ObjectTypes["Joker"].rarities[3].weight
	end,
	remove_from_deck = function(self, card, from_debuff)
		SMODS.ObjectTypes["Joker"].rarities[1].weight = card.ability.extra.original
	end,
})

SMODS.Consumable({
	key = "leadership",
	set = "boons",
	pos = {
		x = 0,
		y = 0,
	},
	config = {
		extra = {
			xchips = 1.2,
		},
	},
	loc_vars = function(self, info_queue, card)
		return {
			vars = {},
		}
	end,
	cost = 5,
	calculate = function(self, card, context)
		local jud = card.ability.extra
		if context.individual and context.cardarea == G.play then
			if #context.scoring_hand > 1 then
				if context.other_card ~= context.scoring_hand[1] then
					if context.other_card:get_id() == context.scoring_hand[1]:get_id() then
						return {
							xchips = jud.xchips,
						}
					end
				end
			end
		end
	end,
})

SMODS.Consumable({
	key = "opportunity",
	set = "boons",
	pos = {
		x = 0,
		y = 0,
	},
	config = {
		extra = {
			xchips = 1.2,
		},
	},
	loc_vars = function(self, info_queue, card)
		return {
			vars = {},
		}
	end,
	cost = 5,
	calculate = function(self, card, context)
		local _tag = G.GAME.jud_skip_tag
	if context.end_of_round and not G.GAME.blind.boss and G.GAME.current_round.hands_played <= 1 then
		if _tag and _tag.config and _tag.config.ref_table then
			add_tag(_tag.config.ref_table)
			G.GAME.jud_skip_tag = ""
		end
	end
end
})

SMODS.Consumable({
	key = "opportunity",
	set = "boons",
	pos = {
		x = 0,
		y = 0,
	},
	config = {
		extra = {
			xchips = 1.2,
		},
	},
	loc_vars = function(self, info_queue, card)
		return {
			vars = {},
		}
	end,
	cost = 5,
	calculate = function(self, card, context)
		local _tag = G.GAME.jud_skip_tag
	if context.end_of_round and not G.GAME.blind.boss and G.GAME.current_round.hands_played <= 1 then
		if _tag and _tag.config and _tag.config.ref_table then
			add_tag(_tag.config.ref_table)
			G.GAME.jud_skip_tag = ""
		end
	end
end
})

--CHOICE

SMODS.Consumable({
	key = "love",
	set = "boons",
	pos = {
		x = 0,
		y = 0,
	},
	config = {
		extra = {
			xchips = 1.2,
		},
	},
	loc_vars = function(self, info_queue, card)
		return {
			vars = {},
		}
	end,
	cost = 5,
})



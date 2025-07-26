SMODS.ConsumableType({
	key = "boons",
	collection_rows = { 4, 5 },
	primary_colour = Judgement.C.BOONSB,
	secondary_colour = Judgement.C.BOONSB,
	shop_rate = 0,
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
			definition = Judgement.create_sell_and_switch_buttonsb(self, {
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

Judgement.create_sell_and_switch_buttonsb = function(card, args)
	local args = args or {}
	local sell = nil
	local use = nil

	return {
		n = G.UIT.ROOT,
		config = {
			align = "cr",
			padding = 0,
			colour = G.C.CLEAR,
		},
		nodes = {
			{
				n = G.UIT.C,
				config = {
					padding = 0.15,
					align = "cl",
				},
				nodes = {
					sell and {
						n = G.UIT.R,
						config = {
							align = "cl",
						},
						nodes = { sell },
					} or nil,
					use and {
						n = G.UIT.R,
						config = {
							align = "cl",
						},
						nodes = { use },
					} or nil,
				},
			},
		},
	}
end

SMODS.Consumable({
	atlas = "boons",
	display_size = {
		w = 42,
		h = 42,
	},
	pos = { x = 0, y = 2 },
	soul_pos = { x = 0, y = 3 },
	key = "knowledge",
	set = "boons",
	add_to_deck = function(self, card, from_debuff)
		if #G.jud_boons.cards > 0 then
			for i = 1, #G.jud_boons.cards do
				SMODS.destroy_cards(G.jud_boons.cards[i])
			end
		end
	end,
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
	atlas = "boons",
	display_size = {
		w = 42,
		h = 42,
	},
	pos = { x = 1, y = 0 },
	soul_pos = { x = 1, y = 1},
	key = "health",
	set = "boons",
	add_to_deck = function(self, card, from_debuff)
		if #G.jud_boons.cards > 0 then
			for i = 1, #G.jud_boons.cards do
				SMODS.destroy_cards(G.jud_boons.cards[i])
			end
		end
	end,
	calculate = function(self, card, context)
		for k, v in ipairs(G.play.cards) do
			if v.debuff then
				v:set_debuff(false)
			end
		end
	end,
})

SMODS.Consumable({
	atlas = "boons",
	display_size = {
		w = 42,
		h = 42,
	},
	pos = { x = 0, y = 0 },
	soul_pos = { x = 0, y = 1 },
	key = "wealth",
	set = "boons",
	add_to_deck = function(self, card, from_debuff)
		if #G.jud_boons.cards > 0 then
			for i = 1, #G.jud_boons.cards do
				SMODS.destroy_cards(G.jud_boons.cards[i])
			end
		end
	end,
	config = {
		extra = {
			give = 1,
			blinds = 0,
		},
	},
	loc_vars = function(self, info_queue, card)
		local jud = card.ability.extra
		return {
			vars = {
				card.ability.extra.blinds,
				jud.give,
			},
		}
	end,
	calculate = function(self, card, context)
		if context.end_of_round and context.main_eval then
			local jud = card.ability.extra
			jud.blinds = jud.blinds + jud.give
			return {
				dollars = jud.blinds,
			}
		end
	end,
})

SMODS.Consumable({
	atlas = "boons",
	display_size = {
		w = 42,
		h = 42,
	},
	pos = { x = 0, y = 0 },
	soul_pos = { x = 0, y = 1 },
	key = "power",
	set = "boons",
	add_to_deck = function(self, card, from_debuff)
		if #G.jud_boons.cards > 0 then
			for i = 1, #G.jud_boons.cards do
				SMODS.destroy_cards(G.jud_boons.cards[i])
			end
		end
	end,
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
	atlas = "boons",
	display_size = {
		w = 42,
		h = 42,
	},
	pos = { x = 0, y = 0 },
	soul_pos = { x = 0, y = 1 },
	key = "resource",
	set = "boons",
	config = {
		extra = {
			setsize = 0,
		},
	},
	loc_vars = function(self, info_queue, card)
		return {
			vars = {
				card.ability.extra.setsize,
			},
		}
	end,
	add_to_deck = function(self, card, from_debuff)
		local jud = card.ability.extra
		if #G.jud_boons.cards > 0 then
			for i = 1, #G.jud_boons.cards do
				SMODS.destroy_cards(G.jud_boons.cards[i])
			end
		end
		jud.setsize = G.GAME.round_resets.discards
		SMODS.change_discard_limit(G.GAME.round_resets.discards)
	end,
	remove_from_deck = function(self, card, from_debuff)
		local jud = card.ability.extra
		SMODS.change_discard_limit(-jud.setsize)
	end,
})

SMODS.Consumable({
	atlas = "boons",
	display_size = {
		w = 42,
		h = 42,
	},
	pos = { x = 0, y = 0 },
	soul_pos = { x = 0, y = 1 },
	key = "serendipity",
	set = "boons",
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
		if #G.jud_boons.cards > 0 then
			for i = 1, #G.jud_boons.cards do
				SMODS.destroy_cards(G.jud_boons.cards[i])
			end
		end
		card.ability.extra.defaults = card.ability.extra.defaults or {}
		card.ability.extra.defaults["cry_epic"] = G.GAME[("cry_epic"):lower() .. "_mod"]
		G.GAME[("cry_epic"):lower() .. "_mod"] = 10
	end,
	remove_from_deck = function(self, card, from_debuff)
		G.GAME[("cry_epic"):lower() .. "_mod"] = card.ability.extra.defaults["cry_epic"]
	end,
})

SMODS.Consumable({
	atlas = "boons",
	display_size = {
		w = 42,
		h = 42,
	},
	pos = { x = 0, y = 0 },
	soul_pos = { x = 0, y = 1 },
	key = "respect",
	set = "boons",
	config = {
		extra = {
			original = 0,
		},
	},
	loc_vars = function(self, info_queue, card)
		return {
			vars = { card.ability.extra.original },
		}
	end,
	cost = 5,
	add_to_deck = function(self, card, from_debuff)
		if #G.jud_boons.cards > 0 then
			for i = 1, #G.jud_boons.cards do
				SMODS.destroy_cards(G.jud_boons.cards[i])
			end
		end
		card.ability.extra.original = SMODS.ObjectTypes["Joker"].rarities[1].weight
		SMODS.ObjectTypes["Joker"].rarities[1].weight = SMODS.ObjectTypes["Joker"].rarities[3].weight
	end,
	remove_from_deck = function(self, card, from_debuff)
		SMODS.ObjectTypes["Joker"].rarities[1].weight = card.ability.extra.original
	end,
})

SMODS.Consumable({
	atlas = "boons",
	display_size = {
		w = 42,
		h = 42,
	},
	pos = { x = 0, y = 0 },
	soul_pos = { x = 0, y = 1 },
	key = "leadership",
	set = "boons",
	add_to_deck = function(self, card, from_debuff)
		if #G.jud_boons.cards > 0 then
			for i = 1, #G.jud_boons.cards do
				SMODS.destroy_cards(G.jud_boons.cards[i])
			end
		end
	end,
	config = {
		extra = {
			xchips = 1.2,
		},
	},
	loc_vars = function(self, info_queue, card)
		return {
			vars = { card.ability.extra.xchips },
		}
	end,
	cost = 5,
	calculate = function(self, card, context)
		local jud = card.ability.extra
		if context.individual and context.cardarea == G.play then
			if #context.scoring_hand > 1 then
				if context.other_card ~= context.scoring_hand[1] then
					local a, b = context.other_card:get_id(),context.scoring_hand[1]:get_id()
					if a == b then
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
	atlas = "boons",
	display_size = {
		w = 42,
		h = 42,
	},
	pos = { x = 0, y = 0 },
	soul_pos = { x = 0, y = 1 },
	key = "opportunity",
	set = "boons",
	add_to_deck = function(self, card, from_debuff)
		if #G.jud_boons.cards > 0 then
			for i = 1, #G.jud_boons.cards do
				SMODS.destroy_cards(G.jud_boons.cards[i])
			end
		end
	end,
	config = {
		extra = {},
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
	end,
})

SMODS.Consumable({
	atlas = "boons",
	display_size = {
		w = 42,
		h = 42,
	},
	pos = { x = 0, y = 0 },
	soul_pos = { x = 0, y = 1 },
	key = "love",
	set = "boons",
	add_to_deck = function(self, card, from_debuff)
		if #G.jud_boons.cards > 0 then
			for i = 1, #G.jud_boons.cards do
				SMODS.destroy_cards(G.jud_boons.cards[i])
			end
		end
		for i = 1, #G.P_CENTER_POOLS.Booster do
			local rcard = G.P_CENTER_POOLS.Booster
			rcard[i].config.choose = rcard[i].config.choose + 1
		end
	end,
	config = {
		extra = {},
	},
	loc_vars = function(self, info_queue, card)
		return {
			vars = {},
		}
	end,
	cost = 5,
	remove_from_deck = function(self, card, from_debuff)
		for i = 1, #G.P_CENTER_POOLS.Booster do
			local rcard = G.P_CENTER_POOLS.Booster
			rcard[i].config.choose = rcard[i].config.choose - 1
		end
	end,
})

SMODS.Consumable({
	atlas = "boons",
	display_size = {
		w = 42,
		h = 42,
	},
	pos = { x = 0, y = 0 },
	soul_pos = { x = 0, y = 1 },
	key = "love",
	set = "boons",
	add_to_deck = function(self, card, from_debuff)
		if #G.jud_boons.cards > 0 then
			for i = 1, #G.jud_boons.cards do
				SMODS.destroy_cards(G.jud_boons.cards[i])
			end
		end
	end,
	config = {
		extra = {},
	},
	loc_vars = function(self, info_queue, card)
		return {
			vars = {},
		}
	end,
	cost = 5,
})

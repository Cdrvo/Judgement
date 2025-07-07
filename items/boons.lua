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
            blinds = 0
        }
    },
	calculate = function(self, card, context)
		if context.end_of_round and context.main_eval then
            local jud = card.ability.extra
            jud.blinds = jud.blinds + 1
            return{
                dollars = jud.blinds
            }
        end
	end,
})

SMODS.Consumable({
	key = "power",
	set = "boons",
    config = {
        extra = {
        }
    },
	calculate = function(self, card, context)
    if context.setting_blind then
		if pseudorandom("power") < 1 / 50 then
            SMODS.add_card{
                set = "Joker",
                legendary = true
            }
        end
	end
end
})

SMODS.Consumable({
	key = "resource",
	set = "boons",
    config = {
        extra = {
            setsize = 0
        }
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




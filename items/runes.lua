SMODS.ConsumableType({
	key = "runes",
	collection_rows = { 4, 5 },
	primary_colour = G.C.PURPLE,
	secondary_colour = G.C.PURPLE,
	shop_rate = 0.05,
})

SMODS.Consumable({
	key = "fehu",
	set = "runes",
	config = {
		extra = {
			timer = 0,
			dollars = 1,
			negative = false,
		},
	},
	cost = 5,
	update = function(self, card, context)
		local jud = card.ability.extra
		if not jud.negative then
			card:set_edition({ negative = true }, true)
			jud.negative = true
		end
	end,
	calculate = function(self, card, context)
		local jud = card.ability.extra
		if context.end_of_round and context.main_eval then
			card:start_dissolve({ HEX("57ecab") }, nil, 1.6)
		end
		if context.individual and context.cardarea == "unscored" then
			return {
				dollars = jud.dollars,
			}
		end
	end,
})

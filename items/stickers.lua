SMODS.Sticker({
	key = "temporary",
	badge_colour = HEX("8b0000"),
	pos = {
		x = 0,
		y = 0,
	},
	sets = {
		Joker = true,
	},
    config = {
        timer = 0
    },
	rate = 0.2,
	needs_enable_flag = true,
	calculate = function(self, card, context)
		if context.end_of_round and context.main_eval and not context.blueprint then
			card:start_dissolve({ HEX("57ecab") }, nil, 1.6)
		end
	end
})
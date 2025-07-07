SMODS.Joker({
	key = "finismortis",
	config = {
		extra = {},
	},
	rarity = "cry_exotic",
	blueprint_compat = true,
	discovered = false,
	pos = {
		x = 1,
		y = 0,
	},
	soul_pos = {
		x = 1,
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
		local i = -1
		if context.selling_self then
			if #G.GAME.jud_destroyed > 0 then
				SMODS.add_card({
					key = G.GAME.jud_destroyed[1].config.center.key,
					edition = "e_negative",
				})
				for i = 1, #G.GAME.jud_destroyed do
					G.E_MANAGER:add_event(Event({
						trigger = "after",
						delay = 0.5,
						func = function()
							if i < #G.GAME.jud_destroyed then
								i = i + 1
								SMODS.add_card({
									key = G.GAME.jud_destroyed[i].config.center.key,
									edition = "e_negative",
								})
							end
							return true
						end,
					}))
				end
			end
		end
	end,
})

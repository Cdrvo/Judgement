SMODS.Joker({
	key = "finismortis",
	config = {
		extra = {},
	},
	rarity = "cry_exotic",
	blueprint_compat = true,
	discovered = false,
	atlas = "exotics",
	pos = {
		x = 1,
		y = 0,
	},
	soul_pos = {
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

SMODS.Joker({
	key = "oedipia",
	config = {
		extra = {
			
		},
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
        if context.individual and context.cardarea == G.play then
            context.other_card.ability.perma_x_mult = context.other_card.ability.perma_x_mult or 0
            context.other_card.ability.perma_x_mult = context.other_card.ability.perma_x_mult + context.other_card.base.nominal - 1
            return {
                extra = { message = localize('k_upgrade_ex'), colour = G.C.MULT },
                card = card
            }
        end
    end
})

SMODS.Joker({
	key = "phobophobia",
	config = {
		extra = {},
	},
	rarity = "cry_exotic",
	blueprint_compat = true,
	discovered = false,
	atlas = "exotics",
	pos = {
		x = 0,
		y = 0,
	},
	soul_pos = {
		x = 0,
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
		if context.setting_blind then
		for i = 1, 3 do
			local ccard = SMODS.add_card({
				key = pseudorandom_element(G.P_CENTER_POOLS.Joker).key,
				edition = "e_negative",
			})
		end	
		end
		if context.jud_joker_destroyed and not context.blueprint then
			card:start_dissolve(nil, 1.6)
		end
	end,
})

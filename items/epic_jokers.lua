SMODS.Joker({
	key = "glassliper",
	config = {
		extra = {
			level = 2,
		},
	},
	rarity = "cry_epic",
	blueprint_compat = true,
	discovered = false,
	pos = {
		x = 1,
		y = 0,
	},
	cost = 5,
	loc_vars = function(self, info_queue, card)
		local jud = card.ability.extra
		return {
			vars = {jud.level},
		}
	end,
	calculate = function(self, card, context)
		local jud = card.ability.extra
		if context.remove_playing_cards then
			local card2 = pseudorandom_element(G.playing_cards, pseudoseed("glassliper"))
			card2:set_edition(poll_edition(pseudorandom("glassliper"), nil, true, true))
		end
	end,
})

SMODS.Joker({
	key = "diplopia",
	config = {
		extra = {
			removing = 0,
			removing2 = 0
		},
	},
	atlas = "jepic",
	rarity = "cry_epic",
	blueprint_compat = true,
	discovered = false,
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
	add_to_deck = function(self, card, from_debuff)
		local jud = card.ability.extra
		jud.removing = G.jokers.config.card_limit
		jud.removing2 = G.consumeables.config.card_limit
		G.jokers.config.card_limit = G.jokers.config.card_limit * 2
		G.consumeables.config.card_limit = G.consumeables.config.card_limit * 2
	end,
	remove_from_deck = function(self, card, from_debuff)
		local jud = card.ability.extra
		G.jokers.config.card_limit = G.jokers.config.card_limit - jud.removing
		G.consumeables.config.card_limit = G.consumeables.config.card_limit - jud.removing
	end,
})

SMODS.Joker({
	key = "nomophobia",
	config = {
		extra = {},
	},
	rarity = "cry_epic",
	blueprint_compat = true,
	discovered = false,
	pos = {
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
		if context.final_scoring_step then
			if context.cardarea then
				for k, v in ipairs(context.scoring_hand) do
					G.E_MANAGER:add_event(Event({
						trigger = "before",
						delay = 1,
						func = function()
							v:juice_up(0.3, 0.4)
							v:flip()
							play_sound("card1")
							local id = G.play.cards[1]:get_id()
							local id2 = v:get_id()
							local id3 = id - id2
							if id3 < 0 then
								assert(SMODS.modify_rank(v, -id3))
							elseif id3 > 0 then
								assert(SMODS.modify_rank(v, id3))
							end
							return true
						end,
					}))
					G.E_MANAGER:add_event(Event({
						trigger = "after",
						delay = 1,
						func = function()
							v:flip()
							v:juice_up(0.3, 0.4)
							return true
						end,
					}))
				end
			end
		end
		if context.joker_main and next(context.poker_hands["Flush"]) then
			card:start_dissolve(nil, 1.6)
		end
	end,
})

--skipped obesophobia

--[[ i fucked this up and i do not know how ;-;
SMODS.Joker({
	key = "Musophobia",
	config = {
		extra = {},
	},
	rarity = "cry_epic",
	blueprint_compat = true,
	discovered = false,
	pos = {
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
		local changed = false
		
	end,
})
]]
--

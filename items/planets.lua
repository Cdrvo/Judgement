SMODS.Consumable({
	key = "shootingstar",
	set = "Planet",

	config = { level = 1 ,extra = {odds = 5}},
	loc_vars = function(self, info_queue, card)
		return {
			vars = {
				(G.GAME.probabilities.normal or 1), card.ability.extra.odds, self.config.level
			},
		}
	end,
	can_use = function(self, card)
		return true
	end,
	use = function(self, card, area, copier)
		local used_consumable = copier or card
		local _hand, _tally = nil, -1
		for k, v in ipairs(G.handlist) do
			if G.GAME.hands[v].visible and G.GAME.hands[v].played > _tally then
				_hand = v
				_tally = G.GAME.hands[v].played
			end
		end
    if pseudorandom("shootingstar") < G.GAME.probabilities.normal /card.ability.extra.odds or card.ability.cry_rigged then
		update_hand_text({ sound = "button", volume = 0.7, pitch = 0.8, delay = 0.3 }, {
			handname = localize(_hand, "poker_hands"),
			chips = G.GAME.hands[_hand].chips,
			mult = G.GAME.hands[_hand].mult,
			level = G.GAME.hands[_hand].level,
		})
		level_up_hand(used_consumable, _hand, nil, self.config.level)
		update_hand_text(
			{ sound = "button", volume = 0.7, pitch = 1.1, delay = 0 },
			{
				mult = 0,
				chips = 0,
				handname = localize(_hand, "poker_hands"),
				level = G.GAME.hands[_hand].level,
			}
		)
    else
        G.E_MANAGER:add_event(Event({
				trigger = "after",
				delay = 0.4,
				func = function()
					attention_text({
						text = localize("k_nope_ex"),
						scale = 1.3,
						hold = 1.4,
						major = used_consumable,
						backdrop_colour = G.C.SECONDARY_SET.Planet,
						align = (
							G.STATE == G.STATES.TAROT_PACK
							or G.STATE == G.STATES.SPECTRAL_PACK
							or G.STATE == G.STATES.SMODS_BOOSTER_OPENED
						)
								and "tm"
							or "cm",
						offset = {
							x = 0,
							y = (
								G.STATE == G.STATES.TAROT_PACK
								or G.STATE == G.STATES.SPECTRAL_PACK
								or G.STATE == G.STATES.SMODS_BOOSTER_OPENED
							)
									and -0.2
								or 0,
						},
						silent = true,
					})
					G.E_MANAGER:add_event(Event({
						trigger = "after",
						delay = 0.06 * G.SETTINGS.GAMESPEED,
						blockable = false,
						blocking = false,
						func = function()
							play_sound("tarot2", 0.76, 0.4)
							return true
						end,
					}))
					play_sound("tarot2", 1, 0.4)
					used_consumable:juice_up(0.3, 0.5)
					return true
				end,
			}))
		end
	end
})

SMODS.Consumable({
	key = "smertrios",
	set = "Planet",

	config = { hand_type = "jud_blackjack", softlock = true },
	loc_vars = function(self, info_queue, center)
		return {
			vars = {
				localize("jud_blackjack", "poker_hands"),
				G.GAME.hands["jud_blackjack"].level,
				G.GAME.hands["jud_blackjack"].l_mult,
				G.GAME.hands["jud_blackjack"].l_chips,
				colours = {
					((to_big(G.GAME.hands["jud_blackjack"].level) == to_big(1)) and G.C.UI.TEXT_DARK),
				},
			},
		}
	end,
})

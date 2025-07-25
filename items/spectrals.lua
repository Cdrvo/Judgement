SMODS.Consumable({
	key = "worship",
	set = "Spectral",
	config = {},
	loc_vars = function(self, info_queue)
		return { vars = {} }
	end,
	can_use = function(self, card)
		return true
	end,
	use = function(self, card, area, copier)
		G.E_MANAGER:add_event(Event({
			func = function()
				add_tag(Tag("tag_jud_packtag"))
				play_sound("generic1", 0.9 + math.random() * 0.1, 0.8)
				play_sound("holo1", 1.2 + math.random() * 0.1, 0.4)
				return true
			end,
		}))
	end,
})


SMODS.Consumable({
	key = "wormhole",
	set = "Spectral",
	hidden = true,
	soul_set = "Planet",
	soul_rate = 0.003,
	atlas = "jplanet",
	pos = {x=0,y=0},
	config = { odds = 5 },
	loc_vars = function(self, info_queue, center)
		local _hand, _tally = nil, -1
		for k, v in ipairs(G.handlist) do
			if G.GAME.hands[v].visible and G.GAME.hands[v].played > _tally then
				_hand = v
				_tally = G.GAME.hands[v].played
			end
		end
		return {
			vars = {
				(G.GAME.probabilities.normal or 1),
				self.config.odds,
				G.GAME.hands[_hand].level,
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
		if pseudorandom("shootingstar") < G.GAME.probabilities.normal / self.config.odds then
			update_hand_text({ sound = "button", volume = 0.7, pitch = 0.8, delay = 0.3 }, {
				handname = localize(_hand, "poker_hands"),
				chips = G.GAME.hands[_hand].chips,
				mult = G.GAME.hands[_hand].mult,
				level = G.GAME.hands[_hand].level,
			})
			level_up_hand(used_consumable, _hand, nil, Judgement.factorial(G.GAME.hands[_hand].level))
			update_hand_text({ sound = "button", volume = 0.7, pitch = 1.1, delay = 0 }, {
				mult = 0,
				chips = 0,
				handname = localize(_hand, "poker_hands"),
				level = G.GAME.hands[_hand].level,
			})
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
						backdrop_colour = G.C.SECONDARY_SET.Spectral,
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
	end,
})

SMODS.Consumable({
	key = "ufo",
	set = "Spectral",
	config = {
        ante = 1
    },
	loc_vars = function(self, info_queue)
		return { vars = {self.config.ante} }
	end,
	can_use = function(self, card)
		return true
	end,
	use = function(self, card, area, copier)
		ease_ante(-self.config.ante)
	end,
})

SMODS.Consumable({
	key = "fivebucks",
	set = "Spectral",
	hidden = true,
	soul_set = "monopoly",
	config = {
        ante = 500
    },
	loc_vars = function(self, info_queue)
		return { vars = {self.config.ante} }
	end,
	can_use = function(self, card)
		return true
	end,
	use = function(self, card, area, copier)
		ease_dollars(self.config.ante)
	end,
})


SMODS.Consumable({
	key = "fivebucksc",
	set = "Spectral",
	hidden = true,
	soul_set = "community",
	no_collection = true,
	config = {
        ante = 500
    },
	loc_vars = function(self, info_queue)
		return { vars = {self.config.ante} }
	end,
	can_use = function(self, card)
		return true
	end,
	use = function(self, card, area, copier)
		ease_dollars(self.config.ante)
	end,
})


SMODS.Consumable({
	key = "parkplace",
	set = "Spectral",
	hidden = true,
	soul_set = "titledeeds",
	config = {
        payout = 9.5
    },
	loc_vars = function(self, info_queue)
		return { vars = {self.config.ante} }
	end,
	can_use = function(self, card)
		return true
	end,
	use = function(self, card, area, copier)
		local jud = card.ability.extra
		SMODS.add_card{
			set = "Joker",
			legendary = true,
			area = G.jokers
		}
		G.E_MANAGER:add_event(Event({
			trigger = "before",
			delay = 0.2,
			func = function()
				card:flip()
				card:set_ability("c_jud_flippeddeeds")
				return true
			end,
		}))
		G.E_MANAGER:add_event(Event({
			trigger = "after",
			delay = 0.2,
			func = function()
				card:flip()
				return true
			end,
		}))
	end,
	add_to_deck = function(self, card, from_debuff)
		local jud = card.ability.extra
		G.GAME.jud_cashout = G.GAME.jud_cashout + jud.payout
	end,
	remove_from_deck = function(self, card, from_debuff)
		local jud = card.ability.extra
		G.GAME.jud_cashout = G.GAME.jud_cashout - jud.payout
	end,
})

SMODS.Consumable({
	key = "parkplace",
	set = "Spectral",
	hidden = true,
	soul_set = "titledeeds",
	soul_rate = 0.001,
	config = {
        payout = 50
    },
	loc_vars = function(self, info_queue)
		return { vars = {self.config.ante} }
	end,
	can_use = function(self, card)
		return true
	end,
	use = function(self, card, area, copier)
		local jud = card.ability.extra
		SMODS.destroy_cards(card)
	end,
	add_to_deck = function(self, card, from_debuff)
		local jud = card.ability.extra
		G.GAME.jud_cashout = G.GAME.jud_cashout + jud.payout
	end,
	remove_from_deck = function(self, card, from_debuff)
		local jud = card.ability.extra
		G.GAME.jud_cashout = G.GAME.jud_cashout - jud.payout
	end,
})

SMODS.Sticker({
	key = "temporary",
	badge_colour = HEX("8b0000"),
	pos = {
		x = 0,
		y = 0,
	},
	atlas = "stickers",
	sets = {
		Joker = true,
	},
	config = {
		timer = 0,
	},
	loc_vars = function(self, info_queue)
		return { vars = { self.config.timer } }
	end,
	rate = 0.2,
	needs_enable_flag = true,
	calculate = function(self, card, context)
		if context.end_of_round and context.main_eval and not context.blueprint then
			card:start_dissolve({ HEX("57ecab") }, nil, 1.6)
		end
	end,
})

--All Draw One

SMODS.Sticker({
	key = "alldrawone_a",
	badge_colour = HEX("8b0000"),
	pos = {
		x = 0,
		y = 0,
	},
	config = {
		dollars = 2,
	},
	sets = {
		uno = true,
	},
	loc_vars = function(self, info_queue)
		return { vars = { self.config.dollars } }
	end,
	rate = 0.2,
	needs_enable_flag = true,
	calculate = function(self, card, context)
		local jud = self.config
		if context.jud_cons_destroyed and context.jud_destroyedc == card then
			if not G.GAME.used_vouchers["v_jud_unostickerstier"] == true then
				ease_dollars(-jud.dollars)
			end
			SMODS.calculate_context({ flex_destroyed = true, destroyedflex = self, destroyedflexcard = card })
			local _rank = pseudorandom_element(SMODS.Ranks, pseudoseed("alldrawone")).key
			Judgement.playing_card(G.hand, _rank, "Hearts", SMODS.poll_enhancement({ guaranteed = true }))
		end
	end,
})

SMODS.Sticker({
	key = "alldrawone_b",
	badge_colour = HEX("8b0000"),
	pos = {
		x = 0,
		y = 0,
	},
	config = {
		dollars = 2,
	},
	sets = {
		uno = true,
	},
	loc_vars = function(self, info_queue)
		return { vars = { self.config.dollars } }
	end,
	no_collection = true,
	rate = 0.2,
	needs_enable_flag = true,
	calculate = function(self, card, context)
		local jud = self.config
		if context.jud_cons_destroyed and context.jud_destroyedc == card then
			if not G.GAME.used_vouchers["v_jud_unostickerstier"] == true then
				ease_dollars(-jud.dollars)
			end
			SMODS.calculate_context({ flex_destroyed = true, destroyedflex = self, destroyedflexcard = card })
			local _rank = pseudorandom_element(SMODS.Ranks, pseudoseed("alldrawone")).key
			Judgement.playing_card(G.hand, _rank, "Diamonds", SMODS.poll_enhancement({ guaranteed = true }))
		end
	end,
})

SMODS.Sticker({
	key = "alldrawone_c",
	badge_colour = HEX("8b0000"),
	pos = {
		x = 0,
		y = 0,
	},
	config = {
		dollars = 2,
	},
	sets = {
		uno = true,
	},
	loc_vars = function(self, info_queue)
		return { vars = { self.config.dollars } }
	end,
	no_collection = true,
	rate = 0.2,
	needs_enable_flag = true,
	calculate = function(self, card, context)
		local jud = self.config
		if context.jud_cons_destroyed and context.jud_destroyedc == card then
			if not G.GAME.used_vouchers["v_jud_unostickerstier"] == true then
				ease_dollars(-jud.dollars)
			end
			SMODS.calculate_context({ flex_destroyed = true, destroyedflex = self, destroyedflexcard = card })
			local _rank = pseudorandom_element(SMODS.Ranks, pseudoseed("alldrawone")).key
			Judgement.playing_card(G.hand, _rank, "Clubs", SMODS.poll_enhancement({ guaranteed = true }))
		end
	end,
})

SMODS.Sticker({
	no_collection = true,
	key = "alldrawone_d",
	badge_colour = HEX("8b0000"),
	pos = {
		x = 0,
		y = 0,
	},
	config = {
		dollars = 2,
	},
	sets = {
		uno = true,
	},
	loc_vars = function(self, info_queue)
		return { vars = { self.config.dollars } }
	end,
	rate = 0.2,
	needs_enable_flag = true,
	calculate = function(self, card, context)
		local jud = self.config
		if context.jud_cons_destroyed and context.jud_destroyedc == card then
			if not G.GAME.used_vouchers["v_jud_unostickerstier"] == true then
				ease_dollars(-jud.dollars)
			end
			SMODS.calculate_context({ flex_destroyed = true, destroyedflex = self, destroyedflexcard = card })
			local _rank = pseudorandom_element(SMODS.Ranks, pseudoseed("alldrawone_a")).key
			Judgement.playing_card(G.hand, _rank, "Spades", SMODS.poll_enhancement({ guaranteed = true }))
		end
	end,
})

--Skip Everyone

SMODS.Sticker({
	key = "skipeveryone_a",
	badge_colour = HEX("8b0000"),
	pos = {
		x = 0,
		y = 0,
	},
	config = {
		dollars = 3,
	},
	sets = {
		uno = true,
	},
	loc_vars = function(self, info_queue)
		return { vars = { self.config.dollars } }
	end,
	rate = 0.2,
	needs_enable_flag = true,
	calculate = function(self, card, context)
		local jud = self.config
		if context.jud_cons_destroyed and context.jud_destroyedc == card then
			if not G.GAME.used_vouchers["v_jud_unostickerstier"] == true then
				ease_dollars(-jud.dollars)
			end
			SMODS.calculate_context({ flex_destroyed = true, destroyedflex = self, destroyedflexcard = card })
			local add
			for i = 1, Judgement.suitcheck("Hearts", G.hand.cards) do
				add = add + 1
			end
			ease_hands_played(add)
		end
	end,
})

SMODS.Sticker({
	key = "skipeveryone_b",
	badge_colour = HEX("8b0000"),
	pos = {
		x = 0,
		y = 0,
	},
	config = {
		dollars = 3,
	},
	sets = {
		uno = true,
	},
	loc_vars = function(self, info_queue)
		return { vars = { self.config.dollars } }
	end,
	no_collection = true,
	rate = 0.2,
	needs_enable_flag = true,
	calculate = function(self, card, context)
		local jud = self.config
		if context.jud_cons_destroyed and context.jud_destroyedc == card then
			if not G.GAME.used_vouchers["v_jud_unostickerstier"] == true then
				ease_dollars(-jud.dollars)
			end
			SMODS.calculate_context({ flex_destroyed = true, destroyedflex = self, destroyedflexcard = card })
			local add
			for i = 1, Judgement.suitcheck("Diamonds", G.hand.cards) do
				add = add + 1
			end
			ease_hands_played(add)
		end
	end,
})

SMODS.Sticker({
	key = "skipeveryone_c",
	badge_colour = HEX("8b0000"),
	pos = {
		x = 0,
		y = 0,
	},
	config = {
		dollars = 3,
	},
	sets = {
		uno = true,
	},
	loc_vars = function(self, info_queue)
		return { vars = { self.config.dollars } }
	end,
	no_collection = true,
	rate = 0.2,
	needs_enable_flag = true,
	calculate = function(self, card, context)
		local jud = self.config
		if context.jud_cons_destroyed and context.jud_destroyedc == card then
			if not G.GAME.used_vouchers["v_jud_unostickerstier"] == true then
				ease_dollars(-jud.dollars)
			end
			SMODS.calculate_context({ flex_destroyed = true, destroyedflex = self, destroyedflexcard = card })
			local add
			for i = 1, Judgement.suitcheck("Clubs", G.hand.cards) do
				add = add + 1
			end
			ease_hands_played(add)
		end
	end,
})

SMODS.Sticker({
	no_collection = true,
	key = "skipeveryone_d",
	badge_colour = HEX("8b0000"),
	pos = {
		x = 0,
		y = 0,
	},
	config = {
		dollars = 3,
	},
	sets = {
		uno = true,
	},
	loc_vars = function(self, info_queue)
		return { vars = { self.config.dollars } }
	end,
	rate = 0.2,
	needs_enable_flag = true,
	calculate = function(self, card, context)
		local jud = self.config
		if context.jud_cons_destroyed and context.jud_destroyedc == card then
			if not G.GAME.used_vouchers["v_jud_unostickerstier"] == true then
				ease_dollars(-jud.dollars)
			end
			SMODS.calculate_context({ flex_destroyed = true, destroyedflex = self, destroyedflexcard = card })
			local add
			for i = 1, Judgement.suitcheck("Spades", G.hand.cards) do
				add = add + 1
			end
			ease_hands_played(add)
		end
	end,
})

--Skip + Reverse

SMODS.Sticker({
	key = "skipreverse_a",
	badge_colour = HEX("8b0000"),
	pos = {
		x = 0,
		y = 0,
	},
	config = {
		dollars = 5,
	},
	sets = {
		uno = true,
	},
	loc_vars = function(self, info_queue)
		return { vars = { self.config.dollars } }
	end,
	rate = 0.2,
	needs_enable_flag = true,
	calculate = function(self, card, context)
		local jud = self.config
		if context.jud_cons_destroyed and context.jud_destroyedc == card then
			local _cards = {}
			if not G.GAME.used_vouchers["v_jud_unostickerstier"] == true then
				ease_dollars(-jud.dollars)
			end
			SMODS.calculate_context({ flex_destroyed = true, destroyedflex = self, destroyedflexcard = card })
			if Cryptid.safe_get(G.GAME, "blind", "in_blind") then
				for i = 1, Judgement.suitcheck("Hearts", G.playing_cards) do
					G.GAME.blind.chips = G.GAME.blind.chips * self.config.blindreq
					G.GAME.blind.chip_text = number_format(G.GAME.blind.chips)
				end
				for i = 1, #G.hand.cards do
					if G.hand.cards[i]:is_suit("Hearts") then
						_cards[#_cards + 1] = G.hand.cards[i]
					end
				end
				ease_hands_played(Judgement.find_lowest(_cards).base.id)
			end
		end
	end,
})

SMODS.Sticker({
	key = "skipreverse_b",
	badge_colour = HEX("8b0000"),
	pos = {
		x = 0,
		y = 0,
	},
	config = {
		dollars = 3,
	},
	sets = {
		uno = true,
	},
	loc_vars = function(self, info_queue)
		return { vars = { self.config.dollars } }
	end,
	no_collection = true,
	rate = 0.2,
	needs_enable_flag = true,
	calculate = function(self, card, context)
		local jud = self.config
		if context.jud_cons_destroyed and context.jud_destroyedc == card then
			if not G.GAME.used_vouchers["v_jud_unostickerstier"] == true then
				ease_dollars(-jud.dollars)
			end
			SMODS.calculate_context({ flex_destroyed = true, destroyedflex = self, destroyedflexcard = card })
			local _cards = {}
			if Cryptid.safe_get(G.GAME, "blind", "in_blind") then
				for i = 1, Judgement.suitcheck("Diamonds", G.playing_cards) do
					G.GAME.blind.chips = G.GAME.blind.chips * self.config.blindreq
					G.GAME.blind.chip_text = number_format(G.GAME.blind.chips)
				end
				for i = 1, #G.hand.cards do
					if G.hand.cards[i]:is_suit("Diamonds") then
						_cards[#_cards + 1] = G.hand.cards[i]
					end
				end
				ease_hands_played(Judgement.find_lowest(_cards).base.id)
			end
		end
	end,
})

SMODS.Sticker({
	key = "skipreverse_c",
	badge_colour = HEX("8b0000"),
	pos = {
		x = 0,
		y = 0,
	},
	config = {
		dollars = 3,
	},
	sets = {
		uno = true,
	},
	loc_vars = function(self, info_queue)
		return { vars = { self.config.dollars } }
	end,
	no_collection = true,
	rate = 0.2,
	needs_enable_flag = true,
	calculate = function(self, card, context)
		local jud = self.config
		if context.jud_cons_destroyed and context.jud_destroyedc == card then
			if not G.GAME.used_vouchers["v_jud_unostickerstier"] == true then
				ease_dollars(-jud.dollars)
			end
			SMODS.calculate_context({ flex_destroyed = true, destroyedflex = self, destroyedflexcard = card })
			local _cards = {}
			if Cryptid.safe_get(G.GAME, "blind", "in_blind") then
				for i = 1, Judgement.suitcheck("Clubs", G.playing_cards) do
					G.GAME.blind.chips = G.GAME.blind.chips * self.config.blindreq
					G.GAME.blind.chip_text = number_format(G.GAME.blind.chips)
				end
				for i = 1, #G.hand.cards do
					if G.hand.cards[i]:is_suit("Clubs") then
						_cards[#_cards + 1] = G.hand.cards[i]
					end
				end
				ease_hands_played(Judgement.find_lowest(_cards).base.id)
			end
		end
	end,
})

SMODS.Sticker({
	no_collection = true,
	key = "skipreverse_d",
	badge_colour = HEX("8b0000"),
	pos = {
		x = 0,
		y = 0,
	},
	config = {
		dollars = 3,
	},
	sets = {
		uno = true,
	},
	loc_vars = function(self, info_queue)
		return { vars = { self.config.dollars } }
	end,
	rate = 0.2,
	needs_enable_flag = true,
	calculate = function(self, card, context)
		local jud = self.config
		if context.jud_cons_destroyed and context.jud_destroyedc == card then
			if not G.GAME.used_vouchers["v_jud_unostickerstier"] == true then
				ease_dollars(-jud.dollars)
			end
			SMODS.calculate_context({ flex_destroyed = true, destroyedflex = self, destroyedflexcard = card })
			local _cards = {}
			if Cryptid.safe_get(G.GAME, "blind", "in_blind") then
				for i = 1, Judgement.suitcheck("Spades", G.playing_cards) do
					G.GAME.blind.chips = G.GAME.blind.chips * self.config.blindreq
					G.GAME.blind.chip_text = number_format(G.GAME.blind.chips)
				end
				for i = 1, #G.hand.cards do
					if G.hand.cards[i]:is_suit("Spades") then
						_cards[#_cards + 1] = G.hand.cards[i]
					end
				end
				ease_hands_played(Judgement.find_lowest(_cards).base.id)
			end
		end
	end,
})

--Targeted Draw 2

SMODS.Sticker({
	key = "targeteddraw_a",
	badge_colour = HEX("8b0000"),
	pos = {
		x = 0,
		y = 0,
	},
	config = {
		dollars = 1,
	},
	sets = {
		uno = true,
	},
	loc_vars = function(self, info_queue)
		return { vars = { self.config.dollars } }
	end,
	rate = 0.2,
	needs_enable_flag = true,
	calculate = function(self, card, context)
		local jud = self.config
		if context.jud_cons_destroyed and context.jud_destroyedc == card then
			local _cards = {}
			if not G.GAME.used_vouchers["v_jud_unostickerstier"] == true then
				ease_dollars(-jud.dollars)
			end
			SMODS.calculate_context({ flex_destroyed = true, destroyedflex = self, destroyedflexcard = card })
			local _suit, _rank =
				pseudorandom_element(SMODS.Suits, pseudoseed("unowild")).card_key,
				pseudorandom_element(faces, pseudoseed("unowild")).card_key
			Judgement.playing_card(G.deck, _rank, _suit, SMODS.poll_enhancement({ guaranteed = true }))
		end
	end,
})

--All Draw Two

SMODS.Sticker({
	key = "alldrawtwo_a",
	badge_colour = HEX("8b0000"),
	pos = {
		x = 0,
		y = 0,
	},
	config = {
		dollars = 5,
		ammount = 2,
	},
	sets = {
		uno = true,
	},
	loc_vars = function(self, info_queue)
		return { vars = { self.config.dollars,self.config.ammount } }
	end,
	rate = 0.2,
	needs_enable_flag = true,
	calculate = function(self, card, context)
		local jud = self.config
		if context.jud_cons_destroyed and context.jud_destroyedc == card then
			local _cards = {}
			if not G.GAME.used_vouchers["v_jud_unostickerstier"] == true then
				ease_dollars(-jud.dollars)
			end
			SMODS.calculate_context({ flex_destroyed = true, destroyedflex = self, destroyedflexcard = card })
			if Cryptid.safe_get(G.GAME, "blind", "in_blind") then
				for i = 1, jud.ammount do
					local ccard = Judgement.find_lowest(G.hand.cards, true)
					copy_card(ccard)
					ccard:set_seal(SMODS.poll_seal({ guaranteed = true }), true, false)
					ccard:set_edition(poll_edition(pseudorandom("alldrawtwo_a"), nil, true, true))
					ccard:add_to_deck()
					G.hand:emplace(ccard)
				end
			end
		end
	end,
})

--Targeted Draw 4

SMODS.Sticker({
	key = "targeteddrawfour_a",
	badge_colour = HEX("8b0000"),
	pos = {
		x = 0,
		y = 0,
	},
	config = {
		dollars = 4,
	},
	sets = {
		uno = true,
	},
	loc_vars = function(self, info_queue)
		return { vars = { self.config.dollars } }
	end,
	rate = 0.2,
	needs_enable_flag = true,
	calculate = function(self, card, context)
		local jud = self.config
		if context.jud_cons_destroyed and context.jud_destroyedc == card then
			local _cards = {}
			local faces = {}
			for _, v in ipairs(SMODS.Rank.obj_buffer) do
				local r = SMODS.Ranks[v]
				if r.face then
					table.insert(faces, r)
				end
			end
			SMODS.calculate_context({ flex_destroyed = true, destroyedflex = self, destroyedflexcard = card })
			for i = 1, jud.dollars do
				if not G.GAME.used_vouchers["v_jud_unostickerstier"] == true then
					ease_dollars(-jud.dollars)
				end
				local _suit, _rank =
					pseudorandom_element(SMODS.Suits, pseudoseed("unowild")).card_key,
					pseudorandom_element(faces, pseudoseed("unowild")).card_key
				Judgement.playing_card(G.deck, _rank, _suit, SMODS.poll_enhancement({ guaranteed = true }))
			end
		end
	end,
})

-- U, N, O, !

SMODS.Sticker({
	key = "u",
	badge_colour = HEX("8b0000"),
	pos = {
		x = 2,
		y = 0,
	},
		atlas = "stickers",
	config = {
		dollars = 4,
	},
	sets = {
		uno = true,
	},
	loc_vars = function(self, info_queue)
		return { vars = { self.config.dollars } }
	end,
	rate = 0.2,
	needs_enable_flag = true,
	calculate = function(self, card, context)
		local jud = self.config
		if context.using_consumeable and context.consumeable == card then
			local _cards = {}
			SMODS.calculate_context({ flex_destroyed = true, destroyedflex = self, destroyedflexcard = card })
			draw_card(G.deck, G.hand, 1 * 100 / 1, "up", true)
		end
	end,
})

SMODS.Sticker({
	key = "n",
	badge_colour = HEX("8b0000"),
	pos = {
		x = 3,
		y = 0,
	},
	config = {
		dollars = 4,
	},
	sets = {
		uno = true,
	},
		atlas = "stickers",
	loc_vars = function(self, info_queue)
		return { vars = { self.config.dollars } }
	end,
	rate = 0.2,
	needs_enable_flag = true,
	calculate = function(self, card, context)
		local jud = self.config
		if context.using_consumeable and context.consumeable == card then
			local _cards = {}
			SMODS.calculate_context({ flex_destroyed = true, destroyedflex = self, destroyedflexcard = card })
			if G.consumeables.config.total_limit > #G.consumeables.cards then
				SMODS.add_card({
					set = "Code",
				})
			end
		end
	end,
})

SMODS.Sticker({
	key = "o",
	badge_colour = HEX("8b0000"),
	pos = {
		x = 4,
		y = 0,
	},
	config = {
		dollars = 4,
	},
	sets = {
		uno = true,
	},
		atlas = "stickers",
	loc_vars = function(self, info_queue)
		return { vars = { self.config.dollars } }
	end,
	rate = 0.2,
	needs_enable_flag = true,
	calculate = function(self, card, context)
		local jud = self.config
		if context.using_consumeable and context.consumeable == card then
			local _cards = {}
			SMODS.calculate_context({ flex_destroyed = true, destroyedflex = self, destroyedflexcard = card })
			if G.consumeables.config.total_limit > #G.consumeables.cards then
				SMODS.add_card({
					set = "Tarot",
				})
			end
		end
	end,
})

SMODS.Sticker({
	key = "ex",
	badge_colour = HEX("8b0000"),
	pos = {
		x = 5,
		y = 0,
	},
	config = {
		dollars = 4,
	},
	sets = {
		uno = true,
	},	
		atlas = "stickers",
	loc_vars = function(self, info_queue)
		return { vars = { self.config.dollars } }
	end,
	rate = 0.2,
	needs_enable_flag = true,
	calculate = function(self, card, context)
		local jud = self.config
		if context.using_consumeable and context.consumeable == card then
			local _cards = {}
			SMODS.calculate_context({ flex_destroyed = true, destroyedflex = self, destroyedflexcard = card })
			if G.consumeables.config.total_limit > #G.consumeables.cards then
				SMODS.add_card({
					set = "Spectral",
				})
			end
		end
	end,
})

-- Uno Wild Jackpot
SMODS.Sticker({
	key = "wildjackpot",
	badge_colour = HEX("8b0000"),
	pos = {
		x = 1,
		y = 0,
	},
	sets = {
		uno = true,
	},
		atlas = "stickers",
	loc_vars = function(self, info_queue)
		return { vars = { self.config.dollars,self.config.odds } }
	end,
	config = {
		dollars = 4,
		odds = 4,
	},
	rate = 0.2,
	needs_enable_flag = true,
	calculate = function(self, card, context)
		local jud = self.config
		if context.jud_cons_destroyed and context.jud_destroyedc == card then
			local _cards = {}
			SMODS.calculate_context({ flex_destroyed = true, destroyedflex = self, destroyedflexcard = card })
			if pseudorandom("wildjackpot") < G.GAME.probabilities.normal / jud.odds then
				ease_dollars(#G.deck.cards)
			end
		end
	end,
})

--SMODS.Stickers[""]:apply(G.consumeables.cards[1], true)

SMODS.Atlas({
	key = "modicon",
	path = "jud_icon.png",
	px = 34,
	py = 34,
})

SMODS.Atlas({
	key = "exotics",
	path = "exotics.png",
	px = 71,
	py = 95,
})

SMODS.Atlas({
	key = "enh",
	path = "enhancements.png",
	px = 71,
	py = 95,
})

SMODS.Atlas({
	key = "runes",
	path = "runes.png",
	px = 65,
	py = 95,
})

SMODS.Atlas({
	key = "unoc",
	path = "unocards.png",
	px = 71,
	py = 95,
})

SMODS.Atlas({
	key = "leg",
	path = "legendary.png",
	px = 71,
	py = 95,
})

SMODS.Atlas({
	key = "jepic",
	path = "epics.png",
	px = 71,
	py = 95,
})

SMODS.Atlas({
	key = "uncj",
	path = "uncommons.png",
	px = 71,
	py = 95,
})
SMODS.Atlas({
	key = "rares",
	path = "rares.png",
	px = 71,
	py = 95,
})

SMODS.Atlas({
	key = "cursj",
	path = "cursed.png",
	px = 71,
	py = 95,
})

SMODS.Atlas({
	key = "commons",
	path = "commons.png",
	px = 71,
	py = 95,
})

SMODS.Atlas({
	key = "jplanet",
	path = "planets.png",
	px = 71,
	py = 95,
})

SMODS.Atlas({
	key = "boons",
	path = "boons.png",
	px = 42,
	py = 42,
})

SMODS.Atlas({
	key = "avenues",
	path = "deeds.png",
	px = 75,
	py = 99,
})

function Judgement.suitcheck(suit, area)
	local suitcheck = 0
	if G.playing_cards then
		for _, v in pairs(area) do
			if v:is_suit(suit, nil, true) then
				suitcheck = suitcheck + 1
			end
		end
		return suitcheck
	end
	return 0
end

--This did not need a function
function Judgement.discard(ammount, area)
	G.E_MANAGER:add_event(Event({
		trigger = "before",
		delay = 1,
		func = function()
			local any_selected = nil
			local _cards = {}
			for i = 1, #area do
				_cards[#_cards + 1] = area[i]
			end
			Judgement.discard_limit(ammount)
			for i = 1, ammount do
				if #area > 0 then
					local selected_card, card_key = pseudorandom_element(_cards, pseudoseed("hook"))
					G.hand:add_to_highlighted(selected_card, true)
					table.remove(_cards, card_key)
					any_selected = true
					play_sound("card1", 1)
				end
			end
			if any_selected then
				G.FUNCS.discard_cards_from_highlighted(nil, true)
				Judgement.discard_limit(-ammount)
			end
			return true
		end,
	}))
	G.E_MANAGER:add_event(Event({
		trigger = "after",
		delay = 1,
		func = function()
			if ammount > #area then
				for i = 1, #area do
					draw_card(G.deck, G.hand, i * 100 / #area, "up", true)
				end
			elseif ammount <= #area then
				for i = 1, ammount do
					draw_card(G.deck, G.hand, i * 100 / ammount, "up", true)
				end
			end
			return true
		end,
	}))
end

--Silent discard and play increase (idk if exists)
--Taken straight from SMODS

function Judgement.discard_limit(mod)
	G.GAME.starting_params.discard_limit = G.GAME.starting_params.discard_limit + mod
	if G.GAME.starting_params.discard_limit < 0 then
		sendErrorMessage("Discard limit is less than 0", "HandLimitAPI")
	end
	G.hand.config.highlighted_limit =
		math.max(G.GAME.starting_params.discard_limit, G.GAME.starting_params.play_limit, 5)
end

function Judgement.play_limit(mod)
	G.GAME.starting_params.play_limit = G.GAME.starting_params.play_limit + mod
	if G.GAME.starting_params.play_limit < 1 then
		sendErrorMessage("Play limit is less than 1", "HandLimitAPI")
	end
	G.hand.config.highlighted_limit =
		math.max(G.GAME.starting_params.discard_limit, G.GAME.starting_params.play_limit, 5)
end

function Judgement.total_limit(mod, silent)
	if silent then
		Judgement.discard_limit(mod)
		Judgement.play_limit(mod)
	else
		SMODS.change_discard_limit(mod)
		SMODS.change_play_limit(mod)
	end
end

function Judgement.defeat()
		G.GAME.chips = G.GAME.blind.chips
		G.STATE = G.STATES.HAND_PLAYED
		G.STATE_COMPLETE = true
		end_round()
	end

function Judgement.find_lowest(area, reverse)
	if reverse then
		local low = 1
		local key = nil
		for i = 1, #area do
			if low <= area[i].base.id then
				low = area[i].base.id
				key = area[i]
			end
		end
		return key
	else
		local high = 15
		local key = nil
		for i = 1, #area do
			if high >= area[i].base.id then
				high = area[i].base.id
				key = area[i]
			end
		end
		return key
	end
end

function Judgement.add_tag(random, ammount, key)
	if random and ammount then
		local tags = {}
		for k, v in pairs(G.P_TAGS) do
			table.insert(tags, v.key)
		end
		play_sound("generic1", 0.9 + math.random() * 0.1, 0.8)
		play_sound("holo1", 1.2 + math.random() * 0.1, 0.4)
		for i = 1, ammount do
			G.E_MANAGER:add_event(Event({
				func = function()
					add_tag(Tag(pseudorandom_element(tags, pseudoseed("jud_add_tag"))))
					return true
				end,
			}))
		end
	elseif key then
		play_sound("generic1", 0.9 + math.random() * 0.1, 0.8)
		play_sound("holo1", 1.2 + math.random() * 0.1, 0.4)
		for i = 1, ammount do
			G.E_MANAGER:add_event(Event({
				func = function()
					add_tag(Tag(key))
					return true
				end,
			}))
		end
	end
end

function Judgement.random_joker(area)
	local jokers = {}
	for i = 1, #area do
		jokers[#jokers + 1] = area[i]
	end
	local result = pseudorandom_element(jokers, pseudoseed("jud_random_joker"))
	return result
end

function Judgement.level_up_hand(hand, level)
	update_hand_text({ sound = "button", volume = 0.7, pitch = 0.8, delay = 0.3 }, {
		handname = localize(hand, "poker_hands"),
		chips = G.GAME.hands[hand].chips,
		mult = G.GAME.hands[hand].mult,
		level = G.GAME.hands[hand].level,
	})
	level_up_hand(used_consumable, hand, nil, level)
	update_hand_text({ sound = "button", volume = 0.7, pitch = 1.1, delay = 0 }, {
		mult = 0,
		chips = 0,
		handname = localize(hand, "poker_hands"),
		level = G.GAME.hands[hand].level,
	})
end

function Judgement.most_played()
	local _hand, _tally = nil, -1
	for k, v in ipairs(G.handlist) do
		if G.GAME.hands[v].visible and G.GAME.hands[v].played > _tally then
			_hand = v
			_tally = G.GAME.hands[v].played
		end
	end
	return _hand
end

--like idk bro idk i can NEVER get this shit to work and its pissing me off. After writing this i learnt that SMODS.add_card{} can be used to create playing cards. I wont be bothering myself and keep using this one.
function Judgement.playing_card(area, rank, suit, enhancement, edition, stickers, seal)
	local acard = create_playing_card({
		front = G.P_CARDS["" .. "_" .. ""],
		center = G.P_CENTERS[""],
	}, area, nil, nil, { G.C.SECONDARY_SET.Enhanced })
	SMODS.change_base(acard, suit, rank)
	if enhancement ~= nil then
		acard:set_ability(enhancement)
	end
	if stickers ~= nil then
		for i = 1, #stickers do
			SMODS.Stickers[stickers[i]]:apply(acard, true)
		end
	end
	if seal ~= nil then
		acard:set_seal(seal)
	end
	if edition ~= nil then
		acard:set_edition(edition)
	end
	return acard
end

function Judgement.create_booster(pack)
	local key = pack
	local card = Card(
		G.play.T.x + G.play.T.w / 2 - G.CARD_W * 1.27 / 2,
		G.play.T.y + G.play.T.h / 2 - G.CARD_H * 1.27 / 2,
		G.CARD_W * 1.27,
		G.CARD_H * 1.27,
		G.P_CARDS.empty,
		G.P_CENTERS[key],
		{ bypass_discovery_center = true, bypass_discovery_ui = true }
	)
	card.cost = 0
	G.FUNCS.use_card({ config = { ref_table = card } })
	card:start_materialize()
	return true
end

-- So its easier to remember! :DDDDD NOT FUCKING NEEDED I KNOW. but i like it
function Judgement.facepool()
	local faces = {}
	for _, v in ipairs(SMODS.Rank.obj_buffer) do
		local r = SMODS.Ranks[v]
		if r.face then
			table.insert(faces, r)
		end
	end
	return faces
end

function Judgement.factorial(mod)
	if to_big(mod) <= to_big(0) then
		return 1
	else
		return mod * Judgement.factorial(mod - 1)
	end
end

SMODS.ObjectType({
	key = "CommonDeeds",
	cards = {},
})
SMODS.ObjectType({
	key = "UncommonDeeds",
	cards = {},
})

SMODS.ObjectType({
	key = "RareDeeds",
	cards = {},
})

SMODS.ObjectType({
	key = "LegendaryDeeds",
	cards = {},
})

SMODS.ObjectType({
	key = "Utilities",
	cards = {},
})

SMODS.ObjectType({
	key = "Railroads",
	cards = {},
})

SMODS.ObjectType({
	key = "UnoRed",
	cards = {},
})

SMODS.ObjectType({
	key = "UnoYellow",
	cards = {},
})

SMODS.ObjectType({
	key = "UnoBlue",
	cards = {},
})

SMODS.ObjectType({
	key = "UnoGreen",
	cards = {},
})

Judgement.C = {
	BOONSB = HEX("a6f7f3"),
	SPACK = HEX("81307d"),
	CHANCE = HEX("E1C16E"),
	COMMUNITY = HEX("DAA520"),
	DEEDS = HEX("C70039"),
	UNOC = HEX("ff0000"),
}

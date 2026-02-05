local CardAreaold = CardArea.emplace
function CardArea:emplace(card, location, stay_flipped)
	if self == G.consumeables and (card.ability.set == "pills") then
		G.jud_pill:emplace(card, location, stay_flipped)
		return
	end
	if self == G.consumeables and (card.ability.set == "boons") then
		G.jud_boons:emplace(card, location, stay_flipped)
		return
	end

	CardAreaold(self, card, location, stay_flipped)
end

local removeold = Card.remove
function Card:remove()
	if self.ability.set == "Joker" and self.added_to_deck then
		if self.area == G.jokers then
			if self.config.center.key ~= "j_jud_finismortis" then
				table.insert(G.GAME.jud_destroyed, self)
			end
			G.GAME.jokersdestroyed = G.GAME.jokersdestroyed + 1
			SMODS.calculate_context({
				jud_joker_destroyed = true,
				jud_destroyedj = self,
			})
		end
	end
	if self.ability.consumeable and self.added_to_deck then
		SMODS.calculate_context({
			jud_cons_destroyed = true,
			jud_destroyedc = self,
		})
	end
	if #SMODS.find_card("j_jud_thanatophobia") == 0 then
		removeold(self)
	end
end


local oldaddroundevalrow = add_round_eval_row
function add_round_eval_row(config)
if config.dollars == nil then
	sendWarnMessage("Couldn't multiply payout. Potentially caused by Paya's Terrible Additions","Judgement")
else
	if G.GAME.jud_cashout > 0 then
		config.dollars = config.dollars * G.GAME.jud_cashout * G.GAME.jud_crypto
	else
		config.dollars = config.dollars * G.GAME.jud_crypto
	end
end
	return oldaddroundevalrow(config)
end

local consuse = set_consumeable_usage
function set_consumeable_usage(card)
	if card.config.center.set == "Spectral" then
		if pseudorandom("spectral") < 1 / G.GAME.jud_curse then
			G.GAME.jud_curse = 100
			SMODS.add_card({ set = "Joker", rarity = (Judgement.prefix_extra .. "_cursed"), area = G.jokers })
		else
			G.GAME.jud_curse = G.GAME.jud_curse - 5
		end
	end
	return consuse(card)
end

local easedolold = ease_dollars
function ease_dollars(mod, instant)
	if (#SMODS.find_card("j_jud_chrometophobia") >= 1) and pseudorandom("jud_dollars") < 2 / 3 then
	else
		SMODS.calculate_context({
			jud_easedollar = to_big(mod),
		})
		return easedolold(mod, instant)
	end
end

local levelupold = level_up_hand
function level_up_hand(card, hand, instant, amount)
	SMODS.calculate_context({
		jud_upgraded = true,
	})
	return levelupold(card, hand, instant, amount)
end

local isfaceold = Card.is_face
function Card:is_face(from_boss)
	if self.debuff and not from_boss then
		return
	end
	if self.ability.seal == "jud_reversal" or (#SMODS.find_card("c_jud_mannaz") >= 1) or Judgement.has_post(self, "majestic") then
		return true
	end
	return isfaceold(self, from_boss)
end

local getidold = Card.get_id
function Card:get_id()
	if Judgement.has_post(self, "majestic") then
		return 11
	else
		return self.base.id
	end
end

local getoriginalrankold = Card.get_original_rank
function Card:get_original_rank()
	if Judgement.has_post(self, "majestic") then
		return "Jack"
	else
		return getoriginalrankold
	end
end

local gcp = get_current_pool
function get_current_pool(_type, _rarity, _legendary, _append, override_equilibrium_effect)

	-- taken from cryptid
	if
		(#SMODS.find_card("c_jud_thurisaz") >= 1)
		and not G.GAME.modifiers.cry_equilibrium
		and not G.GAME.jud_reroll
		and (_append == "sho" or _type == "Voucher" or _type == "Booster")
	then
		if
			_type ~= "Enhanced"
			and _type ~= "Edition"
			and _type ~= "Back"
			and _type ~= "Tag"
			and _type ~= "Seal"
			and _type ~= "Stake"
		then
			-- we're regenerating the pool every time because of banned keys but it's fine tbh
			local items = {}
			local valid_pools = { "Joker", "Consumeables", "Voucher", "Booster" }
			for _, id in ipairs(valid_pools) do
				for k, v in pairs(G.P_CENTER_POOLS[id]) do
					if
						v.unlocked == true
						and not v.no_doe 
						and not (G.GAME.banned_keys[v.key] or (G.GAME.cry_banished_keys and not G.GAME.cry_banished_keys[v.key]))
					then
						items[#items + 1] = v.key
					end
				end
			end
			if #items <= 0 then
				items[#items + 1] = "v_blank"
			end
			return items, "anva_directer" .. G.GAME.round_resets.ante
		end
	end
	return gcp(_type, _rarity, _legendary, _append)
end

local alwaysscoreold = SMODS.always_scores
function SMODS.always_scores(card)
	if #SMODS.find_card("c_jud_isa") >= 1 then
		return true
	end
	return alwaysscoreold(card)
end

local suitsold = Card.is_suit
function Card:is_suit(suit, bypass_debuff, flush_calc)
	if flush_calc then
        if Judgement.smeared_border(self, suit) then
            return true
        end
		if #SMODS.find_card("c_jud_love") >= 1 then
			return true
		end
    else
        if self.debuff and not bypass_debuff then return end
        if Judgement.smeared_border(self, suit) then
            return true
        end
		if #SMODS.find_card("c_jud_love") >= 1 then
			return true
		end
    end
	return suitsold(self, suit, bypass_debuff, flush_calc)
end

local endofroundold = Card.get_end_of_round_effect
function Card:get_end_of_round_effect(context)
	if G.GAME.jud_babayaga == true then
		if G.GAME.blind.boss then
			G.GAME.jud_babayaga = false
			Judgement.total_limit(-G.GAME.jud_babayaga_ammount)
		end
	end
	return endofroundold(self, context)
end

local blindsetold = Blind.defeat
function Blind:defeat(silent)
	table.insert(G.GAME.blindsdefeated, self)
	if
		G.GAME.current_round.hands_played == 1
		and G.GAME.round_resets.ante >= 32
		and to_big(G.GAME.chips) > to_big(G.GAME.blind.chips)
	then
		check_for_unlock({ type = "nomercy_voucher" })
	end
	return blindsetold(self, silent)
end

local cardcreateold = create_card
function create_card(_type, area, legendary, _rarity, skip_materialize, soulable, forced_key, key_append)
	local card = cardcreateold(_type, area, legendary, _rarity, skip_materialize, soulable, forced_key, key_append)
	local cardset = card.ability.set
	local center = card and card.config and card.config.center or {}
	local area = area or G.jokers
	if
		_type ~= "Joker"
		and cardset ~= "Default"
		and cardset ~= "Enhanced"
		and (G.GAME.unostickerse and not G.GAME.modifiers.cry_sticker_sheet)
	then
		if (area == G.shop_jokers) or (area == G.pack_cards) then
			if not card.ability.eternal and G.GAME.unostickerse and pseudorandom("jud_sticker") > 0.5 then
				local stickerkeys = {
					"jud_alldrawone_a",
					"jud_alldrawone_b",
					"jud_alldrawone_c",
					"jud_alldrawone_d",
					"jud_skipeveryone_a",
					"jud_skipeveryone_b",
					"jud_skipeveryone_c",
					"jud_skipeveryone_d",
					"jud_skipreverse_a",
					"jud_skipreverse_b",
					"jud_skipreverse_c",
					"jud_skipreverse_d",
					"jud_targeteddraw_a",
					"jud_alldrawtwo_a",
					"jud_targeteddrawfour_a",
					"jud_u",
					"jud_n",
					"jud_o",
					"jud_ex",
					"jud_wildjackpot",
				}
				local stickerkey = pseudorandom_element(stickerkeys)
				SMODS.Stickers[stickerkey]:apply(card, true)
			end
		end
	end
	if
		_type ~= "Joker"
		and cardset ~= "Default"
		and cardset ~= "Enhanced"
		and (G.GAME.unostickerse and not G.GAME.modifiers.cry_sticker_sheet)
	then
		if (area == G.shop_jokers) or (area == G.pack_cards) then
			if not card.ability.eternal and G.GAME.unostickerse and pseudorandom("jud_sticker") > 0.5 then
				local stickerkey = pseudorandom_element(stickerkeys)
				SMODS.Stickers[stickerkey]:apply(card, true)
			end
		end
	end
	return card
end

local useconsold = Card.use_consumeable
function Card:use_consumeable(area, copier)
	if self.ability.set == "uno" and G.GAME.used_vouchers["v_jud_console"] == true then
		if pseudorandom("console") < 1 / 3 then
			local ecard = copy_card(self)
			ecard:add_to_deck()
			G.consumeables:emplace(ecard)
		end
	end
	return useconsold(self, area, copier)
end


local loc_old = loc_colour
function loc_colour(_c, _default)
	if not G.ARGS.LOC_COLOURS then
		loc_old()
	end
	G.ARGS.LOC_COLOURS.jud_uno = Judgement.C.UNOC
	G.ARGS.LOC_COLOURS.jud_exotic = G.C.RARITY.jud_exotic or G.C.RARITY.cry_exotic
	G.ARGS.LOC_COLOURS.jud_epic = G.C.RARITY.jud_epic or G.C.RARITY.cry_epic
	G.ARGS.LOC_COLOURS.jud_cursed = G.C.RARITY.jud_cursed or G.C.RARITY.cry_cursed
	

	return loc_old(_c, _default)
end

if SMODS and SMODS.calculate_individual_effect and not next(SMODS.find_mod("Cryptid")) then
	local calcinvold = SMODS.calculate_individual_effect
	function SMODS.calculate_individual_effect(effect, scored_card, key, amount, from_edition)
		local ret = calcinvold(effect, scored_card, key, amount, from_edition)
		if ret then
			return ret
		end


		-- Emult with no cryptid

		if
			(key == "emult" or key == "e_mult" or key == "Emult" or key == "E_mult")
			and amount ~= 0
		then
			if effect.card then
				juice_card(effect.card)
			end
			mult = mod_chips(mult^amount)
			update_hand_text({ delay = 0 }, { chips = hand_chips, mult = mult })
			card_eval_status_text(scored_card, "extra", nil, nil, nil, { message = amount .. "^Mult" , colour = G.C.DARK_EDITION})
			return true
		end


	end
	for _, v in ipairs({ "emult","e_mult","Emult","E_mult"  }) do
		table.insert(SMODS.calculation_keys, v)
	end
end


--[[local has_no_suit_old = SMODS.has_no_suit
function SMODS.has_no_suit(card)
	local is_wild
    for k, _ in pairs(SMODS.get_enhancements(card)) do
        if k == 'm_wild' or G.P_CENTERS[k].any_suit then is_wild = true end
    end
	if not is_wild then
    	return has_no_suit_old(card)
	end
end]]

--[[function SMODS.has_any_suit(card)
    for k, _ in pairs(SMODS.get_enhancements(card)) do
        if k == 'm_wild' or G.P_CENTERS[k].any_suit then return true end
    end
end]]


local alwaysscoreold = SMODS.always_scores
function SMODS.always_scores(card)
    if card:has_border("border_jud_stone") then
		return true
	end 
	return alwaysscoreold(card)
end


local vanilla = {}
local igo = Game.init_game_object
Game.init_game_object = function(self)
	local ret = igo(self)
	ret.canchips = 0
	ret.jokersdestroyed = 0
	ret.jud_curse = 100
	ret.jud_destroyed = {}
	ret.jud_reroll = false
	ret.jud_skip_tag = nil
	ret.jud_babayaga = false
	ret.jud_babayaga_ammount = 0
	ret.blindsdefeated = {}
	ret.jud_cashout = 0
	ret.jud_crypto = 1
	ret.unostickerse = false
	ret.flipped = false
	return ret
end

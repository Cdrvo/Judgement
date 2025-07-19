Judgement = SMODS.current_mod

to_big = to_big or function(x)
	return x
end

SMODS.load_file("items/misc.lua")()
SMODS.load_file("items/common_jokers.lua")()
SMODS.load_file("items/uncommon_jokers.lua")()
SMODS.load_file("items/rare_jokers.lua")()
SMODS.load_file("items/epic_jokers.lua")()
SMODS.load_file("items/legendary_jokers.lua")()
SMODS.load_file("items/exotic_jokers.lua")()
SMODS.load_file("items/cursed_jokers.lua")()
SMODS.load_file("items/pills.lua")()
SMODS.load_file("items/runes.lua")()
SMODS.load_file("items/boons.lua")()
SMODS.load_file("items/boosters.lua")()
SMODS.load_file("items/tags.lua")()
SMODS.load_file("items/enhancements.lua")()
SMODS.load_file("items/stickers.lua")()
SMODS.load_file("items/seals.lua")()
SMODS.load_file("items/editions.lua")()
SMODS.load_file("items/tarots.lua")()
SMODS.load_file("items/hands.lua")()
SMODS.load_file("items/planets.lua")()
SMODS.load_file("items/spectrals.lua")()
SMODS.load_file("items/cryptics.lua")()
SMODS.load_file("items/poststamps.lua")()
SMODS.load_file("items/uno.lua")()
SMODS.load_file("items/vouchers.lua")()
SMODS.load_file("items/chance.lua")()
SMODS.load_file("items/community.lua")()
SMODS.load_file("items/titledeeds.lua")()
SMODS.load_file("items/stickerpack.lua")()

SMODS.current_mod.optional_features = function()
	return {
		post_trigger = true,
		cardareas = {
			unscored = true,
		},
	}
end

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
	removeold(self)
end

local oldaddroundevalrow = add_round_eval_row
function add_round_eval_row(config)
	if G.GAME.jud_cashout > 0 then
		config.dollars = config.dollars * G.GAME.jud_cashout * G.GAME.jud_crypto
	else
		config.dollars = config.dollars * G.GAME.jud_crypto
	end
	return oldaddroundevalrow(config)
end

local consuse = set_consumeable_usage
function set_consumeable_usage(card)
	if card.config.center.set == "Spectral" then
		if pseudorandom("spectral") < 1 / G.GAME.jud_curse then
			G.GAME.jud_curse = 100
			SMODS.add_card({ set = "Joker", rarity = "cry_cursed", area = G.jokers })
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
	if self.ability.seal == "jud_reversal" or (#SMODS.find_card("c_jud_mannaz") >= 1) then
		return true
	end
	return isfaceold(self, from_boss)
end

local gcp = get_current_pool
function get_current_pool(_type, _rarity, _legendary, _append, override_equilibrium_effect)
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
			P_CRY_ITEMS = {}
			local valid_pools = { "Joker", "Consumeables", "Voucher", "Booster" }
			for _, id in ipairs(valid_pools) do
				for k, v in pairs(G.P_CENTER_POOLS[id]) do
					if
						v.unlocked == true
						and not Cryptid.no(v, "doe", k)
						and not (G.GAME.banned_keys[v.key] or G.GAME.cry_banished_keys[v.key])
					then
						P_CRY_ITEMS[#P_CRY_ITEMS + 1] = v.key
					end
				end
			end
			if #P_CRY_ITEMS <= 0 then
				P_CRY_ITEMS[#P_CRY_ITEMS + 1] = "v_blank"
			end
			return P_CRY_ITEMS, "anva_directer" .. G.GAME.round_resets.ante
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
	if #SMODS.find_card("c_jud_love") >= 1 then
		return true
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
	return useconsold(self,area,copier)
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
	-- I already had this list so, why not use it?
	ret.jud_vanilla = {
		"j_joker",
		"j_greedy_joker",
		"j_lusty_joker",
		"j_wrathful_joker",
		"j_gluttenous_joker",
		"j_zany",
		"j_mad",
		"j_crazy",
		"j_droll",
		"j_sly",
		"j_wily",
		"j_clever",
		"j_devious",
		"j_crafty",
		"j_half",
		"j_stencil",
		"j_four_fingers",
		"j_mime",
		"j_credit_card",
		"j_ceremonial",
		"j_banner",
		"j_mystic_summit",
		"j_marble",
		"j_loyalty_card",
		"j_8_ball",
		"j_misprint",
		"j_dusk",
		"j_raised_fist",
		"j_chaos",
		"j_fibonacci",
		"j_steel_joker",
		"j_scary_face",
		"j_abstract",
		"j_delayed_grat",
		"j_hack",
		"j_pareidolia",
		"j_gros_michel",
		"j_even_steven",
		"j_odd_todd",
		"j_scholar",
		"j_business",
		"j_supernova",
		"j_ride_the_bus",
		"j_space",
		"j_egg",
		"j_burglar",
		"j_blackboard",
		"j_runner",
		"j_ice_cream",
		"j_dna",
		"j_splash",
		"j_blue_joker",
		"j_sixth_sense",
		"j_constellation",
		"j_hiker",
		"j_faceless",
		"j_green_joker",
		"j_superposition",
		"j_todo_list",
		"j_cavendish",
		"j_card_sharp",
		"j_red_card",
		"j_madness",
		"j_square",
		"j_seance",
		"j_riff_raff",
		"j_vampire",
		"j_shortcut",
		"j_hologram",
		"j_vagabond",
		"j_baron",
		"j_cloud_9",
		"j_rocket",
		"j_obelisk",
		"j_midas_mask",
		"j_luchador",
		"j_photograph",
		"j_gift",
		"j_turtle_bean",
		"j_erosion",
		"j_reserved_parking",
		"j_mail",
		"j_to_the_moon",
		"j_hallucination",
		"j_fortune_teller",
		"j_juggler",
		"j_drunkard",
		"j_stone",
		"j_golden",
		"j_lucky_cat",
		"j_baseball",
		"j_bull",
		"j_diet_cola",
		"j_trading",
		"j_flash",
		"j_popcorn",
		"j_trousers",
		"j_ancient",
		"j_ramen",
		"j_walkie_talkie",
		"j_selzer",
		"j_castle",
		"j_smiley",
		"j_campfire",
		"j_ticket",
		"j_mr_bones",
		"j_acrobat",
		"j_sock_and_buskin",
		"j_swashbuckler",
		"j_troubadour",
		"j_certificate",
		"j_smeared",
		"j_throwback",
		"j_hanging_chad",
		"j_rough_gem",
		"j_bloodstone",
		"j_arrowhead",
		"j_onyx_agate",
		"j_glass",
		"j_ring_master",
		"j_flower_pot",
		"j_blueprint",
		"j_wee",
		"j_merry_andy",
		"j_oops",
		"j_idol",
		"j_seeing_double",
		"j_matador",
		"j_hit_the_road",
		"j_duo",
		"j_trio",
		"j_family",
		"j_order",
		"j_tribe",
		"j_stuntman",
		"j_invisible",
		"j_brainstorm",
		"j_satellite",
		"j_shoot_the_moon",
		"j_drivers_license",
		"j_cartomancer",
		"j_astronomer",
		"j_burnt",
		"j_bootstraps",
		--[["j_caino",
	"j_triboulet",
	"j_yorick",
	"j_chicot",
	"j_perkeo",]]
	}
	return ret
end

Judgement = SMODS.current_mod

to_big = to_big or function(x)
	return x
end

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
	removeold(self)
end

local oldaddroundevalrow = add_round_eval_row
function add_round_eval_row(config)
	config = config or {}
	if config.dollars and next(SMODS.find_card("j_jud_crypto")) then
		config.dollars = config.dollars * G.GAME.cashout
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
    if self.debuff and not from_boss then return end
    if self.ability.seal == "jud_reversal" then
        return true
    end
	return isfaceold(self, from_boss)
end

local igo = Game.init_game_object
Game.init_game_object = function(self)
	local ret = igo(self)
	ret.canchips = 0
	ret.jokersdestroyed = 0
	ret.jud_curse = 100
	ret.jud_destroyed = {}
	return ret
end

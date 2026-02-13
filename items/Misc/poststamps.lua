function Judgement.is_post(str)
	local posts = Judgement.Post_keys
	for _, v in ipairs(posts) do
		if "jud_" .. v == str then
			return true
		end
	end
	return false
end

function Judgement.remove_post(card)
	for k, _ in pairs(card and card.ability or {}) do
		if Judgement.is_post(k) then
			card.ability[k] = nil
		end
	end
end

function Judgement.set_post(card, type)
	local key = "jud_" .. type

	if card and Judgement.is_post(key) then
		Judgement.remove_post(card)
		SMODS.Stickers[key]:apply(card, true)
	end
end

function Judgement.has_post(card, type)
	local key = type and "jud_" .. type or nil
	for k, _ in pairs(card and card.ability or {}) do
		if Judgement.is_post(k) then
			return not key and k or k == key
		end
	end
	return false
end

function Judgement.random_post(card)
	local posts = Judgement.Post_keys
	local selected = pseudorandom_element(posts)
	Judgement.set_post(card, selected)
end

Judgement.Post_keys = {
	"cerise",
	"perse",
	"aureate",
	"navy",
	"emerald",
	"ultramarine",
	"majestic",
}

Judgement.Post = SMODS.Sticker:extend({
	prefix_config = { key = true },
	should_apply = false,
	config = {},
	rate = 0,
	sets = {
		Default = true,
	},

	draw = function(self, card)
		local x_offset = (card.T.w / 71) * card.T.scale
		G.shared_stickers[self.key].role.draw_major = card
		G.shared_stickers[self.key]:draw_shader("dissolve", nil, nil, nil, card.children.center, nil, nil, x_offset)
	end,
	apply = function(self, card, val)
		card.ability[self.key] = val and copy_table(self.config) or nil
	end,
})

local function post_ui()
	local posts = {}

	for k, v in pairs(SMODS.Stickers) do
		if Judgement.is_post(k) then
			posts[k] = v
		end
	end

	return SMODS.card_collection_UIBox(posts, { 5, 5 }, {
		snap_back = true,
		hide_single_page = true,
		collapse_single_page = true,
		center = "c_base",
		h_mod = 1.18,
		back_func = "your_collection_other_gameobjects",
		modify_card = function(card, center)
			card.ignore_pinned = true
			center:apply(card, true)
		end,
	})
end

G.FUNCS.your_collection_jud_posts = function()
	G.SETTINGS.paused = true
	G.FUNCS.overlay_menu({
		definition = post_ui(),
	})
end

local function wrap_without_poststamps(func)
	local removed = {}
	for k, v in pairs(SMODS.Stickers) do
		if Judgement.is_post(k) then
			removed[k] = v
			SMODS.Stickers[k] = nil
		end
	end

	local ret = func()

	for k, v in pairs(removed) do
		SMODS.Stickers[k] = v
	end

	return ret
end

local stickers_ui_ref = create_UIBox_your_collection_stickers
create_UIBox_your_collection_stickers = function()
	return wrap_without_poststamps(stickers_ui_ref)
end

local other_objects_ref = create_UIBox_Other_GameObjects
create_UIBox_Other_GameObjects = function()
	return wrap_without_poststamps(other_objects_ref)
end

--Post Stamps

Judgement.Post({
	key = "cerise",
	badge_colour = G.C.CHIPS,
	config = { odds = 3 },
	atlas = "poststamps",
	pos = { x = 0, y = 0 },
	loc_vars = function(self, info_queue)
		local numerator, denominator =
			SMODS.get_probability_vars(self, (G.GAME.probabilities.normal or 1), self.config.odds, "jud_cerise")
		return { vars = { numerator, denominator } }
	end,
	calculate = function(self, card, context)
		if
			context.repetition
			and context.cardarea == G.play
			and SMODS.pseudorandom_probability(card, "jud_cerise", (G.GAME.probabilities.normal or 1), self.config.odds)
		then
			return {
				repetitions = 1,
			}
		end
	end,
})

Judgement.Post({
	key = "perse",
	badge_colour = G.C.CHIPS,
	config = { max = 4 },
		atlas = "poststamps",
	pos = { x = 1, y = 0 },
	loc_vars = function(self, info_queue)
		return { vars = { self.config.max + 1 } }
	end,
	calculate = function(self, card, context)
		if context.discard and #context.full_hand >= 4 then
			for _, v in pairs(context.other_card) do
				if v == card then
					if #G.consumeables.cards < G.consumeables.config.card_limit then
						SMODS.add_card({
							set = "Tarot",
						})
					end
				end
			end
		end
	end,
})

Judgement.Post({
	key = "aureate",
	badge_colour = G.C.CHIPS,
		atlas = "poststamps",
	pos = { x = 2, y = 0 },
	config = { max = 1 },
	loc_vars = function(self, info_queue)
		return { vars = { self.config.max } }
	end,
	calculate = function(self, card, context)
		if context.main_scoring and context.cardarea == G.play then
			return {
				dollars = self.config.max,
			}
		end
	end,
})

Judgement.Post({
	key = "navy",
	badge_colour = G.C.CHIPS,
	config = {},
		atlas = "poststamps",
	pos = { x = 3, y = 0 },
	calculate = function(self, card, context)
		if context.end_of_round and context.main_eval and context.cardarea == G.hand then
			SMODS.add_card({
				set = "Planet",
			})
		end
	end,
})

Judgement.Post({
	key = "emerald",
	badge_colour = G.C.CHIPS,
	config = { odds = 2 },
		atlas = "poststamps",
	pos = { x = 4, y = 0 },
	loc_vars = function(self, info_queue)
		local numerator, denominator =
			SMODS.get_probability_vars(self, (G.GAME.probabilities.normal or 1), self.config.odds, "jud_emerald")
		return { vars = { numerator, denominator } }
	end,
	calculate = function(self, card, context)
		if
			context.main_scoring
			and context.cardarea == "unscored"
			and SMODS.pseudorandom_probability(
				card,
				"jud_emerald",
				(G.GAME.probabilities.normal or 1),
				self.config.odds
			)
		then
			SMODS.add_card({
				set = "Code",
			})
		end
	end,
})

Judgement.Post({
	key = "ultramarine",
	badge_colour = G.C.CHIPS,
	config = { odds = 3 },
	loc_vars = function(self, info_queue)
		local numerator, denominator =
			SMODS.get_probability_vars(self, (G.GAME.probabilities.normal or 1), self.config.odds, "jud_ultramarine")
		return { vars = { numerator, denominator } }
	end,
		atlas = "poststamps",
	pos = { x = 5, y = 0 },
	calculate = function(self, card, context)
		if context.final_scoring_step and context.cardarea == G.play then
			print(context.scoring_name)
			if
				SMODS.pseudorandom_probability(
					card,
					"jud_ultramarine",
					(G.GAME.probabilities.normal or 1),
					self.config.odds
				)
			then
				G.E_MANAGER:add_event(Event({
					trigger = "after",
					delay = 0.2,
					func = function()
						card:start_dissolve()
						return true
					end,
				}))
				delay(0.5)
			else
				for k, v in pairs(G.P_CENTER_POOLS.Planet) do
					if v.config.hand_type == context.scoring_name then
						SMODS.add_card({
							set = "Planet",
							key = v.key,
						})
					end
				end
			end
		end
	end,
})

Judgement.Post({
	key = "majestic",
	badge_colour = G.C.CHIPS,
	config = {},
		atlas = "poststamps",
	pos = { x = 6, y = 0 },
	loc_vars = function(self, info_queue) end,
	calculate = function(self, card, context) end,
})

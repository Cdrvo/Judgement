function Judgement.remove_border(card)
	for k, _ in pairs(card and card.ability or {}) do
		card.ability[k] = nil
	end
end

function Judgement.set_border(card, key)
    if Judgement.has_border(card) then
	    Judgement.remove_border(card)
    end
	Judgement.borders[key]:apply(card, true)
end

function Card:has_border(border)
	if not border then
		for k, v in pairs(Judgement.Borders) do
			if self.ability[v.key] then
				return true
			end
		end
	else
		if self.ability[border] then
			return true
		end
	end
	return false
end

function Card:calculate_border(context, key)
	local border = Judgement.Borders[key]
	if self.ability[key] and type(border.calculate) == "function" then
		local o = border:calculate(self, context)
		if o then
			if not o.card then
				o.card = self
			end
			return o
		end
	end
end


-- i made this so why not use it (iykyk)
Judgement.Borders = {}
Judgement.Border = SMODS.GameObject:extend({
	required_params = { "key", "atlas" },
	set = "Border",
	atlas = "borders",
	pos = { x = 0, y = 0 },
	obj_table = Judgement.Borders,
	obj_buffer = {},
	sets = { 
		Default = true,
		Enhanced = true
	 },
	unlocked = true,
	discovered = true,
	config = {},
	badge_colour = HEX("68a4ff"),
	class_prefix = "border",
	needs_enable_flag = true,
	no_rank = false,
	no_suit = false,
	register = function(self)
		if self.registered then
			sendWarnMessage(("Detected duplicate register call on object %s"):format(self.key), self.set)
			return
		end
		Judgement.Border.super.register(self)
		self.order = #self.obj_buffer
	end,
	inject = function(self)
		self.sticker_sprite = Sprite(0, 0, G.CARD_W, G.CARD_H, G.ASSET_ATLAS[self.atlas], self.pos)
		G.shared_stickers[self.key] = self.sticker_sprite

		if self.misc_inject then self:misc_inject(self) end
	end,
	apply = function(self, card, val)
		if val then
			card.border = self.key
			if self.applied then
				self:applied(card)
			end
		else
			card.border = nil
			if self.removed then
				self:removed(card)
			end
		end
		card.ability[self.key] = val
		if val and self.config and next(self.config) then
			card.ability[self.key] = {}
			for k, v in pairs(self.config) do
				if type(v) == "table" then	
					card.ability[self.key][k] = copy_table(v)
				else
					card.ability[self.key][k] = v
				end
			end
		end
	end,
	loc_vars = function(self)
		return {}
	end,
	pre_inject_class = function(self)
		G.P_CENTER_POOLS[self.set] = {}
	end,
})

SMODS.DrawStep({ 
	key = "Borders",
	order = 39,
	func = function(self, layer)
		if self.border and G.shared_stickers[self.border] then
			G.shared_stickers[self.border].role.draw_major = self
			G.shared_stickers[self.border]:draw_shader("dissolve", nil, nil, nil, self.children.center)
		end

		for k, v in pairs(Judgement.Borders) do
			if self.ability[v.key] then
				if v and v.draw and type(v.draw) == "function" then
					v:draw(self, layer)
				else
					G.shared_stickers[v.key].role.draw_major = self
					G.shared_stickers[v.key]:draw_shader("dissolve", nil, nil, nil, self.children.center)
				end
			end
		end
	end,
	conditions = { vortex = false, facing = "front" },
})


SMODS.DrawStep({ 
	key = "Borders",
	order = 15,
	func = function(self, layer)
		if self.border and G.shared_stickers[self.border] then
			G.shared_stickers[self.border].role.draw_major = self
			G.shared_stickers[self.border]:draw_shader("dissolve", nil, nil, nil, self.children.center)
		end

		for k, v in pairs(Judgement.Borders) do
			if self.ability[v.key] then
				if v and v.draw and type(v.draw) == "function" then
					v:draw(self, layer)
				else
					G.shared_stickers[v.key].role.draw_major = self
					G.shared_stickers[v.key]:draw_shader("dissolve", nil, nil, nil, self.children.center)
				end
			end
		end
	end,
	conditions = { vortex = false, facing = "front" },
})

--[[SMODS.DrawStep({ 
	key = "Borders2",
	order = 10,
	func = function(self, layer)
		if self.border and G.border_misc[self.border] then
			G.border_misc[self.border].role.draw_major = self
			G.border_misc[self.border]:draw_shader("dissolve", nil, nil, nil, self.children.center)
		end

		for k, v in pairs(Judgement.Borders) do
			if self.ability[v.key] then
				if v and v.draw and type(v.draw) == "function" then
					v:draw(self, layer)
				elseif G.border_misc[v.key] then
					G.border_misc[v.key].role.draw_major = self
					G.border_misc[v.key]:draw_shader("dissolve", nil, nil, nil, self.children.center)
				end
			end
		end
	end,
	conditions = { vortex = false, facing = "front" },
})

SMODS.DrawStep({ 
	key = "Borders3",
	order = 13,
	func = function(self, layer)
		if self.border and self:jud_has_enhancement() and G.enh_misc[self:jud_enhancement()] and Judgement.Borders[self.border].blank then
			G.enh_misc[self:jud_enhancement()].role.draw_major = self
			G.enh_misc[self:jud_enhancement()]:draw_shader("dissolve", nil, nil, nil, self.children.center)
		end

		for k, v in pairs(Judgement.Borders) do
			if self.ability[v.key] and v.blank then
				if G.enh_misc[self:jud_enhancement()] then
					G.enh_misc[self:jud_enhancement()].role.draw_major = self
					G.enh_misc[self:jud_enhancement()]:draw_shader("dissolve", nil, nil, nil, self.children.center)
				end
			end
		end
	end,
	conditions = { vortex = false, facing = "front" },
})]]

local function border_ui()
	local borders = {}

	for k, v in pairs(Judgement.Borders) do
		borders[k] = v
	end

	return SMODS.card_collection_UIBox(borders, { 5, 5 }, {
		snap_back = true,
		hide_single_page = true,
		collapse_single_page = true,
		center = "c_base",
		h_mod = 1.18,
		back_func = "your_collection_other_gameobjects",
		modify_card = function(card, center)
			center:apply(card, true)
		end,
	})
end

G.FUNCS.your_collection_jud_borders = function()
	G.SETTINGS.paused = true
	G.FUNCS.overlay_menu({
		definition = border_ui(),
	})
end

-- Borders yipee

Judgement.Border{
	key = "bonus",
	atlas = "borders",
	pos = { x = 0, y = 0 },
	config = {
		effect = 10
	},
	loc_vars = function(self,info_queue,card)
		local cae = self.config
		return{vars = {cae.effect}}
	end,
	calculate = function(self,card,context)
		if context.main_scoring and context.cardarea == G.play then
			SMODS.calculate_effect({ chips = self.config.effect }, card)
		end
	end
}

Judgement.Border{
	key = "mult",
	atlas = "borders",
	pos = { x = 0, y = 1 },
	config = {
		effect = 1
	},
	loc_vars = function(self,info_queue,card)
		local cae = self.config
		return{vars = {cae.effect}}
	end,
	calculate = function(self,card,context)
		if context.main_scoring and context.cardarea == G.play then
			SMODS.calculate_effect({ mult = self.config.effect }, card)
		end
	end
}

Judgement.Border{
	key = "smudged",
	atlas = "borders",
	pos = { x = 2, y = 1 },
	config = {
		effect = "N/A"
	},
	loc_vars = function(self,info_queue,card)
		local translate
		local cae = self.config
		cae.effect = "N/A" 
		if card and card.base and card.base.suit then 
			if card.base.suit == "Spades" then
				translate = "Clubs"
			elseif card.base.suit == "Clubs" then
				translate = "Spades"
			elseif card.base.suit == "Diamonds" then
				translate = "Hearts"
			elseif card.base.suit == "Hearts" then
				translate = "Diamonds"
			end

			cae.effect = (localize(translate, "suits_plural"))
		end
		return{vars = {cae.effect}}
	end,
	calculate = function(self,card,context)
	end
}

Judgement.Border{
	key = "glass",
	atlas = "borders",
	pos = { x = 5, y = 0 },
	config = {
		effect = 1.2
	},
	loc_vars = function(self,info_queue,card)
		local cae = self.config
		return{vars = {cae.effect}}
	end,
	calculate = function(self,card,context)
		if context.main_scoring and context.cardarea == G.play then
			SMODS.calculate_effect({ xmult = self.config.effect }, card)
		end
	end
}

Judgement.Border{
	key = "steel",
	atlas = "borders",
	pos = { x = 4, y = 0 },
	config = {
		effect = 1.2
	},
	loc_vars = function(self,info_queue,card)
		local cae = self.config
		return{vars = {cae.effect}}
	end,
	calculate = function(self,card,context)
		if context.main_scoring and context.cardarea == G.hand then
			SMODS.calculate_effect({ xmult = self.config.effect }, card)
		end
	end
}

Judgement.Border{
	key = "stone",
	atlas = "borders",
	pos = { x = 2, y = 0 },
	config = {effect=10},
	blank = true,
	loc_vars = function(self,info_queue,card)
		local cae = self.config
		return{vars = {cae.effect}}
	end,
	calculate = function(self,card,context)
		if context.main_scoring and context.cardarea == G.play then
			SMODS.calculate_effect({ chips = self.config.effect }, card)
		end
	end,
--[[	misc_inject = function(self)
		G.enh_misc = G.enh_misc or {}
		for k, v in pairs(G.P_CENTER_POOLS.Enhanced) do
			if G.P_CENTERS[v.key].atlas then
				v.enh_sprite = Sprite(0, 0, G.CARD_W, G.CARD_H, G.ASSET_ATLAS[G.P_CENTERS[v.key].atlas], G.P_CENTERS[v.key].pos)
				G.enh_misc[v.key] = v.enh_sprite
			else
				v.enh_sprite = Sprite(0, 0, G.CARD_W, G.CARD_H, G.ASSET_ATLAS["centers"], G.P_CENTERS[v.key].pos)
				G.enh_misc[v.key] = v.enh_sprite
			end
		end
	end,]]
}

Judgement.Border{
	key = "gold",
	atlas = "borders",
	pos = { x = 3, y = 0 },
	config = {
		effect = 1
	},
	loc_vars = function(self,info_queue,card)
		local cae = self.config
		return{vars = {cae.effect}}
	end,
	calculate = function(self,card,context)
		if context.end_of_round and context.cardarea == G.hand and not card.jud_temp_check then
			card.jud_temp_check = true
			SMODS.calculate_effect({ dollars = self.config.effect }, card)
		end
	end
}

Judgement.Border{ 
	key = "lucky",
	atlas = "borders",
	pos = { x = 1, y = 0 },
	config = {
		odds = 5,
		odds2 = 15,
		mult = 5,
		dollars = 5
	},
	loc_vars = function(self,info_queue,card)
		local cae = self.config
		local num, den = SMDOS.get_probability_vars(card, 1, cae.odds, "lucky_border_seed")
		return{vars = {num,cae.odds,cae.odds2,cae.mult,cae.dollars}}
	end,
	calculate = function(self,card,context)
		local cae = self.config
		if SMODS.pseudorandom_probability(card, "luck_border_seed", 1, cae.odds) and context.main_scoring and context.cardarea == G.play then
			SMODS.calculate_effect({ mult = self.config.mult }, card)
		end
		if SMODS.pseudorandom_probability(card, "luck_border_seed", 1, cae.odds2) and context.main_scoring and context.cardarea == G.play then
			SMODS.calculate_effect({ dollars = self.config.dollars }, card)
		end
	end
}



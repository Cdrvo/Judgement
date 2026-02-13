SMODS.current_mod.custom_collection_tabs = function()
    local t = {
		UIBox_button({
			button = "your_collection_jud_posts",
			id = "your_collection_jud_posts",
			label = { localize("lab_jud_posts") },
			minw = 5,
			minh = 1,
		}),

        UIBox_button({
			button = "your_collection_jud_borders",
			id = "your_collection_jud_borders",
			label = { localize("lab_jud_borders") },
			minw = 5,
			minh = 1,
		}),
    }
	return t
end

local card_highlighted_ref = Card.highlight
function Card:highlight(is_highlighted)
	self.highlighted = is_highlighted
	if
		self.highlighted
		and ((self.area == G.pack_cards and G.pack_cards) or self.area == G.pack_cards)
		and self.ability.set == "cryptic"
	then
		if self.children.use_button then
			self.children.use_button:remove()
			self.children.use_button = nil
		end

		self.children.use_button = UIBox({
			definition = Judgement.button_func(self, {
				use = true,
				align = "cr",
				align_other = "bm",
				align_text = "bm",
				button = "use_card",
				func = "can_pull_card",
				text = "PULL",
				colour = G.C.PURPLE,
				bw = -0.1,
				bh = 0.8

			}),
			config = {
				align = "cm",
				offset = {
					x = 0,
					y = 1.6,
				},
				parent = self,
			},
		})
	elseif self.highlighted and string.find(self.ability.set, "boons") and self.area == G.jud_boons then
		if self.children.use_button then
			self.children.use_button:remove()
			self.children.use_button = nil
		end
	elseif self.highlighted and string.find(self.ability.name, "c_jud_freejail") and self.area == G.consumeables then
		if self.children.use_button then
			self.children.use_button:remove()
			self.children.use_button = nil
		end

		self.children.use_button = UIBox({
			definition = Judgement.button_func(self, {
				sell = true,
				use = true,
				text = localize("b_use"),
				text_scale = 0.55,
				button = "use_card",
				func = "can_end_b",
				align_text = "cm",
				colour = G.C.UI.BACKGROUND_INACTIVE,
				one_press = true,
			}),
			config = {
				align = "cr",
				offset = {
					x = -0.38	,
					y = 0,
				},
				parent = self,
			},
		})
	elseif self.highlighted and string.find(self.ability.set, "pills") and self.area == G.jud_pill then
		if self.children.use_button then
			self.children.use_button:remove()
			self.children.use_button = nil
		end

		self.children.use_button = UIBox({
			definition = Judgement.button_func(self, {
				sell = true,
			}),
			config = {
				align = "cr",
				offset = {
					x = -0.4,
					y = 0,
				},
				parent = self,
			},
		})
	elseif self.highlighted and string.find(self.ability.set, "runes") and self.area == G.consumeables then
		if self.children.use_button then
			self.children.use_button:remove()
			self.children.use_button = nil
		end

		self.children.use_button = UIBox({
			definition = Judgement.button_func(self, {
				sell = true,
			}),
			config = {
				align = "cr",
				offset = {
					x = -0.4,
					y = 0,
				},
				parent = self,
			},
		})
	elseif self.highlighted and self.area ~= G.pack_cards and self.config.center.key == "c_jud_flippeddeeds" then
		if self.children.use_button then
			self.children.use_button:remove()
			self.children.use_button = nil
		end

		self.children.use_button = UIBox({
			definition = Judgement.button_func(self, {
				sell = true,
			}),
			config = {
				align = "cr",
				offset = {
					x = -0.4,
					y = 0,
				},
				parent = self,
			},
		})
	elseif
		self.highlighted
			and string.find(self.ability.set, "titledeeds")
			and self.area == G.consumeables
			and self.key ~= "c_jud_flippeddeeds"
		or self.key == "c_jud_parkplace"
	then
		if self.children.use_button then
			self.children.use_button:remove()
			self.children.use_button = nil
		end

		self.children.use_button = UIBox({
			definition = Judgement.button_func(self, {
				sell = true,
				use = true,
				button = "use_card",
				func = "can_use_consumeable",
				text = "FLIP",
				align_text = "cm"
			}),
			config = {
				align = "cr",
				offset = {
					x = -0.4,
					y = 0,
				},
				parent = self,
			},
		})
	else
		card_highlighted_ref(self, is_highlighted)
	end
end


Judgement.button_func = function(card, args)

	if not args.bw then args.bw = 0.1 end
	if not args.bh then args.bh = 0.6 end
	if not args.align_other then args.align_other = "cm" end
	if not args.align then args.align = "cr" end
	if not args.align_text then args.align_text = "tm" end
	if not args.colour then args.colour = G.C.RED end
	if not args.one_press then args.one_press = false end
	if not args.text_colour then args.text_colour = G.C.UI.TEXT_LIGHT end
	if not args.text_scale then args.text_scale = 0.5 end

	local args = args or {}
	local sell = nil
	local use = nil

	if args.sell then
		sell = {
			n = G.UIT.C,
			config = {
				align = "cr",
			},
			nodes = {
				{
					n = G.UIT.C,
					config = {
						ref_table = card,
						align = "cr",
						padding = 0.1,
						r = 0.08,
						minw = 1.25,
						hover = true,
						shadow = true,
						colour = G.C.UI.BACKGROUND_INACTIVE,
						one_press = true,
						button = "sell_card",
						func = "can_sell_card",
					},
					nodes = {
						{
							n = G.UIT.B,
							config = {
								w = 0.1,
								h = 0.6,
							},
						},
						{
							n = G.UIT.C,
							config = {
								align = "tm",
							},
							nodes = {
								{
									n = G.UIT.R,
									config = {
										align = "cm",
										maxw = 1.25,
									},
									nodes = {
										{
											n = G.UIT.T,
											config = {
												text = localize("b_sell"),
												colour = G.C.UI.TEXT_LIGHT,
												scale = 0.4,
												shadow = true,
											},
										},
									},
								},
								{
									n = G.UIT.R,
									config = {
										align = "cm",
									},
									nodes = {
										{
											n = G.UIT.T,
											config = {
												text = localize("$"),
												colour = G.C.WHITE,
												scale = 0.4,
												shadow = true,
											},
										},
										{
											n = G.UIT.T,
											config = {
												ref_table = card,
												ref_value = "sell_cost_label",
												colour = G.C.WHITE,
												scale = 0.55,
												shadow = true,
											},
										},
									},
								},
							},
						},
					},
				},
			},
		}
	end

	if args.use then
		use = {
			n = G.UIT.C,
			config = {
				align = args.align,
			},
			nodes = {
				{
					n = G.UIT.C,
					config = {
						ref_table = card,
						align = args.align_other,
						maxw = 1.25,
						padding = 0.1,
						r = 0.08,
						minw = 1.25,
						minh = 0,
						hover = true,
						shadow = true,
						colour = args.colour,
						button = args.button,
						func = args.func,
					},
					nodes = {
						{
							n = G.UIT.B,
							config = {
								w = args.bw,
								h = args.bh,
							},
						},
						{
							n = G.UIT.C,
							config = {
								align = args.align_text,
							},
							nodes = {
								{
									n = G.UIT.R,
									config = {
										align = "cm",
										maxw = 1.25,
									},
									nodes = {
										{
											n = G.UIT.T,
											config = {
												text = args.text,
												colour = args.text_colour,
												scale = args.text_scale,
												shadow = true,
											},
										},
									},
								},
							},
						},
					},
				},
			},
		}
	end

	return {
		n = G.UIT.ROOT,
		config = {
			align = "cr",
			padding = 0,
			colour = G.C.CLEAR,
		},
		nodes = {
			{
				n = G.UIT.C,
				config = {
					padding = 0.15,
					align = "cl",
				},
				nodes = {
					sell and {
						n = G.UIT.R,
						config = {
							align = "cl",
						},
						nodes = { sell },
					} or nil,
					use and {
						n = G.UIT.R,
						config = {
							align = "cl",
						},
						nodes = { use },
					} or nil,
				},
			},
		},
	}
end
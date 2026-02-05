return {
	descriptions = {
		Back = {},
		Blind = {},
		Edition = {
			e_jud_reverse = {
				name = "Reverse Holographic",
				text = {
					"{X:mult,C:white}X#2#{} Mult",
					"{X:mult,C:white}X#1#{} Mult for every other",
					"{C:attention}Reverse Holographic{} Joker and Card",
				},
			},
			e_jud_fake = {
				name = "Fake",
				text = {
					"{C:mult}+#1#{} Mult",
					"{C:chips}+#1#{} chips",
					"{C:money}+$#2#{}",
					"{C:green}#4# in #3#{} chance to",
					"{C:red}self-destruct{}",
				},
			},
		},
		Enhanced = {
			m_jud_celestial = {
				name = "Celestial",
				text = {
					"Gives chips and Mult of your",
					"most played hand when scored",
				},
			},
			m_jud_cannibal = {
				name = "Cannibal",
				text = {
					"{C:red}Self-destructs{} when",
					"scored",
				},
			},
		},
		Joker = {
			-- Common
			j_jud_useless = {
				name = "Useless",
				text = { "Always has a {C:attention}random{} {C:dark_edition}edition{}", "Does nothing" },
			},
			j_jud_burnttoast = {
				name = "Burnt Toast",
				text = {
					"{C:money}+$#1#{} Value for each joker in hand",
					"{C:red}Self-destructs{} if",
					"played hand contains a {C:attention}Pair",
				},
			},
			-- Uncommon
			j_jud_amnesiac = {
				name = "Amnesiac Joker",
				text = {
					"Whenever a Joker is sold or destroyed",
					"{C:green}#1# in #2#{} chance to {C:red}self-destruct{} and",
					"creates a copy of that Joker",
				},
			},
			j_jud_megalophobia = {
				name = "Megalophobia",
				text = {
					"Each scored card gives {X:chips,C:white}X#1#{} Chips",
					"{C:red}Self-destructs{} if a scored card is higher than {C:attention}seven{}",
				},
			},
			j_jud_triskaidekaphobia = {
				name = "Triskaidekaphobia",
				text = {
					"Scored cards are scored {C:attention}one{} additional time",
					"{C:red}Self-destructs{} if any of the scored cards add up to",
					"{C:attention}#1#{}",
				},
			},
			j_jud_ophthalmophobia = {
				name = "Ophthalmophobia",
				text = {
					"Copies the rightmost Joker",
					"{C:red}Self-destructs{} if it copies the same Joker",
					"more than {C:attention}once{} in a row",
				},
			},
			j_jud_addictedjoker = {
				name = "Addicted Joker",
				text = {
					"Creates a {C:blue}Pill{} when",
					"leaving the Shop",
				},
			},
			j_jud_dealingjoker = {
				name = "Dealing Joker",
				text = {
					"Creates a {C:attention}temporary{} {C:blue}Pill{} whenever a",
					"Blind is defeated",
				},
			},
			j_jud_viking = {
				name = "Viking Joker",
				text = {
					"Creates a {C:purple}Rune Card{} whenever",
					"a Boss Blind is selected",
				},
			},
			j_jud_praying = {
				name = "Praying Joker",
				text = {
					"Gives a free {C:attention}Jumbo Boon Pack{}",
					"when sold",
				},
			},
			j_jud_globophobia = {
				name = "Globophobia",
				text = {
					"{C:attention}Doubles{} the sell value of held Jokers",
					"{C:red}Self-destructs{} if more than {C:money}$#1#{} is earned",
					"through selling Jokers in one shop or round",
				},
			},
			j_jud_ludophobia = {
				name = "Ludophobia",
				text = {
					"{C:blue}+#1#{} hand size and {C:red}+#2# discard{}",
					"{C:green}#3# in #4#{} chance to {C:red}self-destruct{}",
				
				},
			},
			j_jud_on = {
				name = "On",
				text = {
					"Using a {C:attention}Flex{} sticker has a {C:green}#1# in #2#{}",
					"chance to re-create it and turning into {C:attention}Off{}",
				},
			},
			j_jud_off = {
				name = "Off",
				text = {
					"Turns into {C:attention}On{} when a {C:attention}Flex{} sticker",
					"is activated or when a {C:ff0000}Flip{} card is used",
				},
			},
			j_jud_stamp = {
				name = "Stamp",
				text = {
					"{C:green}#1# in #2#{} chance for cards to",
					"gain random {C:attention}Post Stamps{} when {C:attention}scored{}",
				},
			},
			j_jud_obesophobia = {
				name = "Obesophobia",
				text = {
					"{C:attention}+#1#{} card selection limit",
					"{C:red}self-destructs{} if selected cards",
					"exceed half of held cards",
				},
			},
			-- Rare
			j_jud_maniac = {
				name = "Maniac Joker",
				text = {
					"Gives a free {C:attention}Boon Pack{} after",
					"defeating a Boss Blind",
				},
			},
			j_jud_famished = {
				name = "Famished Joker",
				text = {
					"Gains {X:mult,C:white}X#2#{} Mult{} whenever a {C:attention}Cannibal{}",
					"card is destroyed",
					"{C:inactive}[Currently {}{X:mult,C:white}X#1#{} {C:inactive}Mult]{}",
				},
			},
			j_jud_trypophobia = {
				name = "Trypophobia",
				text = {
					"Gains {X:mult,C:white}X#1#{} Mult for each {C:attention}gap{}",
					"in rank between {C:attention}scored{} cards",
					"{C:red}Self=destructs{} if {C:attention}scored{} cards",
					"have a gap larger than {C:attention}two{}",
				},
			},
			j_jud_ergophobia = {
				name = "Ergophobia",
				text = {
					"Retriggers all held Jokers {C:attention}once{}",
					"{C:green}#1# in #2#{} chance to {C:red}self-destructs{}",
				},
			},
			j_jud_glossophobia = {
				name = "Glossophobia",
				text = {
					"{X:mult,C:white}X#1#{} Mult if it is the middle-most Joker held",
					"{C:red}Self-destructs{} if it isn't adjacent to any other Joker",
				},
			},
			j_jud_enochlophobia = {
				name = "Enochlophobia",
				text = {
					"Gains {X:dark_edition,C:white}^#1#{} Mult for each empty {C:attention}Joker slot{}",
					"and {X:dark_edition,C:white}^#2#{} Mult for each played {C:attention}High Card{}",
					"{C:red}Self-destructs{} whenever more than {C:attention}#1#{} card is scored",
					"{C:inactive}[Currently {}{X:dark_edition,C:white}^#3#{} {C:inactive}Mult]{}",
				},
			},
			j_jud_necromantic = {
				name = "Necromantic Joker",
				text = {
					"{C:green}1 in #1#{} chance to copy sold or destroyed cards or Jokers",
				},
			},
			j_jud_crypto = {
				name = "Crypto Joker",
				text = {
					"{C:attention}Multiply{} Blind payout depending on the number of {C:blue}hands{} played",
					"{C:inactive}({C:attention}1{} {C:inactive}hand gives{} {C:attention}X$2{}{C:inactive},{} {C:attention}2{} {C:inactive}hands gives{} {C:attention}X$1.5{} {C:inactive}and{} ",
					"{C:attention}3{} {C:inactive}hands gives{} {C:attention}X$1{}{C:inactive}){}",
				},
			},
			j_jud_necrophobia = {
				name = "Necrophobia",
				text = {
					"Multiplies all {C:attention}listed",
					"{C:green,E:1,S:1.1}probabilities{} by #1#.",
					"{C:red}Self-Destructs{} when a card is destryed",
					"{C:inactive}(ex: {C:green}1 in 3{C:inactive} -> {C:green}0.3 in 3{C:inactive})",
				},
			},
			j_jud_scopophobia = {
				name = "Scopophobia",
				text = {
					"Retriggers the Joker to its right",
					"{C:red}Self-destructs{} when it is copied",
				},
			},
			j_jud_astrophobia = {
				name = "Astrophobia",
				text = {
					"Upgrades first played hand by {C:attention}#1#{} each round",
					"{C:red}Self-destructs{} if a {C:planet}Planet{} card is used",
				},
			},
			-- Epic
			j_jud_glassliper = {
				name = "Glass Sliper",
				text = {
					"{C:attention}#1#{} random card in hand gains a random",
					"{C:edition}edition{} whenever a {C:attention}scored{} card is destroyed",
				},
			},
			j_jud_diplopia = {
				name = "Diplopia",
				text = {
					"{C:attention}Doubles{} Joker and Consumable slots",
				},
			},
			j_jud_nomophobia = {
				name = "Nomophobia",
				text = {
					"{C:attention}Increases{} ranks of all but the leftmost card",
					"{C:red}Self-destructs{} if played hand contains a {C:attention}Flush{}",
				},
			},
			-- Legendary
			j_jud_bogdonoff = {
				name = "Bogdonoff",
				text = {
					"{C:attention}Doubles{} all earned money",
				},
			},
			j_jud_acosta = {
				name = "Acosta",
				text = {
					"{C:green}#1# in #2#{} chance to make a random Joker {C:dark_edition}negative{}",
					"when leaving the shop",
				},
			},
			j_jud_chaetophobia = {
				name = "Chaetophobia",
				text = {
					"Numbered cards give {X:chips,C:white}X#1#{} Chips when {C:attention}scored{}",
					"{C:red}Self-destructs{} of a scored card is larger than {C:attention}five{}",
				},
			},
			j_jud_agoraphobia = {
				name = "Agoraphobia",
				text = {
					"Creates a random Joker whenever a Blind is selected",
					"Each rarity has an {C:attention}equal{} chance to appear",
					"{C:red}Self-destructs{} when a {C:legendary}legendary{} Joker is created",
				},
			},
			j_jud_metathesiophobia = {
				name = "Metathesiophobia",
				text = {
					"{X:mult,C:white}X#1#{} Mult for each card in your deck",
					"{C:red}Self-destructs{} if a card is added or destroyed",
					"{C:inactive}[Currently {X:mult,C:white}X#2#{} {C:inactive}Mult]{}",
				},
			},
			j_jud_ra = {
				name = "Ra",
				text = {
					"{C:attention}+#1# card selection limit{}",
				},
			},
			j_jud_dante = {
				name = "Dante",
				text = {
					"If hand contains a {C:attention}Three of a Kind{},",
					"creates one of every consumable type",
				},
			},
			-- Exotic
			j_jud_finismortis = {
				name = "Finis Mortis",
				text = {
					"Creates {C:attention}#1#{} {C:dark_edition}negative{} copy of every",
					"sold or destroyed Joker when sold",
				},
			},
			j_jud_oedipia = {
				name = "Oedipia",
				text = {
					"Gains {X:mult,C:white}XMult{} equal to",
					"the number of chips gained",
					"from scored cards",
				},
			},
			j_jud_phobophobia = {
				name = "Phobophobia",
				text = {
					"When {C:attention}Blind{} is selected,",
					"create #1# {C:dark_edition}Negative{} Jokers",
					"{C:red}Self-destructs{} if a joker is destroyed or sold",
				},
			},
			-- Cursed
			j_jud_thermophobia = {
				name = "Thermophobia",
				text = {
					"{X:attention,C:white}X#1#{} Blind size",
					"Set {C:FF00FF}Score{} to {C:attention}0{} after scoring",
					"{C:red}Self-destructs{} if you overscore",
				},
			},
			j_jud_chrometophobia = {
				name = "Chrometophobia",
				text = {
					"{C:green}#1# in #2#{} chance to not receive money whenever you would",
					"{C:red}Self-destructs{} after gaining {C:attention}#3#{}",
					"{C:inactive}[Currently {C:attention}$#4#{C:inactive}/{C:attention}$#3#{C:inactive}]{}",
				},
			},
			j_jud_nihilophobia = {
				name = "Nihilophobia",
				text = {
					"{C:attention}-#1# hand size{} whenever a card or",
					"Joker is destroyed",
					"{C:red}Self-destructs{} whenever {C:attention}Ante{} goes up",
				},
			},
			j_jud_apeirophobia = {
				name = "Apeirophobia",
				text = {
					"{X:mult,C:white}X#1#{} mult after scoring",
					"{C:red}Self-destructs{} when score is at least",
					"triple the Blind size",
				},
			},
			j_jud_bananaphobia = {
				name = "Bananaphobia",
				text = {
					"Applies {C:gold}Banana{} on a random Joker at",
					"the end of Round",
					"{C:red}Self-destructs{} if {C:gold}Banana{} is",
					"applied to it",
				},
			},
		},
	
        Border = {
            border_jud_bonus = {
                name = "Bonus Border",
                text = {
                    "{C:chips}+#1#{} Chips",
					"if scored"
                }
            },
			border_jud_mult = {
                name = "Mult Border",
                text = {
                    "{C:mult}+#1#{} Mult",
					"if scored"
                }
            },
			border_jud_stone = {
                name = "Stone Border",
                text = {
                    "{C:chips}+#1#{} Chips",
					"Always scores"
                }
            },
			border_jud_glass = {
                name = "Glass Border",
                text = {
                    "{X:mult,C:white}X#1#{} Mult",
					"if scored"
                }
            },
			border_jud_steel = {
                name = "Steel Border",
                text = {
                    "{X:mult,C:white}X#1#{} Mult",
					"if held in hand",
					"during scoring"
                }
            },
			border_jud_gold = {
                name = "Gold Border",
                text = {
                    "{C:money}+$#1#{} if",
					"held in hand",
					"during scoring"
                }
            },
			border_jud_smudged = {
                name = "Smudged Border",
                text = {
                    "Also counts as", 
					"{C:attention}#1#"
                }
            },
			border_jud_smudged_alt = {
                name = "Smudged Border",
                text = {
                    "Also counts as Spades if Clubs,",
					"Hearts if Diamonds, Diamonds if Hearts",
					"and Spades if Clubs"
                }
            },
			border_jud_lucky = {
                name = "Lucky Border",
                text = {
                    "{C:green}#1# in #2#{} chance",
					"for {C:mult}+#4#{} Mult",
                    "{C:green}#1# in #3#{} chance",
					"for {C:money}+$#5#{}",
                }
            },
			
		},
		Other = {
			jud_royal_seal = {
				name = "Royal Seal",
				text = {
					"This card is considered",
					"a {C:attention}face card{}",
				},
			},
			jud_temporary = {
				name = "Temporary",
				text = {
					"{C:red}Self-Destructs{} at the end",
					"of a round",
				},
			},
			jud_alldrawone_a = {
				name = "All Draw One",
				text = {
					"Creates {C:attention}#1#{} randomly {C:attention}modified{}",
					"{C:hearts}Hearts{} copy of selected card",
				},
			},
			jud_alldrawone_b = {
				name = "All Draw One",
				text = {
					"Creates {C:attention}#1#{} randomly {C:attention}modified{}",
					"{C:diamonds}Diamonds{} copy of selected card",
				},
			},
			jud_alldrawone_c = {
				name = "All Draw One",
				text = {
					"Creates {C:attention}#1#{} randomly {C:attention}modified{}",
					"{C:clubs}Clubs{} copy of selected card",
				},
			},
			jud_alldrawone_d = {
				name = "All Draw One",
				text = {
					"Creates {C:attention}#1#{} randomly {C:attention}modified{}",
					"{C:clubs}Spades{} copy of selected card",
					"when sold",
				},
			},
			jud_skipeveryone_a = {
				name = "Skip Everyone",
				text = {
					"{C:blue}+#1#{} Hand for each",
					"card with the {C:hearts}Hearts{} suit",
					"in your hand when sold",
				},
			},
			jud_skipeveryone_b = {
				name = "Skip Everyone",
				text = {
					"{C:blue}+#1#{} Hand for each",
					"card with the {C:diamonds}Diamonds{} suit",
					"in your hand when sold",
				},
			},
			jud_skipeveryone_c = {
				name = "Skip Everyone",
				text = {
					"{C:blue}+#1#{} Hand for each",
					"card with the {C:clubs}Clubs{} suit",
					"in your hand when sold",
				},
			},
			jud_skipeveryone_d = {
				name = "Skip Everyone",
				text = {
					"{C:blue}+#1#{} Hand for each",
					"card with the {C:spades}Spades{} suit",
					"in your hand when sold",
				},
			},
			jud_skipreverse_a = {
				name = "Reverse and Skip",
				text = {
					"Activate the {C:attention}Reverse{} and",
					"{C:attention}Skip{} effects for",
					"{C:hearts}Hearts{} when sold",
				},
			},
			jud_skipreverse_b = {
				name = "Reverse and Skip",
				text = {
					"Activate the {C:attention}Reverse{} and",
					"{C:attention}Skip{} effects for",
					"{C:diamonds}Diamonds{} when sold",
				},
			},
			jud_skipreverse_c = {
				name = "Reverse and Skip",
				text = {
					"Activate the {C:attention}Reverse{} and",
					"{C:attention}Skip{} effects for",
					"{C:clubs}Clubs{} when sold",
				},
			},
			jud_skipreverse_d = {
				name = "Reverse and Skip",
				text = {
					"Activate the {C:attention}Reverse{} and",
					"{C:attention}Skip{} effects for",
					"{C:spades}Spades{} when sold",
				},
			},
			jud_targeteddraw_a = {
				name = "Targeted Draw Two",
				text = {
					"Activates the {C:attention}Wild{}",
					"effect when sold",
				},
			},
			jud_alldrawtwo_a = {
				name = "All Draw Two",
				text = {
					"Creates {C:attention}#1#{} randomly {C:attention}modified{} copies",
					"of selected card when sold",
				},
			},
			jud_targeteddrawfour_a = {
				name = "Targeted Draw Four",
				text = {
					"Activates the {C:attention}Wild{}",
					"effect {C:attention}#1#{} times when sold",
				},
			},
			jud_u = {
				name = "U",
				text = {
					"{C:attention}Draw #1#{} card when this",
					"consumable is {C:attention}used{}",
				},
			},
			jud_n = {
				name = "N",
				text = {
					"Creates a random {C:green}Code{} card when",
					"this consumable is {C:attention}used{}",
				},
			},
			jud_o = {
				name = "O",
				text = {
					"Creates a random {C:tarot}Tarot{} card when",
					"this consumable is {C:attention}used{}",
				},
			},
			jud_ex = {
				name = "!",
				text = {
					"Creates a random {C:spectral}Spectral{} card when",
					"this consumable is {C:attention}used{}",
				},
			},
			jud_wildjackpot = {
				name = "Wild Jackpot",
				text = {
					"{C:green}#1# in #2#{} chance to to earn {C:money}$#3#{}",
					"for each card in your deck whenever",
					"this scores, triggers or is used",
				},
			},

			jud_cerise = {
				name = "Cerise Stamp",
				text = {
					"{C:green}#1# in #2#{} chance",
					"to {C:attention}retrigger{}",
				},
			},
			jud_perse = {
				name = "Perse Stamp",
				text = {
					"Creates a {C:tarot}Tarot{} card",
					"when discarded with {C:attention}#1#{} other",
					"cards",
				},
			},
			jud_aureate = {
				name = "Aureate Stamp",
				text = {
					"Earn {C:money}$#1#{} when this",
					"card is played",
					"and scores",
				},
			},
			jud_navy = {
				name = "Navy Stamp",
				text = {
					"Creates a random {C:planet}Planet{}",
					"card when held in hand",
					"at end of round",
				},
			},
			jud_emerald = {
				name = "Emerald Stamp",
				text = {
					"{C:green}#1# in #2#{} to create a {C:green}Code{}",
					"card when played but not scored",
				},
			},
			jud_ultramarine = {
				name = "Ultramarine Stamp",
				text = {
					"Creates a {C:dark_edition}negative {C:planet}Planet{} card",
					"for played hand if scored",
					"{C:green}#1# in #2#{} chance to {C:red}self-destruct{}",
				},
			},
			jud_majestic = {
				name = "Majestic Stamp",
				text = {
					"This card is considered a {C:attention}Jack",
				},
			},
			p_jud_unop = {
				name = "Uno Pack",
				text = {
					"Choose {C:attention}#1#{} of up to",
					"{C:attention}3 {C:FF0000}Uno{} cards to",
					"be taken",
				},
			},
			p_jud_unop1 = {
				name = "Uno Pack",
				text = {
					"Choose {C:attention}#1#{} of up to",
					"{C:attention}3 {C:FF0000}Uno{} cards to",
					"be taken",
				},
			},
			p_jud_unop2 = {
				name = "Uno Pack",
				text = {
					"Choose {C:attention}#1#{} of up to",
					"{C:attention}3 {C:FF0000}Uno{} cards to",
					"be taken",
				},
			},
			p_jud_unop3 = {
				name = "Uno Pack",
				text = {
					"Choose {C:attention}#1#{} of up to",
					"{C:attention}3 {C:FF0000}Uno{} cards to",
					"be taken",
				},
			},
			p_jud_unopj = {
				name = "Jumbo Uno Pack",
				text = {
					"Choose {C:attention}#1#{} of up to",
					"{C:attention}#2# {C:FF0000}Uno{} cards to",
					"be taken",
				},
			},
			p_jud_unopj2 = {
				name = "Jumbo Uno Pack",
				text = {
					"Choose {C:attention}#1#{} of up to",
					"{C:attention}#2# {C:FF0000}Uno{} cards to",
					"be taken",
				},
			},
			p_jud_unopm = {
				name = "Mega Uno Pack",
				text = {
					"Choose {C:attention}#1#{} of up to",
					"{C:attention}#2# {C:FF0000}Uno{} cards to",
					"be taken",
				},
			},
			p_jud_unopm2 = {
				name = "Mega Uno Pack",
				text = {
					"Choose {C:attention}#1#{} of up to",
					"{C:attention}#2# {C:FF0000}Uno{} cards to",
					"be taken",
				},
			},
			p_jud_titlep = {
				name = "Monopoly Pack",
				text = {
					"Choose {C:attention}#1#{} of up to",
					"{C:attention}#2# {C:money}Monopoly{} cards to",
					"be taken",
				},
			},
			p_jud_titlepj = {
				name = "Jumbo Monopoly Pack",
				text = {
					"Choose {C:attention}#1#{} of up to",
					"{C:attention}#2# {C:money}Monopoly{} cards to",
					"be taken",
				},
			},
			p_jud_titlepm = {
				name = "Mega Monopoly Pack",
				text = {
					"Choose {C:attention}#1#{} of up to",
					"{C:attention}#2# {C:money}Monopoly{} cards to",
					"be taken",
				},
			},
			p_jud_runep = {
				name = "Rune Pack",
				text = {
					"Choose {C:attention}#1#{} of up to",
					"{C:attention}#2# {C:674ea7}Rune{} cards to",
					"be taken",
				},
			},
			p_jud_runepj = {
				name = "Jumbo Rune Pack",
				text = {
					"Choose {C:attention}#1#{} of up to",
					"{C:attention}#2# {C:674ea7}Rune{} cards to",
					"be taken",
				},
			},
			p_jud_runepm = {
				name = "Mega Rune Pack",
				text = {
					"Choose {C:attention}#1#{} of up to",
					"{C:attention}#2# {C:674ea7}Rune{} cards to",
					"be taken",
				},
			},
			p_jud_boonp = {
				name = "Boon Pack",
				text = {
					"Choose {C:attention}#1#{} of up to",
					"{C:attention}#2# {C:a6f7f3}Boons{} to",
					"be granted to you",
				},
			},
			p_jud_boonpj = {
				name = "Jumbo Boon Pack",
				text = {
					"Choose {C:attention}#1#{} of up to",
					"{C:attention}#2# {C:a6f7f3}Boons{} to",
					"be granted to you",
				},
			},
			p_jud_stickerpackp = {
				name = "Sticker Packet",
				text = {
					"Choose {C:attention}#1#{} of up to",
					"{C:attention}#2# {C:e0218a}Sticker Packs{} to",
					"be taken",
				},
			},
			p_jud_stickerpackpj = {
				name = " Jumbo Sticker Packet",
				text = {
					"Choose {C:attention}#1#{} of up to",
					"{C:attention}#2# {C:e0218a}Sticker Packs{} to",
					"be taken",
				},
			},
			p_jud_stickerpackpm = {
				name = "Mega Sticker Packet",
				text = {
					"Choose {C:attention}#1#{} of up to",
					"{C:attention}#2# {C:e0218a}Sticker Packs{} to",
					"be taken",
				},
			},
			jud_no_rank = {
				text = {
					"{C:chips}+#1#{} Chips",
					"no rank or suit"
				}
			}
		},
		Planet = {
			c_jud_smertrios = {
				name = "Smertiros",
				text = {
					"[lvl.#2#] Level up",
					"{C:attention}Blackjack",
					"{C:mult}+#2#{} Mult and",
					"{C:chips}+#3#{} chips",
				},
			},
			c_jud_shootingstar = {
				name = "Shooting Star",
				text = {
					"{C:green}#1# in #2#{} chance to double",
					"most played hand level",
				},
			},
		},
		Spectral = {
			c_jud_worship = {
				name = "Worship",
				text = {
					"Gives a free",
					"{C:a6f7f3}Jumbo Boon Pack{}",
				},
			},
			c_jud_wormhole = {
				name = "Worm Hole",
				text = {
					"{C:green}#1# in #2#{} chance to upgrade",
					"your {C:attention}Most Played Hand{} by n!",
					"where n is its current level",
				},
			},
			c_jud_ufo = {
				name = "U.F.O.",
				text = {
					"{C:attention}-#1# Ante{}",
				},
			},
			c_jud_fivebucks = {
				name = "$500",
				text = {
					"{C:money}+$#1#{}",
				},
			},
			c_jud_fivebucksc = {
				name = "$500",
				text = {
					"{C:money}+$#1#{}",
				},
			},
			c_jud_parkplace = {
				name = "Parkplace",
				text = {
					"{C:money}X#1#{} {C:attention}Blind Payout{} while held",
					"Creates {C:attention}#2#{} {C:legendary,E:2}Legendary{}",
					"Joker when flipped",
				},
			},
			c_jud_boardwalk = {
				name = "Boardwalk",
				text = {
					"{C:money}X#1#{} {C:attention}Blind Payout{} while held",
					"{C:red}Self-destructs{} when flipped",
				},
			},
		},
		boons = {
			c_jud_knowledge = {
				name = "Knowledge",
				text = { "Next Card:", "{C:attention}#1#{}" },
			},
			c_jud_health = {
				name = "Health",
				text = {
					"Cards cannot be",
					"debuffed",
				},
			},
			c_jud_wealth = {
				name = "Wealth",
				text = {
					"Gain {C:money}$#1#{C:inactive} (#2#){} for each",
					"defeated blind at end",
					"of round",
				},
			},
			c_jud_serendipity = {
				name = "Serendipity",
				text = {
					"{C:EF0098}Epic{} Jokers appear more often",
				},
			},
			c_jud_power = {
				name = "Power",
				text = {
					"{C:green}1 in 50{} chance to create a",
					"{C:legendary,E:1}Legendary{} Joker when entering a Blind",
					"{C:inactive}(Cannot be affected by jokers like 'Oops, all Six!)",
				},
			},
			c_jud_resource = {
				name = "Resource",
				text = {
					"{C:red}Discards{} can be used to select cards",
					"past the {C:attention}card selection limit{}",
				},
			},
			c_jud_respect = {
				name = "Respect",
				text = {
					"{C:common}Common{} Jokers have the same appearance",
					"rate as {C:rare}Rare{} Jokers",
				},
			},
			c_jud_leadership = {
				name = "Leadership",
				text = {
					"Scored cards of the same rank as the leftmost",
					"card in hand give {X:chips,C:white}X#1#{} chips",
				},
			},
			c_jud_opportunity = {
				name = "Opportunity",
				text = {
					"Defeating a Blind in a {C:attention}Single{} hand",
					"also rewards you with its {C:attention}Tag{}",
				},
			},
			c_jud_love = {
				name = "Love",
				text = {
					"Cards are counted as though",
					"they all had the same {C:attention}suit{}",
				},
			},
		},
		pills = {
			c_jud_bluepill = {
				name = "Blue Pill",
				text = {
					"{X:chips,C:white}X#1#{} Chips until",
					"end of {C:attention}Ante{}",
				},
			},
			c_jud_redpill = {
				name = "Red Pill",
				text = {
					"{X:mult,C:white}X#1#{} Mult until",
					"end of {C:attention}Ante{}",
				},
			},
			c_jud_yellowpill = {
				name = "Yellow Pill",
				text = {
					"{C:money}+$#1#{} when triggered",
				},
			},
			c_jud_purplepill = {
				name = "Purple Pill",
				text = {
					"When {C:attention}Blind{} is selected, it gains",
					"{X:attention,C:white}X#1#{} score requirement.",
					"{C:green}#2# in #3#{} Chance to apply {C:dark_edition}Negative{}",
					"to a random joker",
				},
			},
			c_jud_greenpill = {
				name = "Green Pill",
				text = {
					"At the {C:attention}End of a Round",
					"has a {C:green}#1# in #2#{} Chance to",
					"double your money. Otherwise lose",
					"{C:money}-$#3#{}",
				},
			},
			c_jud_blueredpill = {
				name = "Blue & Red Pill",
				text = {
					"{C:blue}+#1#{} Hand",
					"while held{}",
				},
			},
			c_jud_redbluepill = {
				name = "Red & Blue Pill",
				text = {
					"{C:red}+#1#{} Discard",
					"while held{}",
				},
			},
			c_jud_handypill = {
				name = "Handy Pill",
				text = {
					"{C:attention}+#1#{} hand size",
				},
			},
			c_jud_darkbluepill = {
				name = "Dark Blue Pill",
				text = {
					"After playing a hand,",
					"if it is your last hand",
					"gain {C:blue}+#1#{} Hands.",
					"Has a #2# {C:inactive}(#3#){} Round cooldown.",
				},
			},
			c_jud_tarotpill = {
				name = "Tarot Pill",
				text = {
					"Creates {C:attention}1{} random",
					"{C:tarot}Tarot{} card every 3 rounds",
				},
			},
			c_jud_planetpill = {
				name = "Planet Pill",
				text = {
					"Creates {C:attention}1{} random",
					"{C:planet}Planet{} card every 3 rounds",
				},
			},
			c_jud_spectralpill = {
				name = "Spectral Pill",
				text = {
					"Creates {C:attention}1{} random",
					"{C:spectral}Spectral{} card every 3 rounds",
				},
			},
			c_jud_runicpill = {
				name = "Rune Pill",
				text = {
					"Creates {C:attention}1{} random",
					"{C:purple}Rune{} card every 3 rounds",
				},
			},
			c_jud_blessedpill = {
				name = "Blessed Pill",
				text = {
					"Creates {C:attention}1{} random",
					"{C:attention}Boon{} card every 3 rounds",
				},
			},
		},
		cryptic = {
			c_jud_bigfoot = {
				name = "Bigfoot",
				text = {
					"Converts {C:attention}#1#{} random card in hand",
					"into a randomly {C:attention}modified face card{}",
				},
			},
			c_jud_nessie = {
				name = "Nessie",
				text = {
					"Select {C:attention}#1#{} cards to",
					"convert into your {C:attention}most played{}",
					"card",
				},
			},
			c_jud_chupacabra = {
				name = "Chupacabra",
				text = {
					"Destroy {C:attention}#1#{}",
					"selected cards",
				},
			},
			c_jud_lizard = {
				name = "Lizard People",
				text = {
					"Increases rank of",
					"up to {C:attention}#1#{} selected",
					"cards by {C:attention}#2#{}",
				},
			},
			c_jud_ogopogo = {
				name = "Ogopogo",
				text = {
					"Randomly upgrades {C:attention}two{} random hands to",
					"the same level as your {C:attention}most played{} hand",
				},
			},
			c_jud_mothman = {
				name = "Mothman",
				text = {
					"Enhances {C:attention}#1#{} selected",
					"cards into",
					"{C:attention}Stone Cards{}",
				},
			},
			c_jud_mothership = {
				name = "Mothership",
				text = {
					"Creates up to {C:attention}#1#{}",
					"random {C:0b6623}Cryptic{} cards",
					"{C:inactive}[Must have room]{}",
				},
			},
			c_jud_rod = {
				name = "Rod",
				text = {
					"Creates {C:attention}#1#{} consumables",
					"of random types",
					"{C:inactive}[Must have room]{}",
				},
			},
			c_jud_jersey = {
				name = "Jersey Devil",
				text = {
					"Gives {C:attention}#1#{} selected",
					"cards random {C:edition}editions{}",
				},
			},
			c_jud_amomongo = {
				name = "Amomongo",
				text = {
					"Upgrade the {C:edition}editions{}",
					"of {C:attention}#1#{} selected cards",
				},
			},
			c_jud_notdeer = {
				name = "Not-Deer",
				text = {
					"{C:red}+#1#{} Discard",
				},
			},
			c_jud_allghoi = {
				name = "Allghoi",
				text = {
					"{C:blue}+#1#{} Hand",
				},
			},
			c_jud_mapinguari = {
				name = "Mapinguari",
				text = {
					"{X:attention,C:white}X#1#{C:attention} Blind{} size",
				},
			},
			c_jud_megaladon = {
				name = "Megalodon",
				text = {
					"Destroys all cards in hand",
					"Cards in deck gain {X:chips,C:white}X#1#{} Chips",
					"for each card destroyed",
				},
			},
			c_jud_fairy = {
				name = "Fairy",
				text = {
					"{C:green}#1# in #2#{} chance to create",
					"a {C:legendary,E:1}The Soul{} or {C:jud_exotic,E:1}Gateway{}",
				},
			},
			c_jud_yeti = {
				name = "Yeti",
				text = {
					"Applies {C:edition}Jolly{} on",
					"selected Joker",
				},
			},
			c_jud_babayaga = {
				name = "Babayaga",
				text = {
					"No {C:attention}card selection limit{}",
					"until end of {C:attention}Ante{}",
				},
			},
		},
		uno = {
			c_jud_unowild = {
				name = "Wild Card",
				text = {
					"Creates a randomly {C:attention}modified Face card{}",
					"with a random {C:attention}suit{}",
				},
			},
			c_jud_unowild_four = {
				name = "Wild Draw 4",
				text = {
					"Creates {C:attention}#1#{} randomly {C:attention}modified Face cards{}",
					"with random {C:attention}suits{}",
				},
			},
			c_jud_unowild_custom = {
				name = "Wild Customizable",
				text = {
					"Creates {C:attention}#1# {C:edition}polychrome {C:attention}glass{}",
					"{C:attention}King{} of a random suit with a {C:red}Red seal{}",
				},
			},
			c_jud_fifty = {
				name = "50",
				text = {
					"{C:green}#1# in #2#{} chance to",
					"{C:attention}draw #3#{} cards",
				},
			},
			c_jud_veto = {
				name = "Veto",
				text = {
					"Destroy all",
					"held {C:attention}Kings{}",
				},
			},
			-- No Mercy
			c_jud_unowild_six = {
				name = "Wild Draw 6",
				text = {
					"Creates {C:attention}#1#{} randomly {C:attention}modified Face cards{}",
					"with random {C:attention}suits{}",
				},
			},
			c_jud_unowild_ten = {
				name = "Wild Draw 10",
				text = {
					"Creates {C:attention}#1#{} randomly {C:attention}modified Face cards{}",
					"with random {C:attention}suits{}",
				},
			},
			c_jud_unowild_reversefour = {
				name = "Wild Reverse Draw 4",
				text = {
					"Activates the {C:jud_uno}Wild Draw 4{} effect",
					"{C:blue}+#1#{} Hands for each card in your hand",
				},
			},
			-- Red/Hearts
			c_jud_unoone_a = {
				name = "1",
				text = {
					"Creates a randomly {C:attention}modified{}",
					"{C:attention}Ace{} of {C:hearts}Hearts{}",
				},
			},
			c_jud_unotwo_a = {
				name = "2",
				text = {
					"Creates a randomly {C:attention}modified{}",
					"{C:attention}Two{} of {C:hearts}Hearts{}",
				},
			},
			c_jud_unothree_a = {
				name = "3",
				text = {
					"Creates a randomly {C:attention}modified{}",
					"{C:attention}Three{} of {C:hearts}Hearts{}",
				},
			},
			c_jud_unofour_a = {
				name = "4",
				text = {
					"Creates a randomly {C:attention}modified{}",
					"{C:attention}Four{} of {C:hearts}Hearts{}",
				},
			},
			c_jud_unofive_a = {
				name = "5",
				text = {
					"Creates a randomly {C:attention}modified{}",
					"{C:attention}Five{} of {C:hearts}Hearts{}",
				},
			},
			c_jud_unosix_a = {
				name = "6",
				text = {
					"Creates a randomly {C:attention}modified{}",
					"{C:attention}Six{} of {C:hearts}Hearts{}",
				},
			},
			c_jud_unoseven_a = {
				name = "7",
				text = {
					"Creates a randomly {C:attention}modified{}",
					"{C:attention}Seven{} of {C:hearts}Hearts{}",
				},
			},
			c_jud_unoeight_a = {
				name = "8",
				text = {
					"Creates a randomly {C:attention}modified{}",
					"{C:attention}Eight{} of {C:hearts}Hearts{}",
				},
			},
			c_jud_unonine_a = {
				name = "9",
				text = {
					"Creates a randomly {C:attention}modified{}",
					"{C:attention}Nine{} of {C:hearts}Hearts{}",
				},
			},
			c_jud_unoten_a = {
				name = "0",
				text = {
					"Creates a randomly {C:attention}modified{}",
					"{C:attention}Ten{} of {C:hearts}Hearts{}",
				},
			},
			c_jud_unodrawtwo_a = {
				name = "Draw Two",
				text = {
					"Upgrades the {C:attention}rank{} of selected card by {C:attention}#1#{}",
					"and changes its suit to {C:hearts}Hearts{}",
				},
			},
			c_jud_unoskip_a = {
				name = "Skip",
				text = {
					"{X:attention,C:white}X#1#{C:attention} Blind{} size for each card",
					"of the {C:hearts}Hearts{} suit in hand",
				},
			},
			c_jud_unoreverse_a = {
				name = "Reverse",
				text = {
					"{C:blue}+#1#{} Hand for each card of",
					"with the {C:hearts}Hearts{} suit in hand",
				},
			},
			c_jud_flip = {
				name = "Flip",
				text = {
					"{C:attention}Flips{} all {C:jud_uno}Uno{} cards",
					"Future {C:jud_uno}Uno{} cards appear Flipped",
				},
			},
			c_jud_drawoner = {
				name = "Draw One",
				text = {
					"Upgrades the {C:attention}rank{} of selected card by {C:attention}#1#{}",
					"and changes its suit to {C:hearts}Hearts{}",
				},
			},
			-- No Mercy
			c_jud_unodrawfour_am = {
				name = "Draw 4",
				text = {
					"Upgrades the {C:attention}rank{} of selected card by {C:attention}#1#{}",
					"and changes its suit to {C:hearts}Hearts{}",
				},
			},
			c_jud_unoskipall_am = {
				name = "Skip Everyone",
				text = {
					"{C:blue}+1{} Hand for each card",
					"of the {C:hearts}Hearts{} suit in your deck",
				},
			},
			c_jud_unodiscardall_am = {
				name = "Discard All",
				text = {
					"{C:attention}Discard{} all cards with {C:hearts}Hearts{}",
					"as their suit and {C:attention}draw{} that many cards",
				},
			},
			-- Yellow/Diamonds
			c_jud_unoone_b = {
				name = "1",
				text = {
					"Creates a randomly {C:attention}modified{}",
					"{C:attention}Ace{} of {C:diamonds}Diamonds{}",
				},
			},
			c_jud_unotwo_b = {
				name = "2",
				text = {
					"Creates a randomly {C:attention}modified{}",
					"{C:attention}Two{} of {C:diamonds}Diamonds{}",
				},
			},
			c_jud_unothree_b = {
				name = "3",
				text = {
					"Creates a randomly {C:attention}modified{}",
					"{C:attention}Three{} of {C:diamonds}Diamonds{}",
				},
			},
			c_jud_unofour_b = {
				name = "4",
				text = {
					"Creates a randomly {C:attention}modified{}",
					"{C:attention}Four{} of {C:diamonds}Diamonds{}",
				},
			},
			c_jud_unofive_b = {
				name = "5",
				text = {
					"Creates a randomly {C:attention}modified{}",
					"{C:attention}Five{} of {C:diamonds}Diamonds{}",
				},
			},
			c_jud_unosix_b = {
				name = "6",
				text = {
					"Creates a randomly {C:attention}modified{}",
					"{C:attention}Six{} of {C:diamonds}Diamonds{}",
				},
			},
			c_jud_unoseven_b = {
				name = "7",
				text = {
					"Creates a randomly {C:attention}modified{}",
					"{C:attention}Seven{} of {C:diamonds}Diamonds{}",
				},
			},
			c_jud_unoeight_b = {
				name = "8",
				text = {
					"Creates a randomly {C:attention}modified{}",
					"{C:attention}Eight{} of {C:diamonds}Diamonds{}",
				},
			},
			c_jud_unonine_b = {
				name = "9",
				text = {
					"Creates a randomly {C:attention}modified{}",
					"{C:attention}Nine{} of {C:diamonds}Diamonds{}",
				},
			},
			c_jud_unoten_b = {
				name = "0",
				text = {
					"Creates a randomly {C:attention}modified{}",
					"{C:attention}Ten{} of {C:diamonds}Diamonds{}",
				},
			},
			c_jud_unodrawtwo_b = {
				name = "Draw Two",
				text = {
					"Upgrades the {C:attention}rank{} of selected card by {C:attention}#1#{}",
					"and changes its suit to {C:diamonds}Diamonds{}",
				},
			},
			c_jud_unoskip_b = {
				name = "Skip",
				text = {
					"{X:attention,C:white}X#1#{C:attention} Blind{} size for each card",
					"of the {C:diamonds}Diamonds{} suit in hand",
				},
			},
			c_jud_unoreverse_b = {
				name = "Reverse",
				text = {
					"{C:blue}+#1#{} Hand for each card of",
					"with the {C:diamonds}Diamonds{} suit in hand",
				},
			},
			c_jud_flip_b = {
				name = "Flip",
				text = {
					"{C:attention}Flips{} all {C:jud_uno}Uno{} cards",
					"Future {C:jud_uno}Uno{} cards appear Flipped",
				},
			},
			c_jud_drawoney = {
				name = "Draw One",
				text = {
					"Upgrades the {C:attention}rank{} of selected card by {C:attention}#1#{}",
					"and changes its suit to {C:diamonds}Diamonds{}",
				},
			},
			-- No Mercy
			c_jud_unodrawfour_bm = {
				name = "Draw 4",
				text = {
					"Upgrades the {C:attention}rank{} of selected card by {C:attention}#1#{}",
					"and changes its suit to {C:diamonds}Diamonds{}",
				},
			},
			c_jud_unoskipall_bm = {
				name = "Skip Everyone",
				text = {
					"{C:blue}+1{} Hand for each card",
					"of the {C:diamonds}Diamonds{} suit in your deck",
				},
			},
			c_jud_unodiscardall_bm = {
				name = "Discard All",
				text = {
					"{C:attention}Discard{} all cards with {C:diamonds}Diamonds{}",
					"as their suit and {C:attention}draw{} that many cards",
				},
			},
			-- Blue/Clubs
			c_jud_unoone_c = {
				name = "1",
				text = {
					"Creates a randomly {C:attention}modified{}",
					"{C:attention}Ace{} of {C:clubs}Clubs{}",
				},
			},
			c_jud_unotwo_c = {
				name = "2",
				text = {
					"Creates a randomly {C:attention}modified{}",
					"{C:attention}Two{} of {C:clubs}Clubs{}",
				},
			},
			c_jud_unothree_c = {
				name = "3",
				text = {
					"Creates a randomly {C:attention}modified{}",
					"{C:attention}Three{} of {C:clubs}Clubs{}",
				},
			},
			c_jud_unofour_c = {
				name = "4",
				text = {
					"Creates a randomly {C:attention}modified{}",
					"{C:attention}Four{} of {C:clubs}Clubs{}",
				},
			},
			c_jud_unofive_c = {
				name = "5",
				text = {
					"Creates a randomly {C:attention}modified{}",
					"{C:attention}Five{} of {C:clubs}Clubs{}",
				},
			},
			c_jud_unosix_c = {
				name = "6",
				text = {
					"Creates a randomly {C:attention}modified{}",
					"{C:attention}Six{} of {C:clubs}Clubs{}",
				},
			},
			c_jud_unoseven_c = {
				name = "7",
				text = {
					"Creates a randomly {C:attention}modified{}",
					"{C:attention}Seven{} of {C:clubs}Clubs{}",
				},
			},
			c_jud_unoeight_c = {
				name = "8",
				text = {
					"Creates a randomly {C:attention}modified{}",
					"{C:attention}Eight{} of {C:clubs}Clubs{}",
				},
			},
			c_jud_unonice_c = {
				name = "9",
				text = {
					"Creates a randomly {C:attention}modified{}",
					"{C:attention}Nine{} of {C:clubs}Clubs{}",
				},
			},
			c_jud_unoten_c = {
				name = "0",
				text = {
					"Creates a randomly {C:attention}modified{}",
					"{C:attention}Ten{} of {C:clubs}Clubs{}",
				},
			},
			c_jud_unodrawtwo_c = {
				name = "Draw Two",
				text = {
					"Upgrades the {C:attention}rank{} of selected card by {C:attention}#1#{}",
					"and changes its suit to {C:clubs}Clubs{}",
				},
			},
			c_jud_unoskip_c = {
				name = "Skip",
				text = {
					"{X:attention,C:white}X#1#{C:attention} Blind{} size for each card",
					"of the {C:clubs}Clubs{} suit in hand",
				},
			},
			c_jud_unoreverse_c = {
				name = "Reverse",
				text = {
					"{C:blue}+#1#{} Hand for each card of",
					"with the {C:clubs}Clubs{} suit in hand",
				},
			},
			c_jud_flip_ = {
				name = "Flip",
				text = {
					"{C:attention}Flips{} all {C:jud_uno}Uno{} cards",
					"Future {C:jud_uno}Uno{} cards appear Flipped",
				},
			},
			c_jud_drawoneb = {
				name = "Draw One",
				text = {
					"Upgrades the {C:attention}rank{} of selected card by {C:attention}#1#{}",
					"and changes its suit to {C:clubs}Clubs{}",
				},
			},
			-- No Mercy
			c_jud_unodrawfour_cm = {
				name = "Draw 4",
				text = {
					"Upgrades the {C:attention}rank{} of selected card by {C:attention}#1#{}",
					"and changes its suit to {C:clubs}Clubs{}",
				},
			},
			c_jud_unoskipall_cm = {
				name = "Skip Everyone",
				text = {
					"{C:blue}+1{} Hand for each card",
					"of the {C:clubs}Clubs{} suit in your deck",
				},
			},
			c_jud_unodiscardall_cm = {
				name = "Discard All",
				text = {
					"{C:attention}Discard{} all cards with {C:clubs}Clubs{}",
					"as their suit and {C:attention}draw{} that many cards",
				},
			},
			-- Green/Spades
			c_jud_unoone_d = {
				name = "1",
				text = {
					"Creates a randomly {C:attention}modified{}",
					"{C:attention}Ace{} of {C:spades}Spades{}",
				},
			},
			c_jud_unotwo_d = {
				name = "2",
				text = {
					"Creates a randomly {C:attention}modified{}",
					"{C:attention}Two{} of {C:spades}Spades{}",
				},
			},
			c_jud_unothree_d = {
				name = "3",
				text = {
					"Creates a randomly {C:attention}modified{}",
					"{C:attention}Three{} of {C:spades}Spades{}",
				},
			},
			c_jud_unofour_d = {
				name = "4",
				text = {
					"Creates a randomly {C:attention}modified{}",
					"{C:attention}Four{} of {C:spades}Spades{}",
				},
			},
			c_jud_unofive_d = {
				name = "5",
				text = {
					"Creates a randomly {C:attention}modified{}",
					"{C:attention}Five{} of {C:spades}Spades{}",
				},
			},
			c_jud_unosix_d = {
				name = "6",
				text = {
					"Creates a randomly {C:attention}modified{}",
					"{C:attention}Six{} of {C:spades}Spades{}",
				},
			},
			c_jud_unoseven_d = {
				name = "7",
				text = {
					"Creates a randomly {C:attention}modified{}",
					"{C:attention}Seven{} of {C:spades}Spades{}",
				},
			},
			c_jud_unoeight_d = {
				name = "8",
				text = {
					"Creates a randomly {C:attention}modified{}",
					"{C:attention}Eight{} of {C:spades}Spades{}",
				},
			},
			c_jud_unonine_d = {
				name = "9",
				text = {
					"Creates a randomly {C:attention}modified{}",
					"{C:attention}Nine{} of {C:spades}Spades{}",
				},
			},
			c_jud_unoten_d = {
				name = "0",
				text = {
					"Creates a randomly {C:attention}modified{}",
					"{C:attention}Ten{} of {C:spades}Spades{}",
				},
			},
			c_jud_unodrawtwo_d = {
				name = "Draw Two",
				text = {
					"Upgrades the {C:attention}rank{} of selected card by {C:attention}#1#{}",
					"and changes its suit to {C:spades}Spades{}",
				},
			},
			c_jud_unoskip_d = {
				name = "Skip",
				text = {
					"{X:attention,C:white}X#1#{C:attention} Blind{} size for each card",
					"of the {C:spades}Spades{} suit in hand",
				},
			},
			c_jud_unoreverse_d = {
				name = "Reverse",
				text = {
					"{C:blue}+#1#{} Hand for each card of",
					"with the {C:spades}Spades{} suit in hand",
				},
			},
			c_jud_flip_d = {
				name = "Flip",
				text = {
					"{C:attention}Flips{} all {C:jud_uno}Uno{} cards",
					"Future {C:jud_uno}Uno{} cards appear Flipped",
				},
			},
			c_jud_drawone_d = {
				name = "Draw One",
				text = {
					"Upgrades the {C:attention}rank{} of selected card by {C:attention}#1#{}",
					"and changes its suit to {C:spades}Spades{}",
				},
			},
			-- No Mercy
			c_jud_unodrawfour_dm = {
				name = "Draw 4",
				text = {
					"Upgrades the {C:attention}rank{} of selected card by {C:attention}#1#{}",
					"and changes its suit to {C:spades}Spades{}",
				},
			},
			c_jud_unoskipall_dm = {
				name = "Skip Everyone",
				text = {
					"{C:blue}+1{} Hand for each card",
					"of the {C:spades}Spades{} suit in your deck",
				},
			},
			c_jud_unodiscardall_dm = {
				name = "Discard All",
				text = {
					"{C:attention}Discard{} all cards with {C:spades}Spades{}",
					"as their suit and {C:attention}draw{} that many cards",
				},
			},
			c_jud_unowildtwenty = {
				name = "Wild Draw 20",
				text = {
					"Creates {C:attention}#1#{} randomly {C:attention}modified Face cards{}",
					"with random {C:attention}suits{}",
				},
			},
			-- Orange/Diamonds
			c_jud_drawfive_b = {
				name = "Draw Five",
				text = {
					"Creates {C:attention}#1#{} random",
					"cards of {C:diamonds}Diamonds{}",
				},
			},
			c_jud_skipeveryonef_b = {
				name = "Skip Everyone",
				text = {
					"{C:blue}+1{} Hand for each card of",
					"with the {C:diamonds}Diamond{} suit in hand",
				},
			},
			c_jud_flip_fb = {
				name = "Flip",
				text = {
					"Flips all",
					"{C:jud_uno}Uno{} cards",
				},
			},
			-- No Mercy
			c_jud_discardall_fbm = {
				name = "Discard All",
				text = {
					"{C:attention}Discard{} all cards with {C:diamonds}Diamonds{}",
					"as their suit and {C:attention}draw{} that many cards",
				},
			},
			-- Teal/Clubs
			c_jud_drawfive_c = {
				name = "Draw Five",
				text = {
					"Creates {C:attention}#1#{} random",
					"cards of {C:clubs}Clubs{}",
				},
			},
			c_jud_skipeveryonef_c = {
				name = "Skip Everyone",
				text = {
					"{C:blue}+1{} Hand for each card of",
					"with the {C:clubs}Clubs{} suit in hand",
				},
			},
			c_jud_flip_fc = {
				name = "Flip",
				text = {
					"Flips all",
					"{C:jud_uno}Uno{} cards",
				},
			},
			-- No Mercy
			c_jud_discardall_fcm = {
				name = "Discard All",
				text = {
					"{C:attention}Discard{} all cards with {C:clubs}Clubs{}",
					"as their suit and {C:attention}draw{} that many cards",
				},
			},
			-- Magenta/Spades
			c_jud_drawfive_d = {
				name = "Draw Five",
				text = {
					"Creates {C:attention}#1#{} random",
					"cards of {C:spades}Spades{}",
				},
			},
			c_jud_skipeveryonef_d = {
				name = "Skip Everyone",
				text = {
					"{C:blue}+1{} Hand for each card of",
					"with the {C:spades}Spades{} suit in hand",
				},
			},
			c_jud_flip_fd = {
				name = "Flip",
				text = {
					"Flips all",
					"{C:jud_uno}Uno{} cards",
				},
			},
			-- No Mercy
			c_jud_discardall_fdm = {
				name = "Discard All",
				text = {
					"{C:attention}Discard{} all cards with {C:spades}Spades{}",
					"as their suit and {C:attention}draw{} that many cards",
				},
			},
			-- Purple/Hearts
			c_jud_drawfive_a = {
				name = "Draw Five",
				text = {
					"Creates {C:attention}#1#{} random",
					"cards of {C:hearts}Hearts{}",
				},
			},
			c_jud_skipeveryonef_a = {
				name = "Skip Everyone",
				text = {
					"{C:blue}+1{} Hand for each card of",
					"with the {C:hearts}Hearts{} suit in hand",
				},
			},
			c_jud_flip_f = {
				name = "Flip",
				text = {
					"Flips all",
					"{C:jud_uno}Uno{} cards",
				},
			},
			-- No Mercy
			c_jud_discardall_fam = {
				name = "Discard All",
				text = {
					"{C:attention}Discard{} all cards with {C:hearts}Hearts{}",
					"as their suit and {C:attention}draw{} that many cards",
				},
			},
		},

		Stake = {},
		Tag = {
			tag_jud_packtag = {
				name = "Jumbo Boon Tag",
				text ={"Creates a free jumbo","boon pack"}
			}
		},
		Tarot = {	
			c_jud_famine = {
				name = "The Famine",
				text = {
					"Enhances {C:attention}#1#{} selected",
					"card into a",
					"{C:attention}Cannibal Card{}",
				},
			},
			c_jud_music = {
				name = "The Music",
				text = {
					"Enhances {C:attention}#1#{} selected",
					"card into a",
					"{C:attention}Celestial Card{}",
				},
			},
			c_jud_pilgrimage = {
				name = "The Pilgrimage",
				text = {
					"Applies a random",
					"{C:attention}Post Stamp{} to",
					"{C:attention}#1#{} selected card",
				},
			},
		},
		runes = {
			c_jud_fehu = {
				name = "Fehu",
				text = {
					"{C:attention}Unscored cards{} give {C:money}#1#{}",
					"until end of round",
				},
			},
			c_jud_uruz = {
				name = "Uruz",
				text = {
					"{C:attention}Scored cards{} give their chips {C:attention}twice{}",
					"until end of round",
				},
			},
			c_jud_thurisaz = {
				name = "Thurisaz",
				text = {
					"All Jokers and Consumables have equal",
					"chances of appearing in the next shop",
					"Does not apply after rerolling",
				},
			},
			c_jud_ansuz = {
				name = "Ansuz",
				text = {
					"{C:green}#1# in #2#{} chance to create a",
					"{C:legendary,E:1}The Soul{} or {C:jud_exotic,E:1}Gateway{}",
					"after selecting a Blind",
					"Lasts for {C:attention}#1# Ante{}",
				},
			},
			c_jud_raidho = {
				name = "Raidho",
				text = {
					"{C:attention}Held cards{} without editions gain",
					"random {C:edition}editions{} until end",
					"of round",
				},
			},
			c_jud_kenaz = {
				name = "Kenaz",
				text = {
					"{C:attention}Unscored cards{} are destroyed",
					"until end of round",
				},
			},
			c_jud_gebo = {
				name = "Gebo",
				text = {
					"Gives {C:attention}#1#{} random {C:dark_edition}negative {C:attention}consumables{}",
					"every {C:attention}#1# minutes{} for a maximum of {C:attention}#3#{}",
				},
			},
			c_jud_wunjo = {
				name = "Wunjo",
				text = {
					"{C:attention}Scored hands{} are leveled up when",
					"scored until end of round",
				},
			},
			c_jud_hagalaz = {
				name = "Hagalaz",
				text = {
					"Draw an extra card whenever you",
					"draw a card until end of round",
				},
			},
			c_jud_isa = {
				name = "Isa",
				text = {
					"All played cards are scored",
					"until end of round",
				},
			},
			c_jud_jera = {
				name = "Jera",
				text = {
					"The {C:attention}rightmost scored card{} is",
					"{C:attention}duplicated{} until end of round",
				},
			},
			c_jud_eihwaz = {
				name = "Eihwaz",
				text = {
					"Disable current Blind",
					"until end of round",
				},
			},
			c_jud_perthro = {
				name = "Perthro",
				text = {
					"Defeating a Blind also rewards with a",
					"random {C:attention}tag{} until end of {C:attention}Ante{}",
				},
			},
			c_jud_algiz = {
				name = "Algiz",
				text = {
					"{X:attention,C:white}X#1#{} score requirement",
				},
			},
			c_jud_sowilo = {
				name = "Sowilo",
				text = {
					"Enables visible {C:attention}disabled cards{}",
				},
			},
			c_jud_towaz = {
				name = "Towaz",
				text = {
					"{C:attention}+#1#{} card selection limit",
					"until end of round",
				},
			},
			c_jud_mannaz = {
				name = "Mannaz",
				text = {
					"{C:attention}All cards{} are considered",
					"{C:attention}Face cards{} until end of round",
				},
			},
			c_jud_berkana = {
				name = "Berkana",
				text = {
					"{C:attention}+#1#{} hand size until",
					"end of round",
				},
			},
			c_jud_othala = {
				name = "Othala",
				text = {
					"{C:blue}+#1#{} hands until",
					"end of round",
				},
			},
			c_jud_inguz = {
				name = "Inguz",
				text = {
					"{C:red}+#1#{} discards until",
					"end of round",
				},
			},
		},
		monopoly = {
			c_jud_advancego = {
				name = "Advance to Go",
				text = {
					"{C:money}+$#1#{}",
				},
			},
			c_jud_advanceill = {
				name = "Advance to Illinois Ave",
				text = {
					"Creates an",
					"{C:c70039}Illinois Avenue{}",
					"card",
				},
			},
			c_jud_advancecharles = {
				name = "Advance to St. Charles Place",
				text = {
					"Creates a",
					"{C:c70039}St. Charles Place{}",
					"card",
				},
			},
			c_jud_nearestutility = {
				name = "Advance to nearest Utility",
				text = {
					"Creates a random",
					"{C:c70039}Utility card{}",
				},
			},
			c_jud_nearestraildroad = {
				name = "Advance to nearest Railroad",
				text = {
					"Creates a random",
					"{C:c70039}Railroad card{}",
				},
			},
			c_jud_bankfifty = {
				name = "Bank pays you $50",
				text = {
					"{C:money}+$#1#{}",
				},
			},
			c_jud_freejail = {
				name = "Get ou of Jail Free",
				text = {
					"Defeat the current Blind",
				},
			},
			c_jud_threespace = {
				name = "Go Back Three Spaces",
				text = {
					"{C:attention}-#1# Ante{}",
					"{C:attention}-#1#{} Joker slot",
				},
			},
			c_jud_gojail = {
				name = "Go to Jail",
				text = {
					"{C:blue}+#1#{} Hand",
					"{C:red}+#1#{} Discard",
					"Sets your score to 0",
				},
			},
			c_jud_advancereading = {
				name = "Advance to Reading Railroad",
				text = {
					"Creates a",
					"{C:c70039}Reading Railroad{}",
					"card",
				},
			},
			c_jud_paytax = {
				name = "Pay Poor Tax",
				text = {
					"{C:blue}+#1#{} Hand",
					"{C:red}+#1#{} Discard",
					"{C:money}-$#2#{}",
				},
			},
			c_jud_electedchairman = {
				name = "Elected Chairman",
				text = {
					"{C:money}+$#1# for each {C:attention}Blind{}",
					"defeated so far",
				},
			},
			c_jud_loanmatures = {
				name = "Your Building Loan Matures",
				text = {
					"{C:money}+$#1#{}",
					"Creates a random",
					"{C:e1c16e}Chance{} card",
				},
			},
		},
		community = {
			c_jud_advancegoc = {
				name = "Advance to Go",
				text = {
					"{C:money}+$#1#",
				},
			},
			c_jud_bankerror = {
				name = "Bank Error",
				text = {
					"{C:money}+$#1#",
				},
			},
			c_jud_doctorfree = {
				name = "Doctor's fees",
				text = {
					"{C:blue}+#2#{} Hand",
					"{C:money}-$#1#{}",
				},
			},
			c_jud_sale = {
				name = "Sale of Stock",
				text = {
					"{C:money}+$#1#",
				},
			},
			c_jud_gojailm = {
				name = "Go to Jail",
				text = {
					"{C:attention}+#1# Ante",
				},
			},
			c_jud_grandopera = {
				name = "Grand Opera Night",
				text = {
					"{C:money}+$#1#{} for every {C:attention}Blind{}",
					"defeated this {C:attention}Ante{}",
				},
			},
			c_jud_holiday = {
				name = "Holiday",
				text = {
					"{C:red}+#2#{} Discard",
					"{C:money}+#1#{}",
				},
			},
			c_jud_taxrefund = {
				name = "Income Tax Return",
				text = {
					"{C:money}+$#1#",
				},
			},
			c_jud_bday = {
				name = "Your Birthday!",
				text = {
					"It's your {C:dark_edition,E:2}Birthday!{}",
				},
			},
			c_jud_lifeinsurance = {
				name = "Life insurance matures",
				text = {
					"{C:blue}+#2#{} Hand",
					"{C:money}+$#1#{}",
				},
			},
			c_jud_hospitalfees = {
				name = "Hospital Fees",
				text = {
					"Skip current {C:attention}Blind{}",
					"{C:money}-$#1#{}",
				},
			},
			c_jud_schoolfee = {
				name = "School Fees",
				text = {
					"{C:attention}+#2#{} Hand Size",
					"{C:money}-$#1#{}",
				},
			},
			c_jud_consultancy = {
				name = "Receive $25 consultancy fee",
				text = {
					"{C:money}+$#1#{}",
				},
			},
			c_jud_streetrepair = {
				name = "Street Repairs",
				text = {
					"{C:attention}+#2#{} consumable slots",
					"{C:money}-$#1#{} for each consumable slot",
				},
			},
			c_jud_secondplace = {
				name = "Second Place",
				text = {
					"{C:money}+$#1#{}",
				},
			},
			c_jud_inherit = {
				name = "You inherit $100",
				text = {
					"{C:attention}+#2#{} card selection limit",
					"{C:money}+$#1#{}",
				},
			},
		},
		titledeeds = {
			c_jud_flippeddeeds = {
				name = "Flipped Title Deed",
				text = {
					"Does Nothing",
				},
			},
			c_jud_mediterranean = {
				name = "Mediterranean Avenue",
				text = {
					"{C:money}X#1#{} {C:attention}Blind Payout{} while held",
					"{C:money}+$#2#{} when flipped",
				},
			},
			c_jud_baltic = {
				name = "Baltic Avenue",
				text = {
					"{C:money}X#1#{} {C:attention}Blind Payout{} while held",
					"{C:money}+$#2#{} when flipped",
				},
			},
			c_jud_oriental = {
				name = "Oriental Avenue",
				text = {
					"{C:money}X#1#{} {C:attention}Blind Payout{} while held",
					"{C:blue}+#2#{} Hands until end of round",
					"when flipped",
				},
			},
			c_jud_vermont = {
				name = "Vermont Avenue",
				text = {
					"{C:money}X#1#{} {C:attention}Blind Payout{} while held",
					"{C:red}+#2#{} Discards until end of round",
					"when flipped",
				},
			},
			c_jud_conneciut = {
				name = "Connecticut Avenue",
				text = {
					"{C:money}X#1#{} {C:attention}Blind Payout{} while held",
					"{X:attention,C:white}X#2#{C:attention} Blind{} size until",
					"next {C:attention}Ante{}",
				},
			},
			c_jud_charles = {
				name = "St. Charles Place",
				text = {
					"{C:money}X#1#{} {C:attention}Blind Payout{} while held",
					"{C:attention}+#2#{} Hand Size until end of round",
					"when flipped",
				},
			},
			c_jud_tennesse = {
				name = "Tennessee Avenue",
				text = {
					"{C:money}X#1#{} {C:attention}Blind Payout{} while held",
					"{C:attention}Draw{} cards until you have twice as",
					"many cards as your hand size",
					"in your hand when flipped",
				},
			},
			c_jud_newyork = {
				name = "New York Avenue",
				text = {
					"{C:money}X#1#{} {C:attention}Blind Payout{} while held",
					"Destroy {C:attention}#2#{} cards of the lowest rank",
					"in your deck when flipped",
				},
			},
			c_jud_kentucky = {
				name = "Kentucky Avenue",
				text = {
					"{C:money}X#1#{} {C:attention}Blind Payout{} while held",
					"Gain {C:attention}#2#{} random {C:attention}Tags{}",
					"when flipped",
				},
			},
			c_jud_indiana = {
				name = "Indiana Avenue",
				text = {
					"{C:money}X#1#{} {C:attention}Blind Payout{} while held",
					"Create {C:attention}#2#{} random {C:spectral}Spectral{}",
					"cards when flipped",
				},
			},
			c_jud_illinois = {
				name = "Illinois Avenue",
				text = {
					"{C:money}X#1#{} {C:attention}Blind Payout{} while held",
					"Redeem {C:attention}two{} random",
					"{C:green}Vouchers{} when flipped",
				},
			},
			c_jud_atlantic = {
				name = "Atlantic Avenue",
				text = {
					"{C:money}X#1#{} {C:attention}Blind Payout{} while held",
					"Reset {C:attention}Shop Reroll{}",
					"price when flipped",
				},
			},
			c_jud_ventnor = {
				name = "Ventnor Avenue",
				text = {
					"{C:money}X#1#{} {C:attention}Blind Payout{} while held",
					"Fills your Joker slots with",
					"random {C:blue}Vanilla{} Jokers when flipped",
				},
			},
			c_jud_marvin = {
				name = "Marvin Gardens",
				text = {
					"{C:money}X#1#{} {C:attention}Blind Payout{} while held",
					"Creates {C:attention}two{} random {C:E1C16E}Chance{}",
					"cards when flipped",
				},
			},
			c_jud_pacific = {
				name = "Pacific Avenue",
				text = {
					"{C:money}X#1#{} {C:attention}Blind Payout{} while held",
					"{C:attention}+#2#{} Hand Size until end of round",
					"when flipped",
				},
			},
			c_jud_north = {
				name = "North Carolina Avenue",
				text = {
					"{C:money}X#1#{} {C:attention}Blind Payout{} while held",
					"{C:attention}+#2#{} Card Selection Limit until end",
					"of round when flipped",
				},
			},
			c_jud_pennsylvania = {
				name = "Pennsylvania Avenue",
				text = {
					"{C:money}X#1#{} {C:attention}Blind Payout{} while held",
					"Creates {C:attention}#2#{} random {C:EF0098}Epic{} Jokers",
				},
			},
			c_jud_reading = {
				name = "Reading Railroad",
				text = {
					"{C:money}X#1#{} {C:attention}Blind Payout{} while held",
					"Gain {C:attention}#2#{} random {C:attention}Tags{}",
					"when flipped",
				},
			},
			c_jud_pennsylvaniar = {
				name = "Pennsylvania Railroad",
				text = {
					"{C:money}X#1#{} {C:attention}Blind Payout{} while held",
					"Create {C:attention}#2#{} random {C:spectral}Spectral{}",
					"card when flipped",
				},
			},
			c_jud_bno = {
				name = "B. & O.",
				text = {
					"{C:money}X#1#{} {C:attention}Blind Payout{} while held",
					"Applies {C:dark_edition}Negative{} on a random",
					"Joker when flipped",
				},
			},
			c_jud_shortline = {
				name = "Shortline",
				text = {
					"{C:money}X#1#{} {C:attention}Blind Payout{} while held",
					"Randomly {C:attention}enhances{} selected",
					"cards when flipped",
				},
			},
			c_jud_electric = {
				name = "Electric Company",
				text = {
					"{C:money}X#1#{} {C:attention}Blind Payout{} while held",
					"Levels up {C:attention}most played{} hand",
					"{C:attention}#2#{} times when flipped",
				},
			},
			c_jud_waterworks = {
				name = "Water Works",
				text = {
					"{C:money}X#1#{} {C:attention}Blind Payout{} while held",
					"Creates a random {C:dark_edition}Negative{}",
					"{C:uncommon}Uncommon{} Joker when flipped",
				},
			},
		},
		stickerpacks = {
			c_jud_eternalpack = {
				name = "Eternal Pack",
				text = {
					"Applies {C:c75985}Eternal{} on",
					"{C:attention}#1#{} targets",
				},
			},
			c_jud_perishablepack = {
				name = "Perishable Pack",
				text = {
					"Applies {C:4f5da1}Perishable{} on",
					"{C:attention}#1#{} targets",
				},
			},
			c_jud_rentalpack = {
				name = "Rental Pack",
				text = {
					"Applies {C:b18f43}Rental{} on",
					"{C:attention}#1#{} targets",
				},
			},
			c_jud_pinnedpack = {
				name = "Pinned Pack",
				text = {
					"Applies {C:attention}{} on",
					"{C:attention}#1#{} target",
				},
			},
			c_jud_bananapack = {
				name = "Rental Pack",
				text = {
					"Applies {C:attention}Banana{} on",
					"{C:attention}#1#{} targets",
				},
			},
			c_jud_flickeringpack = {
				name = "Flickering Pack",
				text = {
					"Applies {C:attention}Flickering{} on",
					"{C:attention}#1#{} targets",
				},
			},
			c_jud_riggedpack = {
				name = "Rental Pack",
				text = {
					"Applies {C:cry_code}Rigged{} on",
					"{C:attention}#1#{} targets",
				},
			},
			c_jud_funcpack = {
				name = "Function:// Pack",
				text = {
					"Applies {C:cry_code}Function://{} on",
					"{C:attention}#1#{} target",
				},
			},
			c_jud_globalpack = {
				name = "Global Pack",
				text = {
					"Applies {C:cry_code}Global{} on",
					"{C:attention}#1#{} targets",
				},
			},
			c_jud_absolutepack = {
				name = "Absolute Pack",
				text = {
					"Applies {C:attention}Absolute{} on",
					"{C:attention}#1#{} target",
				},
			},
			c_jud_alldrawonepack = {
				name = "All Draw One Pack",
				text = {
					"Applies {C:attention}All Draw One{} on",
					"{C:attention}#1#{} targets",
				},
			},
			c_jud_skipeveryonepack = {
				name = "Skip Everyone Pack",
				text = {
					"Applies {C:attention}Skip Everyone{} on",
					"{C:attention}#1#{} target",
				},
			},
			c_jud_skipreversepack = {
				name = "Reverse and Skip Pack",
				text = {
					"Applies {C:attention}Reverse and Skip{} on",
					"{C:attention}#1#{} target",
				},
			},
			c_jud_targetedtwopack = {
				name = "Targeted Draw Two Pack",
				text = {
					"Applies {C:attention}Targeted Draw Two{}",
					"on {C:attention}#1#{} target",
				},
			},
			c_jud_alldrawtwopack = {
				name = "All Draw Two Pack",
				text = {
					"Applies {C:attention}All Draw Two{}",
					"on {C:attention}#1#{} targets",
				},
			},
			c_jud_targetedfourpack = {
				name = "Targeted Draw Four Pack",
				text = {
					"Applies {C:attention}Targeted Draw Four{}",
					"on {C:attention}#1#{} target",
				},
			},
			c_jud_upack = {
				name = "U Pack",
				text = {
					"Applies {C:attention}U{} on",
					"{C:attention}#1#{} targets",
				},
			},
			c_jud_npack = {
				name = "N Pack",
				text = {
					"Applies {C:attention}N{} on",
					"{C:attention}#1#{} targets",
				},
			},
			c_jud_opack = {
				name = "O Pack",
				text = {
					"Applies {C:attention}O{} on",
					"{C:attention}#1#{} targets",
				},
			},
			c_jud_expack = {
				name = "! Pack",
				text = {
					"Applies {C:attention}!{} on",
					"{C:attention}#1#{} targets",
				},
			},
			c_jud_wildjackpotpack = {
				name = "Wilf Jackpot Pack",
				text = {
					"Applies {C:attention}Wild Jackpot{}",
					"on {C:attention}#1#{} targets",
				},
			},
			c_jud_temporarypack = {
				name = "Temporary Pack",
				text = {
					"Applies {C:red}Temporary{} on",
					"{C:attention}#1#{} targets",
				},
			},
		},
		Voucher = {
			v_jud_divinevoucher = {
				name = "Divine Voucher",
				text = {
					"{C:a6f7f3}Boon Packs{} can appear in the shop",
				},
			},
			v_jud_allwild = {
				name = "All Wild",
				text = {
					"{C:attention}Skip{}, {C:attention}Reverse{} and {C:attention}Draw Two{} cards",
					"also trigger the{C:attention}Wild{} card effect",
				},
			},
			v_jud_unostickers = {
				name = "Uno Stickers",
				text = {
					"Uno {C:attention}Stickers{} can now appear",
				},
			},
			v_jud_unostickerstier = {
				name = "Uno Flexible",
				text = {
					"{C:attention}Flex{} stickers are {C:money}free{}",
				},
			},
			v_jud_dice = {
				name = "Uno Dice",
				text = {
					"Cards created by {C:attention}Uno cards{}",
					"are {C:green}Rigged{}",
				},
			},
			v_jud_flip = {
				name = "Uno Flip",
				text = {
					"{C:attention}Flip cards{} can now appear",
					"alongside other {C:attention}Uno cards{}",
				},
			},
			v_jud_nomercy = {
				name = "Uno No Mercy",
				text = {
					"Show 'em no mercy!",
				},
			},
			v_jud_nomercytier = {
				name = "Uno Merciless",
				text = {
					"Hand size {X:edition,C:white}=#1#",
				},
			},
			v_jud_console = {
				name = "Uno Console",
				text = {
					"{C:green}1 in 3{} chance to duplicate used {C:attention}Uno cards{}",
				},
			},
		},
	},
	misc = {
		achievement_descriptions = {},
		achievement_names = {},
		blind_states = {},
		challenge_names = {},
		collabs = {},
		dictionary = {
			k_jud_boonpk = "Boon Pack",
			k_jud_unopk = "Uno Pack",
			k_jud_deedspk = "Monopoly Pack",
			k_jud_runespk = "Rune Pack",
			k_jud_stickerpackpk = "Sticker Pack",
			k_boons = "Boon",
			b_boons_cards = "Boons",
			k_runes = "Rune",
			b_runes_cards = "Rune Cards",
			k_cryptic = "Cryptic",
			b_cryptic_cards = "Cryptic Cards",
			k_uno = "Uno",
			b_uno_cards = "Uno Cards",
			k_pills = "Pill",
			b_pills_cards = "Pills",
			k_titledeeds = "Avenue",
			k_titledeeds_q = "Utility",
			k_titledeeds_z = "Railroad",
			b_titledeeds_cards = "Title Deeds",
			k_monopoly = "Chance Card",
			b_monopoly_cards = "Chance Cards",
			k_community = "Community Card",
			b_community_cards = "Community Cards",
			k_stickerpacks = "Sticker Pack",
			b_stickerpacks_cards = "Sticker Packs",
			lab_jud_posts = "Post Stamps",
			lab_jud_borders = "Borders",


			k_jud_epic = "Epic",
			k_jud_exotic = "Exotic",
			k_jud_cursed = "Cursed",
		},
		high_scores = {},
		labels = {
			boons = "Boons",
			jud_cerise = "Cerise",
			jud_perse = "Perse",
			jud_aureate = "Aureate",
			jud_navy = "Navy",
			jud_emerald = "Emerald",
			jud_ultramarine = "Emerald",
			jud_majestic = "Majestic",
			jud_temporary = "Temporary",
			jud_alldrawone_a = "All Draw One",
			jud_alldrawone_b = "All Draw One",
			jud_alldrawone_c = "All Draw One",
			jud_alldrawone_d = "All Draw One",
			jud_skipeveryone_a = "Skip Everyone",
			jud_skipeveryone_b = "Skip Everyone",
			jud_skipeveryone_c = "Skip Everyone",
			jud_skipeveryone_d = "Skip Everyone",
			jud_skipreverse_a = "Skip & Reverse",
			jud_skipreverse_b = "Skip & Reverse",
			jud_skipreverse_c = "Skip & Reverse",
			jud_skipreverse_d = "Skip & Reverse",
			jud_targeteddraw_a = "Targeted Draw Two",
			jud_alldrawtwo_a = "All Draw Two",
			jud_targeteddrawfour_a = "Targeted Draw Four",
			jud_u = "U",
			jud_n = "N",
			jud_o = "O",
			jud_ex = "!",
			jud_wildjackpot = "Wild Jackpot",

			jud_epic = "Epic",
			jud_exotic = "Exotic",
			jud_cursed = "Cursed",

			border_jud_bonus = "Bonus Border",
			border_jud_mult = "Mult Border",
			border_jud_smudged = "Smudged Border",
			border_jud_glass = "Glass Border",
			border_jud_steel = "Steel Border",
			border_jud_stone = "Stone Border",
			border_jud_gold = "Gold Border",
			border_jud_lucky = "Lucky Border"
		},
		poker_hand_descriptions = {},
		poker_hands = {},
		quips = {},
		ranks = {},
		suitplural = {},
		suitsingular = {},
		tutorial = {},
		v_dictionary = {},
		v_text = {},
	},
}

return {
	descriptions = {
		Back = {},
		Blind = {},
		Edition = {
			e_jud_reverse = {
				name = "Reverse Holographic",
				text = {
					"{X:mult,C:white}X#1#{} Mult",
					"{X:mult,C:white}X#2#{} Mult for every other",
					"{C:attention}Reverse Holographic{} Joker and Card",
				},
			},
			e_jud_fake = {
				name = "Fake",
				text = {
					"{C:mult}+#1#{} Mult",
					"{C:chips}+#1#{} chips",
					"{C:money}+$#2#{}",
					"{C:green}#3# in #4#{} chance to",
					"{C:red}self-destruct{}",
				},
			},
		},
		Enhanced = {
			e_jud_celestial = {
				name = "Celestial",
				text = {
					"Gives chips and Mult of your",
					"most played hand when scored",
				},
			},
			e_jud_cannibal = {
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
				Text = {
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
			j_jud_ludophobia = {
				name = "Ludophobia",
				text = {
					"{C:blue}+#1# hand size{} and {C:red}+#2# discard{}",
					"{C:green}#3# in #4#{} chance to {C:red}self-destruct{}",
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
					"Gains {X:dark_edition,C:white}^#2#{} Mult for each empty {C:attention}Joker slot{}",
					"and {X:dark_edition,C:white}^#3#{} Mult for each played {C:attention}High Card{}",
					"{C:red}Self-destructs{} whenever more than {C:attention}#1#{} card is scored",
					"{C:inactive}[Currently {}{X:dark_edition,C:white}^#4#{} {C:inactive}Mult]{}",
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
					"Set {C:FF00FF}Score{} to {C:attention}#2#{} after scoring",
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
                    "of a round"
                }
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
		},
		Planet = {
			c_jud_smertrios = {
				name = "Smertiros",
				text = {
					"[lvl.#1#] Level up",
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
					"{C:green}#1# in #2#{} chance double the","level of your {C:attention}Most Played Hand"
				},
			},
		},
		boons = {
			c_jud_knowledge = {
				name = "Knowledge",
				text = { "Next Card:","{C:attention}#1#{}"},
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
                    "{C:inactive}(Cannot be affected by jokers like 'Oops, all Six!)"
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
		Stake = {},
		Tag = {},
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
            "{C:legendary,E:1}The Soul{} or {C:cry_exotic,E:1}Gateway{}",
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
            "{C:attention}Illinois Avenue{}",
            "card",
        },
    },
    c_jud_advancecharles = {
        name = "Advance to St. Charles Place",
        text = {
            "Creates a",
            "St. Charles Place",
            "card",
        },
    },
    c_jud_bankfifty = {
        name = "Bank pays you $50",
        text = {
            "{C:money}+$#1#{}",
        },
    },
    
},
		Voucher = {
			v_jud_guardianvoucher = {
				name = "Guardian Voucher",
				text = {
					"{C:a6f7f3}Boons{} can appear in",
					"{C:spectral}Spectral Packs{}",
				},
			},
			v_jud_confessionalvoucher = {
				name = "Confessional Voucher",
				text = {
					"{C:a6f7f3}Boons{} can appear in",
					"{C:tarot}Major Arcanas Packs{}",
				},
			},
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
			v_jud_unodice = {
				name = "Uno Dice",
				text = {
					"Cards created by {C:attention}Uno cards{}",
					"are {C:green}Rigged{}",
				},
			},
			v_jud_unoflip = {
				name = "Uno Flip",
				text = {
					"{C:attention}Flip cards{} can now appear",
					"alongside other {C:attention}Uno cards{}",
				},
			},
			v_jud_unoflipflop = {
				name = "Uno Flip Flop",
				text = {
					"{C:attention}Flipped Uno cards{} and {C:attention}Unflipped Uno cards{}",
					"can both appear at the same time",
				},
			},
			v_jud_unopowergrab = {
				name = "Uno Power Grab",
				text = {
					"{C:attention}Consumables{} can now appear with",
					"{C:attention}Uno Power Grab stickers{}",
				},
			},
			v_jud_wildjackpot = {
				name = "Uno Wild Jackpot",
				text = {
					"{C:attention}Consumables{} can now appear with",
					"the {C:attention}Wild Jackpot sticker{}",
				},
			},
			v_jud_unonomercy = {
				name = "Uno No Mercy",
				text = {
					"Show 'em no mercy!",
				},
			},
			v_jud_unomerciless = {
				name = "Uno Merciless",
				text = {
					"Hand size {X:edition,C:white}= #1#",
				},
			},
			v_jud_unoconsole = {
				name = "Uno Console",
				text = {
					"{C:green}#1# in #2#{} chance to duplicate used {C:attention}Uno cards{}",
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
			lab_jud_posts = "Post Stamps",
		},
		high_scores = {},
		labels = {
			boons = "Boons",
		},
		poker_hand_descriptions = {},
		poker_hands = {},
		quips = {},
		ranks = {},
		suits_plural = {},
		suits_singular = {},
		tutorial = {},
		v_dictionary = {},
		v_text = {},
	},
}

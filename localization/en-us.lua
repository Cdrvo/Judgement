return {
	descriptions = {
		Back = {},
		Blind = {},
		Edition = {},
		Enhanced = {},
		Joker = {
			-- Common
			j_jud_useless = {
				name = "Useless",
				text = { "Always has a {C:attention}Random{} {C:dark_edition}Edition{}.", "Does nothing" },
			},
			j_jud_burnttoast = {
				name = "Burnt Toast",
				text = {
					"{C:money}+$3{} Value for each joker in hand.",
					"{C:red}Self-Destructs{} if",
					"played hand contains a {C:attention}Pair",
				},
			},
			-- Uncommon
			j_jud_amnesiac = {
				name = "Amnesiac Joker",
				text = {
					"Whenever a Joker is sold or destroyed",
					"{C:attention}1/4{} chance to {C:red}self-destruct{} and",
					"creates a copy of that Joker",
				},
			},
			j_jud_megalophobia = {
				name = "Megalophobia",
				text = {
					"Each scored card gives {X:chips,C:white}X1.2{} Chips",
					"{C:red}Self-destructs{} if a scored card is higher than {C:attention}seven{}",
				},
			},
			j_jud_triskaidekaphobia = {
				name = "Triskaidekaphobia",
				Text = {
					"Scored cards are scored {C:attention}1{} additional time",
					"{C:red}Self-destructs{} if any of the scored cards add up to",
					"{C:attention}thirteen{}",
				},
			},
			j_jud_ophthalmophobia = {
				name = "Ophthalmophobia",
				text = {
					"Copies the rightmost Joker",
					"{C:red}Self-destructs{} if it copies the same Joker",
					"more than once in a row",
				},
			},
			j_jud_addicted = {
				name = "Addicted Joker",
				text = {
					"Creates a {C:blue}Pill{} when",
					"leaving the Shop",
				},
			},
			j_jud_dealing = {
				name = "Dealing Joker",
				text = {
					"Creates a temporary {C:blue}Pill{} whenever a",
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
					"Gives a free Jumbo Boon Pack",
					"when sold",
				},
			},
			j_jud_ludophobia = {
				name = "Ludophobia",
				text = {
					"{C:blue}+1 hand size{} and {C:red}+1 discard{}",
					"{C:attention}1/4{} chance to {C:red}self-destruct{}",
				},
			},
			-- Rare
			j_jud_maniac = {
				name = "Maniac Joker",
				text = {
					"Gives a free Boo Pack after",
					"defeating a Boss Blind",
				},
			},
			j_jud_famished = {
				name = "Famished Joker",
				text = {
					"Gains {X:mult,C:white}X0.2{} Mult{} whenever a {C:attention}Cannibal{}",
					"card is destroyed",
				},
			},
			-- Epic
			-- Legendary
			-- Exotic
			j_jud_phobophobia = {
				name = "Phobophobia",
				text = {
					"When {C:attention}Blind{} is selected,",
					"create 3 {C:dark_edition}Negative{} Jokers.",
					"{C:red}Self-Destructs{} if a joker is destroyed or sold",
				},
			},
			-- Cursed
		},
		Other = {},
		Planet = {},
		Spectral = {},
		boons = {
			c_jud_knowledge = {
				name = "Knowledge",
				text = { "#1#", "#2#", "#3#" },
			},
		},
		Stake = {},
		Tag = {},
		Tarot = {},
		Voucher = {},
	},
	misc = {
		achievement_descriptions = {},
		achievement_names = {},
		blind_states = {},
		challenge_names = {},
		collabs = {},
		dictionary = {},
		high_scores = {},
		labels = {},
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

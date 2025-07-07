SMODS.Booster{
    key = 'boonp',
    pos= {x=0,y=0},
    config = {extra = 2,choose = 1},
    group_key = 'k_jud_boonpk',
    cost = 4,
    weight = 0.06,
    select_card = "jud_boons",
    create_card = function(self, card, i)
        return SMODS.create_card({
            set = "boons",
             skip_materialize = true
        })
    end,
}

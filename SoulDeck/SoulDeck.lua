SMODS.Atlas{
    key = "soulAtlas",
    px = 71,
    py = 95,
    path = "SoulAtlas.png"
}

SMODS.Back{
    name = "Soul Deck",
    key = "souldeck",
    pos = {x = 0, y = 0},
    atlas = "soulAtlas",
    config = {hand_size = 75, joker_slot = 100, consumable_slot = 100, dollars = 100, spectral_rate = 100, consumables = {"c_soul", "c_soul", "c_soul", "c_soul", "c_soul", "c_soul", "c_soul"}},
    loc_txt = {
        name = "Soul Deck",
        text = {
            "A Really Stupid Deck",
        },
    },
    apply = function()
        G.E_MANAGER:add_event(Event({
            func = function()
                for k, v in ipairs(G.playing_cards) do
                    if v.base.suit ~= "Spades" then
                        v:change_suit("Spades")
                    end
                end
            return true
            end
        }))
         G.E_MANAGER:add_event(Event({
            func = function()
                local c = Gane:P_CENTERS.j_ring_master
                c:add_to_deck(false)
                c:set_edition(edition.polychrome, 1, 1)
            return true
            end
        }))
    end
}

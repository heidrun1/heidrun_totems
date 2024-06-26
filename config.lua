Config = {}

Config.Totems = {
    -- Defines a new totem item. In this example, the item name is "example_item".
    ["example_item"] = {
        -- Defines the interval in milliseconds between each effect activation.
        interval = 2000,

        -- Defines the function to be executed when the totem effect is activated.
        action = function(playerPed, playerId)
        end,

        -- Defines the function to be executed when the totem effect is removed. 
        remove = function(playerPed, playerId)
        end
    },
}

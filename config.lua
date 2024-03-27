Config = {}

Config.Totems = {
    -- Defines a new totem with a unique key. In this example, the key is "example_item".
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

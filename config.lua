Config = {}

Config.Totems = {
    -- Defines a new totem with a unique key. In this example, the key is "example".
    ["example_item"] = {
        -- Defines the interval in milliseconds between each effect activation. In this example, the interval is 2000ms or 2 seconds.
        interval = 2000,

        -- Defines the function to be executed when the totem effect is activated. In this example, the function resets the player's stamina and sets their sprint multiplier to 1.4.
        action = function(playerPed, playerId)
        end,

        -- Defines the function to be executed when the totem effect is removed. In this example, the function sets the player's sprint multiplier back to 1.0.
        remove = function(playerPed, playerId)
        end
    },
}
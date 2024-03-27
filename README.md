
# Totems FiveM

This script adds a customizable system of power totems to your FiveM server. Power totems are objects that players can interact with to gain temporary boosts or abilities, such as increased movement speed or invulnerability.

## Requirements

- ESX Legacy

## Example Item

```lua
    ["speed_totem"] = {
        interval = 2000,
        action = function(playerPed, playerId)
            ResetPlayerStamina(playerId)
            SetRunSprintMultiplierForPlayer(playerId, 1.4)
        end,
        remove = function(playerPed, playerId)
            SetRunSprintMultiplierForPlayer(playerId, 1.0)
        end
    },
```


## Authors

- [@heidrun1](https://github.com/heidrun1)


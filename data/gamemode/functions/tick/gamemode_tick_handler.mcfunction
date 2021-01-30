execute as @a[scores={GM=..-2}] run function gamemode_handler:gamemodenotavaliable
execute as @a[scores={GM=0}] run function gamemode_handler:survival
execute as @a[scores={mod_level=10..,GM=1}] run function gamemode_handler:creative
execute as @a[scores={mod_level=..9,GM=1}] run function gamemode_handler:gamemodenotavaliable
execute as @a[scores={GM=2}] run function gamemode_handler:adventure
execute as @a[scores={mod_level=8..,GM=3}] run function gamemode_handler:spectator
execute as @a[scores={mod_level=..7,GM=3}] run function gamemode_handler:gamemodenotavaliable
execute as @a[scores={GM=4..}] run function gamemode_handler:gamemodenotavaliable

execute as @a run function gamemode_handler:reset/gamemode_reset_handler
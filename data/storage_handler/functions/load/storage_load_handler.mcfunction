execute unless entity @e[tag=handler,type=armor_stand,limit=1] run tellraw @a[tag=verbose] {"text":"handler is required for this handler to work."}
execute unless entity @e[tag=handler,type=armor_stand,limit=1] run summon armor_stand 0 0 0 {Tags:["handler","storage_handler"],NoGravity:1b,Marker:1b,Invulnerable:1b,Invisible:1b}

execute unless entity @e[tag=storage_handler,type=armor_stand,limit=1] if entity @e[tag=handler,type=armor_stand,limit=1] as @e[tag=handler,type=armor_stand,limit=1] run tag @s add storage_handler

scoreboard objectives add storage_loop dummy "Storage Loop Count"
tag @a remove storage_has_player_loaded
execute as @e[tag=storage_handler] run scoreboard players operation @s storage_loop = @e[tag=gamerule_handler] player_cap
execute as @e[tag=storage_handler,scores={storage_loop=1..},type=armor_stand] run function storage_handler:load/loop_handler/storage_load_loop_handler

scoreboard objectives add active_uuid_one dummy "Active UUID Part One"
scoreboard objectives add active_uuid_two dummy "Active UUID Part Two"
scoreboard objectives add active_uuid_tres dummy "Active UUID Part Three"
scoreboard objectives add active_uuid_four dummy "Active UUID Part Four"

scoreboard objectives add found_selector dummy "Has Found Selector(s)"
scoreboard objectives add found_by_uuid dummy "Has Found By UUID"
scoreboard objectives add found_by_date dummy "Has Found By Date"

scoreboard objectives add storage_day dummy "Storage Day As Number"
scoreboard objectives add storage_month dummy "Storage Month As Number"
scoreboard objectives add storage_year dummy "Storage Year As Number"


scoreboard objectives add selector_count dummy "Number of Selectors"
scoreboard objectives add delete_selector dummy "Has Deleted Selector(s)"
scoreboard objectives add delete_by_uuid dummy "Has Deleted By UUID"
scoreboard objectives add delete_by_date dummy "Has Deleted By Date"

scoreboard objectives add storage_players dummy "Storage Has player Array"
execute as @e[tag=storage_handler,type=armor_stand,limit=1] store success score @s storage_players run data get storage minecraft:storage_handler players

execute as @e[tag=storage_handler,type=armor_stand,limit=1] if score @s storage_players matches 0 run tag @s add storage_does_not_have_players_array

execute if entity @e[tag=storage_does_not_have_players_array] run tellraw @a[tag=verbose] {"text":"storage_handler does not have players array"}
execute if entity @e[tag=storage_does_not_have_players_array] run data modify storage minecraft:storage_handler players set value []
execute if entity @e[tag=storage_does_not_have_players_array] as @e[tag=storage_does_not_have_players_array] run tag @s remove storage_does_not_have_players_array

scoreboard objectives remove storage_players

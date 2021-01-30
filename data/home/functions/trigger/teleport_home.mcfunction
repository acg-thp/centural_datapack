tag @s add run_teleport_home
execute in minecraft:overworld run setblock 0 2 0 minecraft:end_gateway{ExactTeleport:1}

execute as @s[tag=run_teleport_home] run execute store result block 0 2 0 ExitPortal.X long 1 run scoreboard players get @s home_x
execute as @s[tag=run_teleport_home] run execute store result block 0 2 0 ExitPortal.Y long 1 run scoreboard players get @s home_y
execute as @s[tag=run_teleport_home] run execute store result block 0 2 0 ExitPortal.Z long 1 run scoreboard players get @s home_z

summon item 0 2 0 {Tags:["home_scroll"],NoGravity:1b,Age:5960,PickupDelay:-1,Item:{id:"minecraft:paper",Count:1b,tag:{home_state:0L}}}
execute positioned 0 2 0 at @e[nbt={Item:{tag:{home_state:0L}}},limit=1,distance=2..] run tp @s[tag=run_teleport_home] ~ ~ ~

#tellraw @s ["",{"text":"[","bold":true,"color":"dark_blue"},{"text":"C","bold":true,"color":"dark_green","hoverEvent":{"action":"show_text","contents":["",{"text":"Datapack By: Respawn_101","color":"aqua"}]}},{"text":"e","bold":true,"color":"dark_aqua","hoverEvent":{"action":"show_text","contents":["",{"text":"Datapack By: Respawn_101","color":"aqua"}]}},{"text":"n","bold":true,"color":"dark_red","hoverEvent":{"action":"show_text","contents":["",{"text":"Datapack By: Respawn_101","color":"aqua"}]}},{"text":"t","bold":true,"color":"dark_purple","hoverEvent":{"action":"show_text","contents":["",{"text":"Datapack By: Respawn_101","color":"aqua"}]}},{"text":"u","bold":true,"color":"gold","hoverEvent":{"action":"show_text","contents":["",{"text":"Datapack By: Respawn_101","color":"aqua"}]}},{"text":"r","bold":true,"color":"green","hoverEvent":{"action":"show_text","contents":["",{"text":"Datapack By: Respawn_101","color":"aqua"}]}},{"text":"a","bold":true,"color":"aqua","hoverEvent":{"action":"show_text","contents":["",{"text":"Datapack By: Respawn_101","color":"aqua"}]}},{"text":"l","bold":true,"color":"dark_aqua","hoverEvent":{"action":"show_text","contents":["",{"text":"Datapack By: Respawn_101","color":"aqua"}]}},{"text":"] ","bold":true,"color":"dark_blue"},{"text":"Home!","color":"dark_red"}]
execute at @e[nbt={Item:{tag:{home_state:0L}}},limit=1] if entity @s[distance=..2] run tag @s remove run_teleport_home

execute as @s run function home_handler:enable/enable_teleport_home
#execute at @e[nbt={Item:{tag:{home_state:0L}}},limit=1] if entity @s[distance=..2] as @s run function home_handler:enables
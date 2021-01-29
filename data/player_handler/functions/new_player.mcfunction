tellraw @a ["",{"text":"[","bold":true,"color":"dark_blue"},{"text":"C","bold":true,"color":"dark_green","hoverEvent":{"action":"show_text","value":["",{"text":"Datapack By: Respawn_101","color":"aqua"}]}},{"text":"e","bold":true,"color":"dark_aqua","hoverEvent":{"action":"show_text","value":["",{"text":"Datapack By: Respawn_101","color":"aqua"}]}},{"text":"n","bold":true,"color":"dark_red","hoverEvent":{"action":"show_text","value":["",{"text":"Datapack By: Respawn_101","color":"aqua"}]}},{"text":"t","bold":true,"color":"dark_purple","hoverEvent":{"action":"show_text","value":["",{"text":"Datapack By: Respawn_101","color":"aqua"}]}},{"text":"u","bold":true,"color":"gold","hoverEvent":{"action":"show_text","value":["",{"text":"Datapack By: Respawn_101","color":"aqua"}]}},{"text":"r","bold":true,"color":"green","hoverEvent":{"action":"show_text","value":["",{"text":"Datapack By: Respawn_101","color":"aqua"}]}},{"text":"a","bold":true,"color":"aqua","hoverEvent":{"action":"show_text","value":["",{"text":"Datapack By: Respawn_101","color":"aqua"}]}},{"text":"l","bold":true,"color":"dark_aqua","hoverEvent":{"action":"show_text","value":["",{"text":"Datapack By: Respawn_101","color":"aqua"}]}},{"text":"] ","bold":true,"color":"dark_blue"},{"text":"Welcome ","color":"dark_red"},{"selector":"@s","color":"green"},{"text":" to Centural!","color":"dark_red"}]
scoreboard players operation @s teleport_id = NewID teleport_id
scoreboard players add NewID teleport_id 1
tag @s add TPEnabled
tag @s add returning_player
execute as @a[tag=TPEnabled] run function tp_handler:enables
execute as @a[scores={mod_level=1..}] run function mod_handler:enables
execute as @a run function orientation_handler:enables
execute as @a[scores={mod_level=1..}] run function gamemode_handler:enables
execute as @s run function home_handler:enable/enable_all
team join player @s


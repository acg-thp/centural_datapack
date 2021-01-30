
function gamerule_handler:load/gamerule_load_handler
function storage_handler:load/storage_load_handler
function scoreboard_handler:load/scoreboard_load_handler
function team_handler:load/team_load_handler
function home_handler:load/home_load_handler
function spawn_handler:load/spawn_load_handler
function tellraw_handler:load/tellraw_load_handler
function teleport_handler:load/teleport_load_handler
function hack_handler:load/hack_load_handler
function jail_handler:load/jail_load_handler
function trigger_handler:load/trigger_load_handler

#TODO
execute as @a[scores={mod_level=1..}] run function mod_handler:enables
execute as @a run function orientation_handler:enables
execute as @a[scores={mod_level=1..}] run function gamemode_handler:enables
execute as @a run function orientation_handler:enables
execute as @a unless entity @s[scores={GM=-1}] run function gamemode_handler:reset/gamemode_reset_handler
tellraw @a ["",{"text":"[","bold":true,"color":"dark_blue"},{"text":"C","bold":true,"color":"dark_green","hoverEvent":{"action":"show_text","value":["",{"text":"Datapack By: Respawn_101","color":"aqua"}]}},{"text":"e","bold":true,"color":"dark_aqua","hoverEvent":{"action":"show_text","value":["",{"text":"Datapack By: Respawn_101","color":"aqua"}]}},{"text":"n","bold":true,"color":"dark_red","hoverEvent":{"action":"show_text","value":["",{"text":"Datapack By: Respawn_101","color":"aqua"}]}},{"text":"t","bold":true,"color":"dark_purple","hoverEvent":{"action":"show_text","value":["",{"text":"Datapack By: Respawn_101","color":"aqua"}]}},{"text":"u","bold":true,"color":"gold","hoverEvent":{"action":"show_text","value":["",{"text":"Datapack By: Respawn_101","color":"aqua"}]}},{"text":"r","bold":true,"color":"green","hoverEvent":{"action":"show_text","value":["",{"text":"Datapack By: Respawn_101","color":"aqua"}]}},{"text":"a","bold":true,"color":"aqua","hoverEvent":{"action":"show_text","value":["",{"text":"Datapack By: Respawn_101","color":"aqua"}]}},{"text":"l","bold":true,"color":"dark_aqua","hoverEvent":{"action":"show_text","value":["",{"text":"Datapack By: Respawn_101","color":"aqua"}]}},{"text":"] ","bold":true,"color":"dark_blue"},{"text":"Finished Initilizing Centural Systems, Please Enjoy!","color":"dark_red"}]
#TODO end decide how to handler this
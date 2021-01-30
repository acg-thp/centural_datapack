data remove storage load:require core

execute store success storage load:require core byte 1 run data get storage core:load {loaded:1b}
execute if data storage load:require {core:0b} run say "Load requires core but storage core:load loaded was not true."
execute if data storage load:require {core:1b} run say "[require] core:load"


#function gamerule:load
#function storage:load
#function scoreboard:load
#function team:load
#function home:load
#function spawn:load
#function tellraw:load
#function teleport:load
#function cheat:load
#function jail:load
#function trigger:load

#TODO
#execute as @a[scores={mod_level=1..}] run function helper:enables
#execute as @a run function orientation:enables
#execute as @a[scores={mod_level=1..}] run function gamemode:enables
#execute as @a run function orientation:enables
#execute as @a unless entity @s[scores={GM=-1}] run function gamemode:reset
#tellraw @a ["",{"text":"[","bold":true,"color":"dark_blue"},{"text":"C","bold":true,"color":"dark_green","hoverEvent":{"action":"show_text","value":["",{"text":"Datapack By: Respawn_101","color":"aqua"}]}},{"text":"e","bold":true,"color":"dark_aqua","hoverEvent":{"action":"show_text","value":["",{"text":"Datapack By: Respawn_101","color":"aqua"}]}},{"text":"n","bold":true,"color":"dark_red","hoverEvent":{"action":"show_text","value":["",{"text":"Datapack By: Respawn_101","color":"aqua"}]}},{"text":"t","bold":true,"color":"dark_purple","hoverEvent":{"action":"show_text","value":["",{"text":"Datapack By: Respawn_101","color":"aqua"}]}},{"text":"u","bold":true,"color":"gold","hoverEvent":{"action":"show_text","value":["",{"text":"Datapack By: Respawn_101","color":"aqua"}]}},{"text":"r","bold":true,"color":"green","hoverEvent":{"action":"show_text","value":["",{"text":"Datapack By: Respawn_101","color":"aqua"}]}},{"text":"a","bold":true,"color":"aqua","hoverEvent":{"action":"show_text","value":["",{"text":"Datapack By: Respawn_101","color":"aqua"}]}},{"text":"l","bold":true,"color":"dark_aqua","hoverEvent":{"action":"show_text","value":["",{"text":"Datapack By: Respawn_101","color":"aqua"}]}},{"text":"] ","bold":true,"color":"dark_blue"},{"text":"Finished Initilizing Centural Systems, Please Enjoy!","color":"dark_red"}]
#TODO end decide how to handler this
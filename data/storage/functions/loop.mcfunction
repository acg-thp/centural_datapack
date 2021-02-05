execute if entity @e[tag=storage_handler,limit=1,scores={storage_loop=1..}] run scoreboard players remove @s storage_loop 1
execute if entity @e[tag=storage_handler,limit=1,scores={storage_loop=1..}] run function storage_handler:load/loop_handler/storage_load_loop_handler

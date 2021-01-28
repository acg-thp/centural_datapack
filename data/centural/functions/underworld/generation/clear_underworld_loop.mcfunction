
execute at @e[tag=underworld_handler,scores={underworld_loop=0..}] run fill ~-64 ~ ~-64 ~64 ~ ~64 air replace minecraft:magma_block
execute at @e[tag=underworld_handler,scores={underworld_loop=0..}] run fill ~-192 ~ ~-64 ~64 ~ ~64 air replace minecraft:magma_block
execute at @e[tag=underworld_handler,scores={underworld_loop=0..}] run fill ~-310 ~ ~-64 ~64 ~ ~64 air replace minecraft:magma_block
execute at @e[tag=underworld_handler,scores={underworld_loop=0..}] run fill ~-374 ~ ~-64 ~64 ~ ~64 air replace minecraft:magma_block

execute as @e[tag=underworld_handler,scores={underworld_loop=0..}] at @s run tp @s ~ ~1 ~
execute if entity @e[tag=underworld_handler,scores={underworld_loop=0..}] run scoreboard players remove @e[tag=underworld_handler] underworld_loop 1
execute if entity @e[tag=underworld_handler,scores={underworld_loop=0..}] run function centural:underworld/generation/clear_underworld_loop

execute if entity @e[tag=underworld_handler,scores={underowrld_loop=100..200}] run title @a title [{"color":"green","text":"[||||||||||||||||"},{"color":"red","text":"||||]"}]
execute if entity @e[tag=underworld_handler,scores={underowrld_loop=0..100}] run title @a title [{"color":"green","text":"[||||||||||||||||||"},{"color":"red","text":"||]"}]
execute if entity @e[tag=underworld_handler,scores={underworld_loop=..0}] run tp @e[tag=underworld_handler,scores={underworld_loop=..0}] 0 -768 0



#execute if entity @e[tag=underworld_handler,scores={underowrld_loop=400}] run title @a title [{"color":"green","text":"[||||||||||||"},{"color":"red","text":"||||||||]"}]
#execute if entity @e[tag=underworld_handler,scores={underowrld_loop=300}] run title @a title [{"color":"green","text":"[||||||||||||||"},{"color":"red","text":"||||||]"}]
#execute if entity @e[tag=underworld_handler,scores={underowrld_loop=200}] run title @a title [{"color":"green","text":"[||||||||||||||||"},{"color":"red","text":"||||]"}]
#execute if entity @e[tag=underworld_handler,scores={underowrld_loop=100}] run title @a title [{"color":"green","text":"[||||||||||||||||||"},{"color":"red","text":"||]"}]

execute if entity @e[tag=underworld_handler,scores={underworld_loop=0..}] as @e[tag=underworld_handler,scores={underworld_loop=0..}] at @s run fill ~-64 ~ ~-64 ~64 ~ ~64 air replace minecraft:magma_block
execute if entity @e[tag=underworld_handler,scores={underworld_loop=0..}] as @e[tag=underworld_handler,scores={underworld_loop=0..}] at @s run tp @s ~ ~1 ~
execute if entity @e[tag=underworld_handler,scores={underowrld_loop=500}] as @e[tag=underworld_handler,scores={underowrld_loop=500}] run title @a title [{"color":"green","text":"[||||||||||"},{"color":"red","text":"||||||||||]"}]

execute if entity @e[tag=underworld_handler,scores={underworld_loop=0..}] as @e[tag=underworld_handler,scores={underworld_loop=0..}] run scoreboard players remove @e[tag=underworld_handler] underworld_loop 1
execute if entity @e[tag=underworld_handler,scores={underworld_loop=0..}] as @e[tag=underworld_handler,scores={underworld_loop=0..}] run function centural:underworld/generation/clear_underworld_loop

execute if entity @e[tag=underworld_handler,scores={underworld_loop=..0}] as @e[tag=underworld_handler,scores={underworld_loop=0..}] run tp @s[type=armor_stand] 0 -768 0


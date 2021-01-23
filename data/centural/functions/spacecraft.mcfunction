#execute if entity @e[tag=spacecraft] as @e[tag=spacecraft] at @s if entity @p[distance=..1,tag=!basic_spacecraft_down,tag=!basic_spacecraft_up] run data modify entity @s NoGravity set value 1b

#Basic Spacecraft Motion
execute if entity @e[tag=spacecraft,tag=down] as @e[tag=spacecraft,tag=down] at @s unless entity @p[distance=..1,tag=basic_spacecraft_down] run tag @s remove down
execute if entity @e[tag=spacecraft] as @e[tag=spacecraft] at @s if entity @p[distance=..1,tag=basic_spacecraft_down] run tag @s add down
execute if entity @e[tag=spacecraft,tag=down] as @e[tag=spacecraft,tag=down] at @s if entity @p[distance=..1,tag=basic_spacecraft_down] run data modify entity @s Motion set value [0.0,-0.2,0.0]

execute if entity @e[tag=spacecraft,tag=up] as @e[tag=spacecraft,tag=up] at @s unless entity @p[distance=..1,tag=basic_spacecraft_up] run tag @s remove up
execute if entity @e[tag=spacecraft] as @e[tag=spacecraft] at @s if entity @p[distance=..1,tag=basic_spacecraft_up] run tag @s add up
execute if entity @e[tag=spacecraft,tag=up] as @e[tag=spacecraft,tag=up] at @s if entity @p[distance=..1,tag=basic_spacecraft_up] run data modify entity @s Motion set value [0.0,0.2,0.0]


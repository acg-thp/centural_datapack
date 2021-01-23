#execute if entity @e[tag=spacecraft] as @e[tag=spacecraft] at @s if entity @p[distance=..1,tag=!basic_spacecraft_down,tag=!basic_spacecraft_up] run data modify entity @s NoGravity set value 1b

#Basic Spacecraft Motion
execute if entity @e[tag=spacecraft,tag=down] as @e[tag=spacecraft,tag=down] at @s unless entity @p[distance=..1,tag=basic_spacecraft_down] run tag @s remove down
execute if entity @e[tag=spacecraft] as @e[tag=spacecraft] at @s if entity @p[distance=..1,tag=basic_spacecraft_down] run tag @s add down
execute if entity @e[tag=spacecraft,tag=down] as @e[tag=spacecraft,tag=down] at @s if entity @p[distance=..1,tag=basic_spacecraft_down] run data modify entity @s Motion set value [0.0,-0.2,0.0]

execute if entity @e[tag=spacecraft,tag=up] as @e[tag=spacecraft,tag=up] at @s unless entity @p[distance=..1,tag=basic_spacecraft_up] run tag @s remove up
execute if entity @e[tag=spacecraft] as @e[tag=spacecraft] at @s if entity @p[distance=..1,tag=basic_spacecraft_up] run tag @s add up
execute if entity @e[tag=spacecraft,tag=up] as @e[tag=spacecraft,tag=up] at @s if entity @p[distance=..1,tag=basic_spacecraft_up] run data modify entity @s Motion set value [0.0,0.2,0.0]

#Player Is Not In Spacecraft Looking Up
execute if entity @e[tag=spacecraft] at @e[tag=spacecraft] if entity @p[distance=..1] as @p[distance=..1] unless entity @s[x_rotation=-90..-80,tag=basic_spacecraft_up] run tag @s remove basic_spacecraft_up
#Player Is In Spacecraft Looking Up
execute if entity @e[tag=spacecraft] at @e[tag=spacecraft] if entity @p[distance=..1,x_rotation=-90..-80] as @p[distance=..1,x_rotation=-90..-80,tag=!basic_spacecraft_up] run tag @s add basic_spacecraft_up

#Player Is Not In Spacecraft Looking Down
execute if entity @e[tag=spacecraft] at @e[tag=spacecraft] if entity @p[distance=..1] as @p[distance=..1] unless entity @s[x_rotation=80..90,tag=basic_spacecraft_down] run tag @s remove basic_spacecraft_down
#Player Is In Spacecraft Looking Down
execute if entity @e[tag=spacecraft] at @e[tag=spacecraft] if entity @p[distance=..1,x_rotation=80..90] as @p[distance=..1,x_rotation=80..90,tag=!basic_spacecraft_down] run tag @s add basic_spacecraft_down



execute if entity @e[tag=fairy] as @e[tag=fairy] at @s if entity @p[distance=..64,scores={fairy_movement=25}] run data modify entity @e[tag=fairy,limit=1] Motion set value [0.0,0.005,0.005]
execute if entity @e[tag=fairy] as @e[tag=fairy] at @s if entity @p[distance=..64,scores={fairy_movement=50}] run data modify entity @e[tag=fairy,limit=1] Motion set value [0.0,-0.005,0.005]
execute if entity @e[tag=fairy] as @e[tag=fairy] at @s if entity @p[distance=..64,scores={fairy_movement=75}] run data modify entity @e[tag=fairy,limit=1] Motion set value [0.0,-0.005,-0.005]
execute if entity @e[tag=fairy] as @e[tag=fairy] at @s if entity @p[distance=..64,scores={fairy_movement=100}] run data modify entity @e[tag=fairy,limit=1] Motion set value [0.0,0.005,-0.005]
execute if entity @p[scores={fairy_movement=101..}] as @a[scores={fairy_movement=101..}] run scoreboard players reset @s fairy_movement

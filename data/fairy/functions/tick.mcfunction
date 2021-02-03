execute if entity @e[tag=fairy] as @e[tag=fairy] at @s if entity @p[distance=..64,scores={fairy_movement=25}] run data modify entity @e[tag=fairy,limit=1] Motion set value [0.0,0.005,0.005]
execute if entity @e[tag=fairy] as @e[tag=fairy] at @s if entity @p[distance=..64,scores={fairy_movement=50}] run data modify entity @e[tag=fairy,limit=1] Motion set value [0.0,-0.005,0.005]
execute if entity @e[tag=fairy] as @e[tag=fairy] at @s if entity @p[distance=..64,scores={fairy_movement=75}] run data modify entity @e[tag=fairy,limit=1] Motion set value [0.0,-0.005,-0.005]
execute if entity @e[tag=fairy] as @e[tag=fairy] at @s if entity @p[distance=..64,scores={fairy_movement=100}] run data modify entity @e[tag=fairy,limit=1] Motion set value [0.0,0.005,-0.005]
execute if entity @p[scores={fairy_movement=101..}] as @a[scores={fairy_movement=101..}] run scoreboard players reset @s fairy_movement

execute as @a unless entity @s[scores={fairy_count=-2147483648..2147483647}] run scoreboard players set @s fairy_count 0
execute as @a unless entity @s[scores={fairy_count_max=-2147483648..2147483647}] run scoreboard players set @s fairy_count_max 1

execute if entity @e[type=experience_orb,tag=fairy,tag=!claimed] as @e[type=experience_orb,tag=fairy,tag=!claimed] at @s if entity @p[distance=..2.6] as @p[distance=..2.6] if score @s fairy_count = @s fairy_count_max run tag @s add fairy_heal
execute if entity @e[type=experience_orb,tag=fairy,tag=!claimed] as @e[type=experience_orb,tag=fairy,tag=!claimed] at @s if entity @p[distance=..2.6] as @p[distance=..2.6] if score @s fairy_count < @s fairy_count_max run tag @s add fairy_add
execute if entity @e[type=experience_orb,tag=fairy,tag=!claimed] as @e[type=experience_orb,tag=fairy,tag=!claimed] at @s if entity @p[distance=..2.6] run tag @s add claimed
execute if entity @e[type=experience_orb,tag=fairy,tag=claimed] as @e[type=experience_orb,tag=fairy,tag=claimed] at @s if entity @p[distance=..2.6] at @p[distance=..2.6] run tp @s ~ ~ ~

execute if entity @p[tag=fairy_heal] as @a[tag=fairy_heal] run effect give @s minecraft:instant_health 10 10
execute if entity @p[tag=fairy_heal] as @a[tag=fairy_heal] run tag @s remove fairy_heal

execute if entity @p[tag=fairy_add] as @e[tag=fairy_add] run scoreboard players add @s fairy_count 1
execute if entity @p[tag=fairy_add] as @e[tag=fairy_add] run tag @s remove fairy_add



execute if entity @e[tag=elevator,type=armor_stand] at @e[tag=elevator,type=armor_stand] align x align y align z positioned ~.5 ~2 ~.5 run particle minecraft:heart ~ ~ ~ 0 0 0 1 1 force @a[distance=..16]

#execute if entity @e[tag=elevator,type=armor_stand] at @e[tag=elevator,type=armor_stand] positioned as @a[distance=..2] at @s anchored feet positioned ~ ~ ~ if entity @e[tag=elevator,limit=1,dy=1,type=armor_stand] run tp @s ~ ~1 ~

#execute if entity @p[tag=elevator_up] as @a[tag=elevator_up] at @s anchored feet positioned ~ ~ ~ if entity @e[tag=elevator,dy=1,type=armor_stand] run effect give @s minecraft:levitation 1 1

#execute if entity @p[tag=elevator_up] as @a[tag=elevator_up] at @s anchored feet positioned ~ ~ ~ if entity @e[tag=elevator,dy=1,type=armor_stand] run effect give @e[tag=elevator,dy=1,type=armor_stand] minecraft:levitation 1 1

#execute if entity @p[tag=elevator_up] as @a[tag=elevator_up] at @s anchored feet positioned ~ ~ ~ unless entity @e[tag=elevator,limit=1,dy=1,type=armor_stand] run tag @s remove elevator_up
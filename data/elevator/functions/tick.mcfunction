execute if entity @e[tag=elevator,type=armor_stand] at @e[tag=elevator,type=armor_stand] at @e[tag=elevator_slab,distance=..1,limit=1] align x align y align z run particle minecraft:heart ~ ~ ~ 0 0 0 1 1 force @a[distance=..16]

execute if entity @e[tag=elevator,type=armor_stand] at @e[tag=elevator,type=armor_stand] at @e[tag=elevator_slab,distance=..1,limit=1] align x align y align z positioned ~ ~ ~ if entity @p[dx=1,dy=.5,dz=1,tag=!elevator_up] as @a[dx=1,dy=.5,dz=1,tag=!elevator_up] run tag @s add elevator_up 

#execute if entity @e[tag=elevator,type=armor_stand] at @e[tag=elevator,type=armor_stand] at @e[tag=elevator_slab,distance=..1,limit=1] align x align y align z positioned ~.5 ~ ~.5 if entity @p[distance=.75..1,tag=elevator_up] as @a[distance=0.75..1,tag=elevator_up] run tp @s ~ ~ ~

#execute if entity @e[tag=elevator,type=armor_stand] at @e[tag=elevator,type=armor_stand] align x align y align z positioned ~ ~2 ~ if entity @p[dy=1,dx=1,dz=1,tag=!elevator_up] as @a[dy=1,dx=1,dz=1,tag=!elevator_up] run tag @s add elevator_up 

#execute if entity @e[tag=elevator_slab] as @e[tag=elevator_slab] at @s if entity @p[tag=elevator_up,distance=...5] run tp @a[tag=elevator_up,distance=...5] ~ ~.5 ~
#execute if entity @e[tag=elevator_slab] as @e[tag=elevator_slab] at @s if entity @p[tag=elevator_up,distance=1..2] run tp @a[tag=elevator_up,distance=1.25..2] ~ ~.5 ~

#execute if entity @p[tag=elevator_up] as @a[tag=elevator_up] at @s anchored feet align x align y align z positioned ~ ~-1 ~ if entity @e[tag=elevator_slab,dx=1,dy=1,dz=1,type=falling_block] run particle minecraft:heart ~ ~ ~ 0 0 0 1 1 force @a[distance=..16]

execute if entity @p[tag=elevator_up] as @a[tag=elevator_up] at @s anchored feet align x align y align z positioned ~ ~-1 ~ if entity @e[tag=elevator_slab,dx=1,dy=1,dz=1,type=falling_block] run effect give @e[tag=elevator,limit=1,distance=..3,type=armor_stand] minecraft:levitation 1 1 false

#execute if entity @p[tag=elevator_up] as @a[tag=elevator_up] at @s anchored feet align x align y align z positioned ~ ~-1 ~ if entity @e[tag=elevator_slab,dx=1,dy=1,dz=1,type=falling_block] run particle minecraft:heart ~ ~ ~ 0 0 0 1 1 force @a[distance=..16]

execute if entity @p[tag=elevator_up] as @a[tag=elevator_up] at @s anchored feet align x align y align z positioned ~ ~-1 ~ if entity @e[tag=elevator_slab,dx=1,dy=1,dz=1,type=falling_block] run effect give @s minecraft:levitation 1 1 false

#execute if entity @e[tag=elevator,type=armor_stand] at @e[tag=elevator,type=armor_stand] at @e[tag=elevator_slab,distance=..1,limit=1] align x align y align z positioned ~.5 ~1 ~.5 unless entity @p[distance=..1,tag=elevator_up] as @a[dy=1,dx=1,dz=1,tag=elevator_up] run tag @s remove elevator_up 

#/summon armor_stand ~ ~1 ~ {NoGravity:0b,Silent:1b,Invulnerable:1b,Motion:[0.0,1.0,0.0],Tags:["elevator"],Passengers:[{id:"minecraft:falling_block",BlockState:{Name:"minecraft:quartz_slab",Properties:{type:"bottom"}},Time:1,Tags:["elevator"]}]}

#/summon armor_stand ~ ~1 ~ {NoGravity:0b,Silent:1b,Invulnerable:1b,Motion:[0.0,1.0,0.0],Tags:["elevator"],Passengers:[{id:"minecraft:falling_block",BlockState:{Name:"minecraft:quartz_slab",Properties:{type:"bottom"}},Time:1,Tags:["elevator"]},{id:"minecraft:shulker",Silent:1b,Invulnerable:1b,PersistenceRequired:1b,NoAI:1b,CanPickUpLoot:0b,AttachFace:0b,Color:0b,Tags:["elevator"],ActiveEffects:[{Id:14b,Amplifier:1b,Duration:19999980,ShowParticles:0b}]}]}

#execute if entity @e[tag=elevator,type=armor_stand] at @e[tag=elevator,type=armor_stand] positioned as @a[distance=..2] at @s anchored feet positioned ~ ~ ~ if entity @e[tag=elevator,limit=1,dy=1,type=armor_stand] run tp @s ~ ~1 ~

#execute if entity @p[tag=elevator_up] as @a[tag=elevator_up] at @s anchored feet positioned ~ ~ ~ if entity @e[tag=elevator,dy=1,type=armor_stand] run effect give @s minecraft:levitation 1 1

#execute if entity @p[tag=elevator_up] as @a[tag=elevator_up] at @s anchored feet positioned ~ ~ ~ if entity @e[tag=elevator,dy=1,type=armor_stand] run effect give @e[tag=elevator,dy=1,type=armor_stand] minecraft:levitation 1 1

#execute if entity @p[tag=elevator_up] as @a[tag=elevator_up] at @s anchored feet positioned ~ ~ ~ unless entity @e[tag=elevator,limit=1,dy=1,type=armor_stand] run tag @s remove elevator_up
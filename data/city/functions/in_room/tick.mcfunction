

execute anchored feet positioned ~ ~ ~ align x align y align z if block ~ ~ ~ minecraft:polished_diorite_stairs[facing=west] unless entity @e[type=armor_stand,distance=..2] run summon armor_stand ~.5 ~ ~.5 {NoGravity:1b,ShowArms:1,NoBasePlate:1,Rotation:[-90f,0.0f],Pose:{Body:[0f,0f,0f],LeftArm:[0f,0f,0f],RightArm:[0f,0f,0f],LeftLeg:[-45f,0f,-50f],RightLeg:[-45f,0f,50f],Head:[0f,0f,0f]},Tags:["seat"],CustomNameVisible:1b,CustomName:'[{"keybind":"key.sneak"},{"text":" "},{"text":"Sit"}]'}
execute anchored feet positioned ~ ~ ~ align x align y align z if block ~ ~ ~ minecraft:polished_diorite_stairs[facing=west] unless entity @e[type=armor_stand,distance=..2] run summon armor_stand ~.5 ~ ~.5 {NoGravity:1b,ShowArms:1,NoBasePlate:1,Rotation:[-90f,0.0f],Pose:{Body:[0f,0f,0f],LeftArm:[0f,0f,0f],RightArm:[0f,0f,0f],LeftLeg:[-45f,0f,-50f],RightLeg:[-45f,0f,50f],Head:[0f,0f,0f]},Tags:["seat"],CustomNameVisible:1b,CustomName:'[{"keybind":"key.sneak"},{"text":" "},{"text":"Sit"}]'}


#execute anchored feet positioned ~ ~ ~1 align x align y align z if block ~ ~ ~ minecraft:polished_diorite_stairs[facing=west] unless entity @e[type=armor_stand,distance=..2] run summon armor_stand ~.5 ~ ~.5 {NoGravity:1b,ShowArms:1,NoBasePlate:1,Rotation:[-90f,0.0f],Pose:{Body:[0f,0f,0f],LeftArm:[0f,0f,0f],RightArm:[0f,0f,0f],LeftLeg:[-45f,0f,-50f],RightLeg:[-45f,0f,50f],Head:[0f,0f,0f]},Tags:["seat"],CustomNameVisible:1b,CustomName:'[{"keybind":"key.sneak"},{"text":" "},{"text":"Sit"}]'}


execute if entity @s[tag=sitting] unless entity @e[tag=seat,distance=..1] run gamemode survival
execute if entity @s[tag=sitting,gamemode=survival] run tag @s remove sitting

#execute if entity @p[gamemode=spectator] as @a[gamemode=spectator] at @s unless entity @e[tag=seat,distance=..1] run gamemode survival
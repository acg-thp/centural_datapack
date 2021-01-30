# Access Log:
# Handle	Date		Comment
# Bonesdog	06/19/2020	Adding load/init for spawn_handler & inital comment header.
#
# Description: This handler should duplicate the base core object handler (once completed) then manage spawning in a spawn and/or controlling
#               the scoreboard values that can be spawned at and any plugin/feature such as ability to add multiple spawn points.

#
scoreboard objectives add add_spawn_point trigger "Add Spawn Point"

# start temporary scoreboard
scoreboard objectives remove count
scoreboard objectives add count dummy "Count Spawn Handlers"

# requires spawn_handler
execute unless entity @e[tag=spawn_handler] run tellraw @a[tag=verbose] [{"text":"[ERROR]: ","color":"dark_red"},{"text":"spawn_handler missing, summoning now","color":"red"}]
execute unless entity @e[tag=spawn_handler] run summon armor_stand 0 0 0 {NoGravity:1b,Marker:1b,Tags:["handler","spawn_handler"],Invisible:1b,Invulnerable:1b}
# TODO add tag reset to delete if spawn handler exists but has reset tag attached

# catch if handler tag is missing from spawn_handler
execute if entity @e[tag=spawn_handler,tag=!handler] run tellraw @a[tag=verbose] [{"text":"[ERROR]: ","color":"dark_red"},{"text":"spawn_handler missing handler tag, adding tag now","color":"red"}]
execute if entity @e[tag=spawn_handler,tag=!handler] run tag @e[tag=spawn,tag=!handler] add handler

# add temporary scoreboard
scoreboard objectives remove count
scoreboard objectives add count dummy "Count Spawn Handlers"

# count spawn_handler(s)
execute if entity @e[tag=spawn_handler] as @e[tag=spawn_handler] run scoreboard players add @s count 1

# catch invalid count
execute if entity @e[tag=spawn_handler,scores={count=..0}] run tellraw @a[tag=verbose] [{"text":"[ERROR]: ","color":"dark_red"},{"text":"spawn_handler count is zero or below","color":"red"}]
# TODO determine how to handle invalid count

# determine if spawn_handler(s) count exceeds one
execute if entity @e[tag=spawn_handler,scores={count=2..}] run tellraw @a[tag=verbose] [{"text":"[ERROR]: ","color":"dark_red"},{"text":"spawn_handler count is two or above (should only be one)","color":"red"}]
execute if entity @e[tag=spawn_handler,scores={count=2..}] run tellraw @a[tag=verbose] [{"text":"[ERROR]: ","color":"dark_red"},{"text":"spawn_handler count is two or above (should only be one)","color":"red"},{"score":{"name":"@s","objective":"count"},"color":"blue"}]

# remove temporary scoreboard
scoreboard objectives remove count

# catch if spawn point(s) are missing
execute unless entity @e[tag=spawn_point] run tellraw @a[tag=verbose] [{"text":"[ERROR]: ","color":"dark_red"},{"text":"spawn_point missing, spawning in atleast one around 0,Y,0","color":"red"}]
execute unless entity @e[tag=spawn_point] run summon armor_stand 0 256 0 {Marker:1b,Tags:["spawn_point","has_not_determined_ground"],Invisible:1b,Invulnerable:1b}
execute if entity @e[tag=spawn_point,tag=has_not_determined_ground] run spreadplayers ~ ~ 1 1 false @e[tag=spawn_point,tag=has_not_determined_ground]
execute if entity @e[tag=spawn_point,tag=has_not_determined_ground] run tag @e[tag=spawn_point,tag=has_not_determined_ground] remove has_not_determined_ground

# creating triggers
scoreboard objectives remove spawn
scoreboard objectives add spawn trigger "Teleport To Spawn Point(s)"
scoreboard objectives remove spawn_cooldown
scoreboard objectives add spawn_cooldown minecraft.custom:minecraft.play_one_minute "Teleport To Spawn Point(s) Cooldown Timer"
scoreboard players set @e[tag=spawn_handler,limit=1] spawn_cooldown 20000

# TODO user end gateway to teleport spawn to scoreboard x y z
# Notes: This file is incomplete but pushing as it is not refferenced in main init call yet

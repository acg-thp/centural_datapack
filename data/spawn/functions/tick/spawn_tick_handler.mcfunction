# Note: Perhaps we should change @p to @a; but again when calling functions from seperate files with @s defined already also

# Re-enabled spawn teleport
# Note: I have this hardcoded here, perhaps operation to dynamically assign cooldown base on other plugin properties..
execute if entity @p[scores={spawn_cooldown=1000..}] run tag @p[scores={spawn_cooldown=1000..}] add enabled_spawn_teleport

# Admin Commands
execute if entity @p[scores={add_spawn_point=1..}] run tag @p[scores={add_spawn_point=1..}] add enable_add_spawn_point
execute if entity @p[scores={add_spawn_point=1..}] at @p[tag=enable_add_spawn_point] run summon armor_stand ~ ~ ~ {Tags:["spawn_point"],Marker:1b,NoGravity:1b,Invisible:1b}
execute if entity @p[scores={add_spawn_point=1..}] run scoreboard players set @p[tag=enable_add_spawn_point] add_spawn_point 0
#
execute if entity @p[tag=enable_add_spawn_point] run scoreboard players enable @p[tag=enable_add_spawn_point] add_spawn_point
execute if entity @p[tag=enable_add_spawn_point] run tag @p[tag=enable_add_spawn_point] remove enable_add_spawn_point
# End Admin Commands




# enabled spawn teleport
execute if entity @p[tag=enabled_spawn_teleport] as @p[tag=enabled_spawn_teleport] run tag @s remove spawn_teleport_enabled
execute if entity @p[tag=enabled_spawn_teleport] as @p[tag=enabled_spawn_teleport] run scoreboard players set @s spawn_cooldown 0
execute if entity @p[tag=enabled_spawn_teleport] as @p[tag=enabled_spawn_teleport] run scoreboard players enable @s spawn
execute if entity @p[tag=enabled_spawn_teleport] as @p[tag=enabled_spawn_teleport] run tag @s add spawn_teleport_enabled
execute if entity @p[tag=enabled_spawn_teleport] as @p[tag=enabled_spawn_teleport] run tag @s remove enabled_spawn_teleport

# TODO perhaps disable timer when all players are enabled, then readd timer once someone triggers scoreboard
#execute if entity @p[tag=!spawn_teleport_enabled] run scoreboard objectives remove spawn_cooldown
#execute if entity @p[tag=spawn_teleport_enabled] run scoreboard objectives add spawn_cooldown minecraft.custom:minecraft.play_one_minute "Teleport To Spawn Point(s) Cooldown Timer"

execute if entity @p[scores={spawn=1..},tag=spawn_teleport_enabled] at @e[tag=spawn_point,sort=random,limit=1] run tp @p[scores={spawn=1..},tag=spawn_teleport_enabled] ~ ~ ~
execute if entity @p[scores={spawn=1..},tag=spawn_teleport_enabled] run scoreboard players set @p[scores={spawn=1..},tag=spawn_teleport_enabled] spawn 0
execute if entity @p[scores={spawn=1..},tag=spawn_teleport_enabled] run scoreboard players set @p[scores={spawn=1..},tag=spawn_teleport_enabled] spawn_cooldown 0
execute if entity @p[scores={spawn=1..},tag=spawn_teleport_enabled] run tag @p[scores={spawn=1..},tag=spawn_teleport_enabled] remove spawn_teleport_enabled

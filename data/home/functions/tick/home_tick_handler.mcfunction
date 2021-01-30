execute as @a unless entity @s[scores={home_x=-2147483648..2147483647}] run scoreboard players set @s home_x 0
execute as @a unless entity @s[scores={home_y=-2147483648..2147483647}] run scoreboard players set @s home_y 71
execute as @a unless entity @s[scores={home_z=-2147483648..2147483647}] run scoreboard players set @s home_z -1

#execute as @s[scores={teleport_home=..-1}] run function home_handler:negativevalue
#execute as @s[scores={set_home=..-1}] run function home_handler:negativevalue
#execute as @s[scores={delete_home=..-1}] run function home_handler:negativevalue

#triggers
execute as @s[scores={teleport_home=1}] run function home_handler:trigger/teleport_home
#So its an issue because of how this is called
execute as @s[tag=run_teleport_home] positioned 0 2 0 at @e[nbt={Item:{tag:{home_state:0L}}},limit=1,distance=2..] run tp @s[tag=run_teleport_home] ~ ~ ~
execute as @s[tag=run_teleport_home] at @e[nbt={Item:{tag:{home_state:0L}}},limit=1] if entity @s[distance=..2] run tag @s remove run_teleport_home


execute as @s[scores={set_home=1}] run function home_handler:trigger/set_home
execute as @s[scores={delete_home=1}] run function home_handler:trigger/delete_home

#execute as @s[scores={teleport_home=2..}] run function home_handler:limit
#execute as @s[scores={set_home=2..}] run function home_handler:limit
#execute as @s[scores={delete_home=2..}] run function home_handler:limit

execute as @s run function home_handler:reset/reset

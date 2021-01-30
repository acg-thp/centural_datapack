# HMM not exactly what i mean ill change in a bit
execute as @s[scores={teleport_home=..-1}] run scoreboard players set @s teleport_home 0
execute as @s[scores={teleport_home=1..}] run scoreboard players set @s teleport_home 0

execute as @s[scores={set_home=..-1}] run scoreboard players set @s set_home 0
execute as @s[scores={set_home=1..}] run scoreboard players set @s set_home 0

execute as @s[scores={delete_home=..-1}] run scoreboard players set @s delete_home 0
execute as @s[scores={delete_home=1..}] run scoreboard players set @s delete_home 0
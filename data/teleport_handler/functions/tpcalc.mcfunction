execute as @e[tag=TPEnabled] run scoreboard players operation @s one_time_math = @s teleport_id
execute as @e[tag=TPEnabled] run scoreboard players operation @s one_time_math -= @e[tag=TPRun] TP
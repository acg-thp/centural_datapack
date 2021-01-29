execute as @e[scores={TP=..-1}] run scoreboard players set @s TP 0
execute as @e[scores={TP=1..}] run scoreboard players set @s TP 0

execute as @e[scores={TPO=..-1}] run scoreboard players set @s TPO 0
execute as @e[scores={TPO=1..}] run scoreboard players set @s TPO 0

execute as @e[scores={TPOHERE=..-1}] run scoreboard players set @s TPOHERE 0
execute as @e[scores={TPOHERE=1..}] run scoreboard players set @s TPOHERE 0

execute as @e[scores={TPReply=..-1}] run scoreboard players set @s TPReply 0
execute as @e[scores={TPReply=1..}] run scoreboard players set @s TPReply 0

scoreboard players reset * one_time_math
# TODO add enablers after we have a reset_handler and player_logout_handler running resets on login for tags
execute as @a[tag=!warp_cooldown] unless entity @s[scores={warp_to_spawn=-2147483648..2147483647}] run scoreboard players enable @s warp_to_spawn
execute as @a[tag=!warp_cooldown] unless entity @s[scores={warp_to_wild=-2147483648..2147483647}] run scoreboard players enable @s warp_to_wild
execute as @a[tag=!warp_cooldown] if entity @s[scores={warp_to_spawn=0}] run scoreboard players set @s warp_to_spawn -2147483648
execute as @a[tag=!warp_cooldown] if entity @s[scores={warp_to_wild=0}] run scoreboard players set @s warp_to_wild -2147483648
# Lower Boundery is our 'secret reset number' will change to be randomly assigned on boot until i figure another way to handle a cooldown based trigger
#  you need a secret reset number as it seems we cannot account for when they set to 0 

execute as @a[tag=!warp_cooldown,scores={warp_to_spawn=-2147483647..2147483647}] run tag @s add warp_cooldown
execute as @a[tag=warp_cooldown,scores={warp_to_spawn=-2147483647..2147483647}] run scoreboard players reset @s warp_to_spawn
execute as @a[tag=!warp_cooldown,scores={warp_to_wild=-2147483647..2147483647}] run tag @s add warp_cooldown
execute as @a[tag=warp_cooldown,scores={warp_to_wild=-2147483647..2147483647}] run scoreboard players reset @s warp_to_wild

execute as @a[tag=warp_cooldown] run scoreboard players set @s warp_math 0
execute as @a[tag=warp_cooldown] run scoreboard players operation @s warp_math = @s warp_cooldown
execute as @a[tag=warp_cooldown] store result score @s warp_math run scoreboard players operation @s warp_math -= @e[tag=warp_handler,limit=1] warp_cooldown
execute as @a[tag=warp_cooldown,scores={warp_math=0..}] run scoreboard players set @s warp_cooldown 0
execute as @a[tag=warp_cooldown,scores={warp_math=0..}] run tag @s remove warp_cooldown
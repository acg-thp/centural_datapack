#execute as @a unless entity @s[scores={warp=-2147483648..2147483647}] run tellraw @s "[ENABLED] /trigger coordinates"
execute as @a unless entity @s[scores={warp=-2147483648..2147483647}] run scoreboard players enable @s warp

execute if entity @p[scores={warp=-1},tag=!warp_underworld] as @a[scores={warp=-1},tag=!warp_underworld] run tag @s add warp_underworld
execute if entity @p[scores={warp=-1},tag=warp_underworld] as @a[scores={warp=-1},tag=warp_underworld] run scoreboard players set @s warp 0

execute if entity @p[tag=warp_underworld] as @a[tag=warp_underworld] unless entity @s[scores={temporary_timer=-2147483648..2147483647}] run scoreboard objectives add temporary_timer minecraft.custom:minecraft.play_one_minute
execute if entity @p[scores={temporary_timer=1},tag=warp_underworld] as @a[scores={temporary_timer=1},tag=warp_underworld] run tellraw @s "Warping to the Underworld... Please Wait."
execute if entity @p[tag=warp_underworld,scores={temporary_timer=150..}] as @a[tag=warp_underworld,scores={temporary_timer=150..}] run tp @s 0 -767 0
execute if entity @p[tag=warp_underworld,scores={temporary_timer=150..}] as @a[tag=warp_underworld,scores={temporary_timer=150..}] run tag @s remove warp_underworld
execute unless entity @p[tag=warp_underworld] run scoreboard objectives remove temporary_timer

execute if entity @s[scores={warp=-2147483648..2147483647}] unless entity @s[tag=warp_underworld] run scoreboard players reset @s warp

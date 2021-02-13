#execute as @a unless entity @s[scores={warp=-2147483648..2147483647}] run tellraw @s "[ENABLED] /trigger coordinates"
execute as @a unless entity @s[scores={warp=-2147483648..2147483647},tag=warp_underworld] run scoreboard players enable @s warp

execute if entity @p[scores={warp=-1},tag=!warp_underworld] as @a[scores={warp=-1},tag=!warp_underworld] run tag @s add warp_underworld
execute if entity @p[scores={warp=-1},tag=warp_underworld] as @a[scores={warp=-1},tag=warp_underworld] run scoreboard players reset @s warp

execute if entity @p[tag=warp_underworld] as @a[tag=warp_underworld] unless entity @s[scores={temporary_timer=-2147483648..2147483647}] run scoreboard objectives add temporary_timer minecraft.custom:minecraft.play_one_minute
execute if entity @p[scores={temporary_timer=1},tag=warp_underworld] as @a[scores={temporary_timer=1},tag=warp_underworld] run tellraw @s "Warping to the Underworld... Please Wait."
execute if entity @p[tag=warp_underworld,scores={temporary_timer=0..50}] as @a[tag=warp_underworld,scores={temporary_timer=0..50}] at @s run particle minecraft:falling_obsidian_tear ~ ~2 ~ 1 0 1 1 6 force @a[distance=..16]
execute if entity @p[tag=warp_underworld,scores={temporary_timer=50..100}] as @a[tag=warp_underworld,scores={temporary_timer=50..100}] at @s run particle minecraft:portal ~ ~2 ~ 1 0 1 1 6 force @a[distance=..16]
execute if entity @p[tag=warp_underworld,scores={temporary_timer=100..150}] as @a[tag=warp_underworld,scores={temporary_timer=100..150}] at @s run particle minecraft:cloud ~ ~2 ~ 1 0 1 1 6 force @a[distance=..16]
execute if entity @p[tag=warp_underworld,scores={temporary_timer=1}] as @a[tag=warp_underworld,scores={temporary_timer=1}] at @s run playsound minecraft:block.portal.ambient ambient @s ~ ~ ~ 16 1
execute if entity @p[tag=warp_underworld,scores={temporary_timer=50}] as @a[tag=warp_underworld,scores={temporary_timer=50}] at @s run playsound minecraft:block.portal.trigger ambient @s ~ ~ ~ 16 1

execute if entity @p[tag=warp_underworld,scores={temporary_timer=150..}] as @a[tag=warp_underworld,scores={temporary_timer=150..}] run tp @s 0 -767 0
execute if entity @p[tag=warp_underworld,scores={temporary_timer=150}] as @a[tag=warp_underworld,scores={temporary_timer=150}] run playsound minecraft:block.portal.travel ambient @s ~ ~ ~ 16 1
execute if entity @p[tag=warp_underworld,scores={temporary_timer=150..}] as @a[tag=warp_underworld,scores={temporary_timer=150..}] run tag @s remove warp_underworld
execute unless entity @p[tag=warp_underworld] run scoreboard objectives remove temporary_timer

#execute if entity @p[scores={warp=-2147483648..2147483647}] as @a[scores={warp=-2147483648..2147483647}] unless entity @s[scores={warp=0}] run scoreboard players reset @s warp

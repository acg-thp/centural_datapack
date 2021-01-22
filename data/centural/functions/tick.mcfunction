
#Decide Where They Are In
#say tick

execute at @a positioned ~ -1024 ~ as @a[dy=256,tag=in_underworld] run stopsound @s master
execute at @a positioned ~ -1024 ~ as @a[dy=256,tag=in_underworld] run stopsound @s music
execute at @a positioned ~ -1024 ~ as @a[dy=256,tag=in_underworld] run tag @s remove in_underworld
execute at @a positioned ~ -1024 ~ as @a[dy=256,tag=!in_void] run tellraw @s "Welcome to the VOID"
execute at @a positioned ~ -1024 ~ as @a[dy=256,tag=!in_void] run tag @s add in_void

#Why do I need to be 2/3 blocks off for this to work?

execute at @a positioned ~ -765 ~ as @a[dy=512,tag=in_void] run stopsound @s master
execute at @a positioned ~ -765 ~ as @a[dy=512,tag=in_void] run stopsound @s music
execute at @a positioned ~ -765 ~ as @a[dy=512,tag=in_void] run playsound minecraft:music_disc.pigstep master @s ~ ~ ~ 10000 .9
execute at @a positioned ~ -765 ~ as @a[dy=512,tag=in_void] run scoreboard players set @s timer 0
execute at @a positioned ~ -765 ~ as @a[dy=512,tag=in_void] run tag @s remove in_void
execute at @a positioned ~ -765 ~ as @a[dy=512,tag=!in_underworld] run tellraw @a "Welcome to the Underworld"
execute at @a positioned ~ -765 ~ as @a[dy=512,tag=!in_underworld] run tag @s add in_underworld

#Determine when this music starts to play then stop it periodically.
execute at @a positioned ~ -765 ~ as @a[dy=512,tag=in_underworld] run stopsound @s music minecraft:music.creative


#execute as @a[y=-256,dy=256,tag=!in_void] run tag @s add in_void

#Remove Where They Are Not
#execute as @a[y=-1024,dy=256,tag=in_underworld] run tag @s remove in_underworld
#execute as @a[y=-256,dy=1284,tag=in_underworld] run tag @s remove in_underworld


#execute as @a[y=-768,dy=512,tag=in_void] run tag @s remove in_void

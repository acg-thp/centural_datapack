#Decide Where They Are In
#say tick
execute at @a positioned at ~ -1024 ~ as @a[y=-1024,dy=256,tag=in_underworld] run tag @s remove in_underworld
execute at @a positioned at ~ -1024 ~ as @a[y=-1024,dy=256,tag=!in_void] run tellraw @s "Welcome to the VOID"
execute at @a positioned at ~ -1024 ~ as @a[y=-1024,dy=256,tag=!in_void] run tag @s add in_void

execute at @a positioned at ~ -768 ~ as @a[dy=512,tag=in_void] run tag @s remove in_void
execute at @a positioned at ~ -768 ~ as @a[y=-766,dy=512,tag=!in_underworld] run tellraw @a "Welcome to the Underworld"
execute at @a positioned at ~ -768 ~ as @a[y=-766,dy=512,tag=!in_underworld] run tag @s add in_underworld

#execute as @a[y=-256,dy=256,tag=!in_void] run tag @s add in_void

#Remove Where They Are Not
#execute as @a[y=-1024,dy=256,tag=in_underworld] run tag @s remove in_underworld
#execute as @a[y=-256,dy=1284,tag=in_underworld] run tag @s remove in_underworld


#execute as @a[y=-768,dy=512,tag=in_void] run tag @s remove in_void

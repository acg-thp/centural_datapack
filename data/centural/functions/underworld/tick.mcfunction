execute if entity @e[tag=air] as @e[tag=air] at @s positioned ~ -768 ~ unless entity @s[dy=512] run tp @s ~ -768 ~
execute if entity @e[tag=air] at @e[tag=air] run fill ~-1 ~-1 ~-1 ~-1 ~1 ~-1 minecraft:air replace minecraft:magma_block

execute if entity @e[tag=torture] as @e[tag=torture] at @s positioned ~ -768 ~ unless entity @s[dy=512] run tp @s ~ -768 ~
execute if entity @e[tag=torture] at @e[tag=torture] run fill ~ ~-1 ~ ~ ~-1 ~ minecraft:magma_block replace air

execute if entity @e[tag=underworld_handler] at @e[tag=underworld_handler] run particle minecraft:flame ~ ~ ~ 1 1 1 1 1 force @a[distance=..128]

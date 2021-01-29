execute unless entity @e[tag=handler,type=armor_stand,limit=1] run tellraw @a[tag=verbose] {"text":"handler is required for this handler to work."}
execute unless entity @e[tag=handler,type=armor_stand,limit=1] run summon armor_stand 0 0 0 {Tags:["handler","gamerule_handler"],NoGravity:1b,Marker:1b,Invulnerable:1b,Invisible:1b}

execute if entity @e[tag=handler,tag=!gamerule_handler,type=armor_stand,limit=1] as @e[tag=handler,tag=!gamerule_handler,type=armor_stand,limit=1] run tag @s add gamerule_handler

scoreboard objectives add player_cap dummy "Hardcoded Player Cap"
execute as @e[tag=gamerule_handler] run scoreboard players set @s player_cap 100

gamerule announceAdvancements true
gamerule commandBlockOutput false
gamerule disableElytraMovementCheck true
gamerule disableRaids false
gamerule doDaylightCycle true
gamerule doEntityDrops true
gamerule doFireTick true
gamerule doInsomnia true
gamerule doImmediateRespawn false
gamerule doLimitedCrafting false
gamerule doMobLoot true
gamerule doMobSpawning true
gamerule doPatrolSpawning true
gamerule doTileDrops true
gamerule doTraderSpawning true
gamerule doWeatherCycle true
gamerule drowningDamage true
gamerule fallDamage true
gamerule fireDamage true
gamerule keepInventory false
gamerule logAdminCommands true
gamerule maxCommandChainLength 65536
gamerule maxEntityCramming 0
gamerule mobGriefing false
gamerule naturalRegeneration true
gamerule randomTickSpeed 3
gamerule reducedDebugInfo false
gamerule sendCommandFeedback true
gamerule showDeathMessages true
gamerule spawnRadius 0
gamerule spectatorsGenerateChunks true

#
forceload add -1 0
forceload add 0 -1
forceload add -1 -1
forceload add 0 0
worldborder center 0 0
worldborder set 20000
worldborder warning distance 1
#
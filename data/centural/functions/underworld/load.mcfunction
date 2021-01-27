
scoreboard objectives remove underworld_loop

scoreboard objectives add underworld_loop dummy "Iterator used to deload generated underworld content"

execute if entity @e[tag=underworld_handler] as @e[tag=underworld_handler] run kill @s[type=armor_stand]
execute unless entity @e[tag=underworld_handler] positioned 0 -768 0 run summon armor_stand {Invulnerable:1b,Invisible:1b,Marker:1b,Tags:["underworld_handler"]}

execute if entity @e[tag=underworld_handler] as @e[tag=underworld_handler] run scoreboard players set @s underworld_loop 512

execute if entity @e[tag=underworld_handler,scores={underworld_loop=0..}] run tellraw @a "De-generating underworld loop starting"
execute if entity @e[tag=underworld_handler,scores={underworld_loop=0..}] run function centural:underworld/generation/clear_underworld_loop

tp @e[type=bat,tag=air] 0 -1024 0
kill @e[type=bat,tag=air]
execute positioned 0 -1024 0 run kill @e[type=item,distance=..6]

tp @e[type=bat,tag=torture] 0 -1024 0
kill @e[type=bat,tag=torture]
execute positioned 0 -1024 0 run kill @e[type=item,distance=..6]



execute positioned 0 -768 0 run summon bat ~ ~ ~ {Silent:1b,Invulnerable:1b,PersistenceRequired:1b,Tags:["air"],ActiveEffects:[{Id:14b,Amplifier:1b,Duration:19999980}]}

execute positioned 0 -768 0 run summon bat ~ ~ ~ {Silent:1b,Invulnerable:1b,PersistenceRequired:1b,Tags:["air"],ActiveEffects:[{Id:14b,Amplifier:1b,Duration:19999980}]}

execute positioned 0 -768 0 run summon bat ~ ~ ~ {Silent:1b,Invulnerable:1b,PersistenceRequired:1b,Tags:["air"],ActiveEffects:[{Id:14b,Amplifier:1b,Duration:19999980}]}

execute positioned 0 -768 0 run summon bat ~ ~ ~ {Silent:1b,Invulnerable:1b,PersistenceRequired:1b,Tags:["air"],ActiveEffects:[{Id:14b,Amplifier:1b,Duration:19999980}]}

execute positioned 0 -768 0 run summon bat ~ ~ ~ {Silent:1b,Invulnerable:1b,PersistenceRequired:1b,Tags:["air"],ActiveEffects:[{Id:14b,Amplifier:1b,Duration:19999980}]}

execute positioned 0 -768 0 run summon bat ~ ~ ~ {Silent:1b,Invulnerable:1b,PersistenceRequired:1b,Tags:["air"],ActiveEffects:[{Id:14b,Amplifier:1b,Duration:19999980}]}

execute positioned 0 -768 0 run summon bat ~ ~ ~ {Silent:1b,Invulnerable:1b,PersistenceRequired:1b,Tags:["air"],ActiveEffects:[{Id:14b,Amplifier:1b,Duration:19999980}]}

execute positioned 0 -768 0 run summon bat ~ ~ ~ {Silent:1b,Invulnerable:1b,PersistenceRequired:1b,Tags:["air"],ActiveEffects:[{Id:14b,Amplifier:1b,Duration:19999980}]}

execute positioned 0 -768 0 run summon bat ~ ~ ~ {Silent:1b,Invulnerable:1b,PersistenceRequired:1b,Tags:["air"],ActiveEffects:[{Id:14b,Amplifier:1b,Duration:19999980}]}

execute positioned 0 -768 0 run summon bat ~ ~ ~ {Silent:1b,Invulnerable:1b,PersistenceRequired:1b,Tags:["air"],ActiveEffects:[{Id:14b,Amplifier:1b,Duration:19999980}]}

execute positioned 0 -768 0 run summon slime ~ ~ ~ {Silent:1b,Invulnerable:1b,PersistenceRequired:1b,Tags:["torture"],ActiveEffects:[{Id:14b,Amplifier:1b,Duration:19999980}]}

execute positioned 0 -768 0 run summon slime ~ ~ ~ {Silent:1b,Invulnerable:1b,PersistenceRequired:1b,Tags:["torture"],ActiveEffects:[{Id:14b,Amplifier:1b,Duration:19999980}]}

execute positioned 0 -768 0 run summon slime ~ ~ ~ {Silent:1b,Invulnerable:1b,PersistenceRequired:1b,Tags:["torture"],ActiveEffects:[{Id:14b,Amplifier:1b,Duration:19999980}]}

execute positioned 0 -768 0 run summon slime ~ ~ ~ {Silent:1b,Invulnerable:1b,PersistenceRequired:1b,Tags:["torture"],ActiveEffects:[{Id:14b,Amplifier:1b,Duration:19999980}]}

execute positioned 0 -768 0 run summon slime ~ ~ ~ {Silent:1b,Invulnerable:1b,PersistenceRequired:1b,Tags:["torture"],ActiveEffects:[{Id:14b,Amplifier:1b,Duration:19999980}]}

execute positioned 0 -768 0 run summon slime ~ ~ ~ {Silent:1b,Invulnerable:1b,PersistenceRequired:1b,Tags:["torture"],ActiveEffects:[{Id:14b,Amplifier:1b,Duration:19999980}]}

execute positioned 0 -768 0 run summon slime ~ ~ ~ {Silent:1b,Invulnerable:1b,PersistenceRequired:1b,Tags:["torture"],ActiveEffects:[{Id:14b,Amplifier:1b,Duration:19999980}]}

execute positioned 0 -768 0 run summon slime ~ ~ ~ {Silent:1b,Invulnerable:1b,PersistenceRequired:1b,Tags:["torture"],ActiveEffects:[{Id:14b,Amplifier:1b,Duration:19999980}]}

execute positioned 0 -768 0 run summon slime ~ ~ ~ {Silent:1b,Invulnerable:1b,PersistenceRequired:1b,Tags:["torture"],ActiveEffects:[{Id:14b,Amplifier:1b,Duration:19999980}]}

execute positioned 0 -768 0 run summon slime ~ ~ ~ {Silent:1b,Invulnerable:1b,PersistenceRequired:1b,Tags:["torture"],ActiveEffects:[{Id:14b,Amplifier:1b,Duration:19999980}]}

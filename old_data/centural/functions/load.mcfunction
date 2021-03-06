function core_handler:core_load_handler

function centural:warp/load

function centural:underworld/load

#Player Load Handler
function centural:player/load


#Seach Load Handler
function centural:search/load


#Spacecraft Tick Handler
function centural:spacecraft/load

#Logout Handler
function centural:logout/load

#Spread Libraries At Spawn
#execute if entity @e[tag=quest_spacecraft_library] at @e[tag=quest_spacecraft_library] run fill ~ ~ ~ ~ ~ ~ air 0 replace bookshelf

tellraw @a "Loading Centural Datapack"

tellraw @a "Removing All Tags"
tag @a remove in_underworld
tag @a remove in_void

tellraw @a "Stopping Sounds"
stopsound @a master
stopsound @a music

tellraw @a "De-Loading Scoreboard Objective Data"
scoreboard objectives remove yes
scoreboard objectives remove no
scoreboard objectives remove aviate_one_cm
scoreboard objectives remove timer
scoreboard objectives remove music_timer

tellraw @a "Loading Scorboard Objective Data"
scoreboard objectives add yes trigger "Respond with Yes"
scoreboard objectives add no trigger "Respond with No"
scoreboard objectives add aviate_one_cm minecraft.custom:minecraft.aviate_one_cm "Aviate One Centimeter"
scoreboard objectives add timer minecraft.custom:minecraft.play_one_minute "Timer"
scoreboard objectives add music_timer minecraft.custom:minecraft.play_one_minute "Music Timer"

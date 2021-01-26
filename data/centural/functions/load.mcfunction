
#Spacecraft Tick Handler
function centural:spacecraft/load


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
#scoreboard objectives remove logout_reset If you remove this we have to make sure a data storage model is work or else we cannot rely on this scoreboard in testing.

tellraw @a "Loading Scorboard Objective Data"
scoreboard objectives add yes trigger "Respond with Yes"
scoreboard objectives add no trigger "Respond with No"
scoreboard objectives add aviate_one_cm minecraft.custom:minecraft.aviate_one_cm "Aviate One Centimeter"
scoreboard objectives add timer minecraft.custom:minecraft.play_one_minute "Timer"
scoreboard objectives add music_timer minecraft.custom:minecraft.play_one_minute "Music Timer"
scoreboard objectives add logout_reset minecraft.custom:minecraft.leave_game "Logout Reset"

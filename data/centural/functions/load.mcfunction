tellraw @a "Loading Centural Datapack"

tellraw @a "De-Loading Scoreboard Objective Data"
scoreboard objectives remove aviate_one_cm
scoreboard objectives remove timer

tellraw @a "Loading Scorboard Objective Data"
scoreboard objectives add aviate_one_cm minecraft.custom:minecraft.aviate_one_cm "Aviate One Centimeter"
scoreboard objectives add timer minecraft.custom:minecraft.play_one_minute "Timer"

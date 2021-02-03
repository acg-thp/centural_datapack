tag @e remove nbs_songofheal
scoreboard objectives remove nbs_songofheal
scoreboard objectives remove nbs_songofheal_t
datapack disable "song_of_healing_test"
tellraw @s ["",{"text":"[NBS] ","color":"gold","bold":"true"},{"text":"Data pack ","color":"yellow"},{"text":"song_of_healing_test","color":"gold","underlined":"true"},{"text":" uninstalled successfully. You may now remove it from your data pack folder.","color":"yellow"}]
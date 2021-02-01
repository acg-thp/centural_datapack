tag @e remove nbs_deathsong
scoreboard objectives remove nbs_deathsong
scoreboard objectives remove nbs_deathsong_t
datapack disable "death_song"
tellraw @s ["",{"text":"[NBS] ","color":"gold","bold":"true"},{"text":"Data pack ","color":"yellow"},{"text":"death_song","color":"gold","underlined":"true"},{"text":" uninstalled successfully. You may now remove it from your data pack folder.","color":"yellow"}]
tag @e remove nbs_yyz
scoreboard objectives remove nbs_yyz
scoreboard objectives remove nbs_yyz_t
datapack disable "yyz"
tellraw @s ["",{"text":"[NBS] ","color":"gold","bold":"true"},{"text":"Data pack ","color":"yellow"},{"text":"yyz","color":"gold","underlined":"true"},{"text":" uninstalled successfully. You may now remove it from your data pack folder.","color":"yellow"}]
execute if entity @e[tag=waldobe] as @e[tag=waldobe] at @s if entity @p[distance=..8,tag=!in_dialouge] run tag @a[distance=..8,tag=!in_dialouge,tag=!quest_spacecraft_waldobe_dialouge_part_one] add quest_spacecraft_waldobe_dialouge_part_one
execute if entity @p[tag=quest_spacecraft_waldobe_dialouge_part_one] as @p[tag=quest_spacecraft_waldobe_dialouge_part_one] positioned as @s run tag @s add in_dialouge

execute if entity @p[tag=quest_spacecraft_waldobe_dialouge_part_one] as @e[tag=waldobe,limit=1] positioned as @s run teleport @s ~ ~ ~ facing entity @p[tag=quest_spacecraft_waldobe_dialouge_part_one]
execute if entity @p[tag=quest_spacecraft_waldobe_dialouge_part_one] as @p[tag=quest_spacecraft_waldobe_dialouge_part_one] positioned as @s run teleport @s ~ ~ ~ facing entity @e[tag=waldobe,limit=1]
execute if entity @p[tag=quest_spacecraft_waldobe_dialouge_part_one] as @p[tag=quest_spacecraft_waldobe_dialouge_part_one] positioned as @s run tellraw @s "Hey, you there! I need your help, come here!"
execute if entity @p[tag=quest_spacecraft_waldobe_dialouge_part_one] as @p[tag=quest_spacecraft_waldobe_dialouge_part_one] run tag @s add quest_spacecraft_waldobe_dialouge_part_two
execute if entity @p[tag=quest_spacecraft_waldobe_dialouge_part_one,tag=quest_spacecraft_waldobe_dialouge_part_two] as @p[tag=quest_spacecraft_waldobe_dialouge_part_one,tag=quest_spacecraft_waldobe_dialouge_part_two] run tag @s remove quest_spacecraft_waldobe_dialouge_part_one

execute if entity @p[tag=quest_spacecraft_waldobe_part_two] as @p[tag=quest_spacecraft_waldobe_part_two] if entity @e[tag=waldobe,distance=..4] run tellraw @p "Would you be so kind and help me find three Spacecraft Parts for my Spacecraft?"
execute if entity @p[tag=quest_spacecraft_waldobe_part_two] as @p[tag=quest_spacecraft_waldobe_part_two] if entity @e[tag=waldobe,distance=..4] run tag @s add quest_spacecraft_waldobe_dialouge_part_three
execute if entity @p[tag=quest_spacecraft_waldobe_part_two] as @p[tag=quest_spacecraft_waldobe_part_two] if entity @e[tag=waldobe,distance=..4] run tag @s remove quest_spacecraft_waldobe_part_two

execute if entity @e[tag=waldobe] as @e[tag=waldobe] at @s if entity @p[distance=..8,tag=!in_dialouge] run tag @a[distance=..8,tag=!in_dialouge,tag=!quest_spacecraft_waldobe_dialouge_part_one] add quest_spacecraft_waldobe_dialouge_part_one
execute if entity @p[tag=quest_spacecraft_waldobe_dialouge_part_one] as @p[tag=quest_spacecraft_waldobe_dialouge_part_one] positioned as @s run tag @s add in_dialouge

execute if entity @p[tag=quest_spacecraft_waldobe_dialouge_part_one] as @e[tag=waldobe,limit=1] positioned as @s run teleport @s ~ ~ ~ facing entity @p[tag=quest_spacecraft_waldobe_dialouge_part_one]
execute if entity @p[tag=quest_spacecraft_waldobe_dialouge_part_one] as @p[tag=quest_spacecraft_waldobe_dialouge_part_one] positioned as @s run teleport @s ~ ~ ~ facing entity @e[tag=waldobe,limit=1]
execute if entity @p[tag=quest_spacecraft_waldobe_dialouge_part_one] as @p[tag=quest_spacecraft_waldobe_dialouge_part_one] positioned as @s run tellraw @s "Hey, you there! I need your help, come here!"
execute if entity @p[tag=quest_spacecraft_waldobe_dialouge_part_one] as @p[tag=quest_spacecraft_waldobe_dialouge_part_one] run tag @s add quest_spacecraft_waldobe_dialouge_part_two
execute if entity @p[tag=quest_spacecraft_waldobe_dialouge_part_one,tag=quest_spacecraft_waldobe_dialouge_part_two] as @p[tag=quest_spacecraft_waldobe_dialouge_part_one,tag=quest_spacecraft_waldobe_dialouge_part_two] run tag @s remove quest_spacecraft_waldobe_dialouge_part_one

execute if entity @p[tag=quest_spacecraft_waldobe_dialouge_part_two] as @p[tag=quest_spacecraft_waldobe_dialouge_part_two] if entity @e[tag=waldobe,distance=..4] run tellraw @s "Would you be so kind and help me find three Spacecraft Parts for my Spacecraft?"
execute if entity @p[tag=quest_spacecraft_waldobe_dialouge_part_two] as @p[tag=quest_spacecraft_waldobe_dialouge_part_two] if entity @e[tag=waldobe,distance=..4] run tellraw @s "(/trigger yes or /trigger no) until I write interface."
execute if entity @p[tag=quest_spacecraft_waldobe_dialouge_part_two] as @p[tag=quest_spacecraft_waldobe_dialouge_part_two] if entity @e[tag=waldobe,distance=..4] run scoreboard players reset @s yes
execute if entity @p[tag=quest_spacecraft_waldobe_dialouge_part_two] as @p[tag=quest_spacecraft_waldobe_dialouge_part_two] if entity @e[tag=waldobe,distance=..4] run scoreboard players reset @s no
execute if entity @p[tag=quest_spacecraft_waldobe_dialouge_part_two] as @p[tag=quest_spacecraft_waldobe_dialouge_part_two] if entity @e[tag=waldobe,distance=..4] run scoreboard players enable @s yes
execute if entity @p[tag=quest_spacecraft_waldobe_dialouge_part_two] as @p[tag=quest_spacecraft_waldobe_dialouge_part_two] if entity @e[tag=waldobe,distance=..4] run scoreboard players enable @s no

execute if entity @p[tag=quest_spacecraft_waldobe_dialouge_part_two] as @p[tag=quest_spacecraft_waldobe_dialouge_part_two] if entity @e[tag=waldobe,distance=..4] run tag @s add quest_spacecraft_waldobe_dialouge_part_three
execute if entity @p[tag=quest_spacecraft_waldobe_dialouge_part_two] as @p[tag=quest_spacecraft_waldobe_dialouge_part_two] if entity @e[tag=waldobe,distance=..4] run tag @s remove quest_spacecraft_waldobe_part_two

execute if entity @p[tag=quest_spacecraft_waldobe_dialouge_part_three,scores={yes=0,no=1..}] run tag @s add quest_spacecraft_waldobe_dialouge_part_four
execute if entity @p[tag=quest_spacecraft_waldobe_dialouge_part_four,scores={yes=0,no=1..}] run tellraw @s "Id really like to get out of the Underworld sometime soon..."
execute if entity @p[tag=quest_spacecraft_waldobe_dialouge_part_four,scores={yes=0,no=1..}] run tellraw @s "Come back and give me a Yes if you change your mind."
execute if entity @p[tag=quest_spacecraft_waldobe_dialouge_part_four,scores={yes=0,no=1..}] run scoreboard players reset @s yes
execute if entity @p[tag=quest_spacecraft_waldobe_dialouge_part_four,scores={yes=0,no=1..}] run scoreboard players reset @s no
execute if entity @p[tag=quest_spacecraft_waldobe_dialouge_part_four,scores={yes=0,no=1..}] run scoreboard players enable @s yes
execute if entity @p[tag=quest_spacecraft_waldobe_dialouge_part_four,scores={yes=0,no=1..}] run scoreboard players enable @s no
execute if entity @p[tag=quest_spacecraft_waldobe_dialouge_part_four,scores={yes=0,no=1..}] run tag @s remove quest_spacecraft_waldobe_dialouge_part_four


execute if entity @p[tag=quest_spacecraft_waldobe_dialouge_part_three,scores={yes=1..,no=0}] run tag @s add quest_spacecraft_waldobe_dialouge_part_five
execute if entity @p[tag=quest_spacecraft_waldobe_dialouge_part_three,scores={yes=1..,no=0}] run tag @s remove quest_spacecraft_waldobe_dialouge_part_three

execute if entity @p[tag=quest_spacecraft_waldobe_dialouge_part_five,scores={yes=1..,no=0}] run tellraw @s "That is great news! The only problem is you will need to find a Spacecraft Blueprint Booklet"
execute if entity @p[tag=quest_spacecraft_waldobe_dialouge_part_five,scores={yes=1..,no=0}] run tellraw @s "These can be found within the Underworld at an abonded Library."
execute if entity @p[tag=quest_spacecraft_waldobe_dialouge_part_five,scores={yes=1..,no=0}] run tellraw @s "Once you find your self a copy come back to me and I will decode the writings, but please HURRY!"
execute if entity @p[tag=quest_spacecraft_waldobe_dialouge_part_five,scores={yes=1..,no=0}] run tag @s add quest_spacecraft_waldobe_dialouge_part_six
execute if entity @p[tag=quest_spacecraft_waldobe_dialouge_part_five,scores={yes=1..,no=0}] run scoreboard players reset @s yes
execute if entity @p[tag=quest_spacecraft_waldobe_dialouge_part_five,scores={yes=1..,no=0}] run scoreboard players reset @s no
execute if entity @p[tag=quest_spacecraft_waldobe_dialouge_part_five,scores={yes=1..,no=0}] run tag @s remove quest_spacecraft_waldobe_dialouge_part_five








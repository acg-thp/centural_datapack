execute if entity @e[tag=waldobe] as @e[tag=waldobe] at @s if entity @p[distance=..8,tag=!in_dialouge] run tag @a[distance=..8,tag=!in_dialouge,tag=!quest_spacecraft_waldobe_dialouge_part_one] add quest_spacecraft_waldobe_dialouge_part_one
execute if entity @p[tag=quest_spacecraft_waldobe_dialouge_part_one] as @p[tag=quest_spacecraft_waldobe_dialouge_part_one] positioned as @s run tag @s add in_dialouge

execute if entity @p[tag=quest_spacecraft_waldobe_dialouge_part_one] as @e[tag=waldobe,limit=1] positioned as @s run teleport @s ~ ~ ~ facing entity @p[tag=quest_spacecraft_waldobe_dialouge_part_one]
execute if entity @p[tag=quest_spacecraft_waldobe_dialouge_part_one] as @p[tag=quest_spacecraft_waldobe_dialouge_part_one] positioned as @s run teleport @s ~ ~ ~ facing entity @e[tag=waldobe,limit=1]
execute if entity @p[tag=quest_spacecraft_waldobe_dialouge_part_one] as @p[tag=quest_spacecraft_waldobe_dialouge_part_one] positioned as @s run tellraw @s "Hey, you there! I need your help, come here!"
execute if entity @p[tag=quest_spacecraft_waldobe_dialouge_part_one] as @p[tag=quest_spacecraft_waldobe_dialouge_part_one] run tag @s add quest_spacecraft_waldobe_dialouge_part_two
execute if entity @p[tag=quest_spacecraft_waldobe_dialouge_part_one,tag=quest_spacecraft_waldobe_dialouge_part_two] as @p[tag=quest_spacecraft_waldobe_dialouge_part_one,tag=quest_spacecraft_waldobe_dialouge_part_two] run tag @s remove quest_spacecraft_waldobe_dialouge_part_one


execute if entity @p[tag=quest_spacecraft_waldobe_dialouge_part_two] as @p[tag=quest_spacecraft_waldobe_dialouge_part_two] at @s if entity @e[tag=waldobe,distance=..4] run playsound minecraft:entity.villager.celebrate master @s ~ ~ ~ 1000000 1
execute if entity @p[tag=quest_spacecraft_waldobe_dialouge_part_two] as @p[tag=quest_spacecraft_waldobe_dialouge_part_two] at @s if entity @e[tag=waldobe,distance=..4] run tellraw @s "Would you be so kind and help me find three Spacecraft Parts for my Spacecraft?"
execute if entity @p[tag=quest_spacecraft_waldobe_dialouge_part_two] as @p[tag=quest_spacecraft_waldobe_dialouge_part_two] at @s if entity @e[tag=waldobe,distance=..4] run tellraw @s "(/trigger yes or /trigger no) until I write interface."
execute if entity @p[tag=quest_spacecraft_waldobe_dialouge_part_two] as @p[tag=quest_spacecraft_waldobe_dialouge_part_two] at @s if entity @e[tag=waldobe,distance=..4] run scoreboard players reset @s yes
execute if entity @p[tag=quest_spacecraft_waldobe_dialouge_part_two] as @p[tag=quest_spacecraft_waldobe_dialouge_part_two] at @s if entity @e[tag=waldobe,distance=..4] run scoreboard players reset @s no
execute if entity @p[tag=quest_spacecraft_waldobe_dialouge_part_two] as @p[tag=quest_spacecraft_waldobe_dialouge_part_two] at @s if entity @e[tag=waldobe,distance=..4] run scoreboard players enable @s yes
execute if entity @p[tag=quest_spacecraft_waldobe_dialouge_part_two] as @p[tag=quest_spacecraft_waldobe_dialouge_part_two] at @s if entity @e[tag=waldobe,distance=..4] run scoreboard players enable @s no
execute if entity @p[tag=quest_spacecraft_waldobe_dialouge_part_two] as @p[tag=quest_spacecraft_waldobe_dialouge_part_two] at @s if entity @e[tag=waldobe,distance=..4] run scoreboard objectives add action_timer minecraft.custom:minecraft.sneak_time "Action timer used to talking to NPC"

execute if entity @p[tag=quest_spacecraft_waldobe_dialouge_part_two] as @p[tag=quest_spacecraft_waldobe_dialouge_part_two] at @s if entity @e[tag=waldobe,distance=..4] run tag @s add quest_spacecraft_waldobe_dialouge_part_three
execute if entity @p[tag=quest_spacecraft_waldobe_dialouge_part_two] as @p[tag=quest_spacecraft_waldobe_dialouge_part_two] at @s if entity @e[tag=waldobe,distance=..4] run tag @s remove quest_spacecraft_waldobe_dialouge_part_two


execute if entity @p[tag=quest_spacecraft_waldobe_dialouge_part_three,scores={action_timer=1..}] as @p[tag=quest_spacecraft_waldobe_dialouge_part_three,scores={action_timer=1..}] at @s if entity @e[tag=waldobe,distance=..4] run scoreboard players set @s yes 1
execute if entity @e[tag=waldobe] as @e[tag=waldobe] at @s unless entity @p[distance=..8] if entity @p[scores={action_timer=1..}] run scoreboard objectives remove action_timer

execute if entity @p[tag=quest_spacecraft_waldobe_dialouge_part_three,scores={yes=0,no=1..}] as @p[tag=quest_spacecraft_waldobe_dialouge_part_three,scores={yes=0,no=1..}] run tag @s add quest_spacecraft_waldobe_dialouge_part_four
execute if entity @p[tag=quest_spacecraft_waldobe_dialouge_part_four] as @p[tag=quest_spacecraft_waldobe_dialouge_part_four] run playsound minecraft:entity.villager.no master @s ~ ~ ~ 1000000 1
execute if entity @p[tag=quest_spacecraft_waldobe_dialouge_part_four] as @p[tag=quest_spacecraft_waldobe_dialouge_part_four] run tellraw @s "Id really like to get out of the Underworld sometime soon..."
execute if entity @p[tag=quest_spacecraft_waldobe_dialouge_part_four] as @p[tag=quest_spacecraft_waldobe_dialouge_part_four] run tellraw @s "Come back and give me a Yes if you change your mind."
execute if entity @p[tag=quest_spacecraft_waldobe_dialouge_part_four] as @p[tag=quest_spacecraft_waldobe_dialouge_part_four] run scoreboard players reset @s yes
execute if entity @p[tag=quest_spacecraft_waldobe_dialouge_part_four] as @p[tag=quest_spacecraft_waldobe_dialouge_part_four] run scoreboard players reset @s no
execute if entity @p[tag=quest_spacecraft_waldobe_dialouge_part_four] as @p[tag=quest_spacecraft_waldobe_dialouge_part_four] run scoreboard players enable @s yes
execute if entity @p[tag=quest_spacecraft_waldobe_dialouge_part_four] as @p[tag=quest_spacecraft_waldobe_dialouge_part_four] run scoreboard players enable @s no
execute if entity @p[tag=quest_spacecraft_waldobe_dialouge_part_four] as @p[tag=quest_spacecraft_waldobe_dialouge_part_four] run tag @s remove quest_spacecraft_waldobe_dialouge_part_four


execute if entity @p[tag=quest_spacecraft_waldobe_dialouge_part_three,scores={yes=1..,no=0}] as @p[tag=quest_spacecraft_waldobe_dialouge_part_three,scores={yes=1..,no=0}] run tag @s add quest_spacecraft_waldobe_dialouge_part_five
execute if entity @p[tag=quest_spacecraft_waldobe_dialouge_part_three,scores={yes=1..,no=0}] as @p[tag=quest_spacecraft_waldobe_dialouge_part_three,scores={yes=1..,no=0}] run tag @s remove quest_spacecraft_waldobe_dialouge_part_three

execute if entity @p[tag=quest_spacecraft_waldobe_dialouge_part_five,scores={yes=1..,no=0}] as @p[tag=quest_spacecraft_waldobe_dialouge_part_five,scores={yes=1..,no=0}] run playsound minecraft:entity.villager.yes master @s ~ ~ ~ 1000000 1
execute if entity @p[tag=quest_spacecraft_waldobe_dialouge_part_five,scores={yes=1..,no=0}] as @p[tag=quest_spacecraft_waldobe_dialouge_part_five,scores={yes=1..,no=0}] run tellraw @s "That is great news! The only problem is you will need to find a Spacecraft Blueprint Booklet"
execute if entity @p[tag=quest_spacecraft_waldobe_dialouge_part_five,scores={yes=1..,no=0}] as @p[tag=quest_spacecraft_waldobe_dialouge_part_five,scores={yes=1..,no=0}] run tellraw @s "These can be found within the Underworld at an abonded Library."
execute if entity @p[tag=quest_spacecraft_waldobe_dialouge_part_five,scores={yes=1..,no=0}] as @p[tag=quest_spacecraft_waldobe_dialouge_part_five,scores={yes=1..,no=0}] run tellraw @s "Once you find your self a copy come back to me and I will decode the writings, but please HURRY!"
execute if entity @p[tag=quest_spacecraft_waldobe_dialouge_part_five,scores={yes=1..,no=0}] as @p[tag=quest_spacecraft_waldobe_dialouge_part_five,scores={yes=1..,no=0}] run tag @s add quest_spacecraft_waldobe_dialouge_part_six
execute if entity @p[tag=quest_spacecraft_waldobe_dialouge_part_five,scores={yes=1..,no=0}] as @p[tag=quest_spacecraft_waldobe_dialouge_part_five,scores={yes=1..,no=0}] run scoreboard players reset @s yes
execute if entity @p[tag=quest_spacecraft_waldobe_dialouge_part_five,scores={yes=1..,no=0}] as @p[tag=quest_spacecraft_waldobe_dialouge_part_five,scores={yes=1..,no=0}] run scoreboard players reset @s no
execute if entity @p[tag=quest_spacecraft_waldobe_dialouge_part_five,scores={yes=1..,no=0}] as @p[tag=quest_spacecraft_waldobe_dialouge_part_five,scores={yes=1..,no=0}] run tag @s remove quest_spacecraft_waldobe_dialouge_part_five






#
execute if entity @p[tag=quest_spacecraft_waldobe_dialouge_part_one] as @a[tag=quest_spacecraft_waldobe_dialouge_part_one] at @s unless entity @e[tag=waldobe,distance=..16] run tag @s remove quest_spacecraft_waldobe_dialouge_part_one
execute if entity @p[tag=quest_spacecraft_waldobe_dialouge_part_two] as @a[tag=quest_spacecraft_waldobe_dialouge_part_two] at @s unless entity @e[tag=waldobe,distance=..16] run tag @s remove quest_spacecraft_waldobe_dialouge_part_two
execute if entity @p[tag=quest_spacecraft_waldobe_dialouge_part_three] as @a[tag=quest_spacecraft_waldobe_dialouge_part_three] at @s unless entity @e[tag=waldobe,distance=..16] run tag @s remove quest_spacecraft_waldobe_dialouge_part_three
execute if entity @p[tag=quest_spacecraft_waldobe_dialouge_part_four] as @a[tag=quest_spacecraft_waldobe_dialouge_part_four] at @s unless entity @e[tag=waldobe,distance=..16] run tag @s remove quest_spacecraft_waldobe_dialouge_part_four

execute if entity @p[tag=in_dialouge] as @a[tag=in_dialouge] at @s unless entity @e[tag=waldobe,distance=..16] run tag @s remove in_dialouge

execute if entity @e[tag=waldobe] as @e[tag=waldobe] at @s if entity @p[team=!friendly,distance=..8] as @a[team=!friendly,distance=..8] run team join friendly @s
execute positioned 10 -766 10 unless entity @e[tag=waldobe] run summon zombie_villager ~ ~ ~ {OnGround:1b,NoGravity:0b,Silent:0b,Invulnerable:1b,CustomNameVisible:1b,Team:"friendly",Tags:["waldobe"],CustomName:'["Yes Key: ", {"keybind":"key.sneak"}," ",{"text":"Waldobe"}]'}





execute if entity @e[tag=finder] at @e[tag=finder] run particle minecraft:portal ~ ~ ~ 0 0 0 1 1 force @p[distance=..6]



execute if entity @p[tag=searching] as @a[tag=searching,scores={search_timer=50}] at @s if entity @e[tag=searchable,distance=..6] run tag @s add found_searchable

execute if entity @p[tag=found_searchable] as @a[tag=found_searchable] at @s run teleport @s ~ ~ ~ facing entity @e[tag=searchable,distance=..6,limit=1]

execute if entity @p[tag=found_searchable] as @a[tag=found_searchable] at @s run tellraw @s "You seem to have spotted a searchable location."

execute if entity @p[tag=found_searchable] as @a[tag=found_searchable] at @s run scoreboard players reset @s search

execute if entity @p[tag=found_searchable] as @a[tag=found_searchable] at @s at @e[tag=searchable,distance=..6,limit=1] unless entity @e[tag=finder_parent,distance=..1] run summon pig ~ ~ ~ {NoGravity:1b,Silent:1b,Invulnerable:1b,NoAI:1b,Tags:["finder_parent"],ActiveEffects:[{Id:14b,Amplifier:1b,Duration:19999980,ShowParticles:1b}]}

execute if entity @p[tag=found_searchable] as @a[tag=found_searchable] at @s run summon pig ~ ~ ~ {Silent:1b,Invulnerable:1b,Age:-300,Tags:["finder"],ActiveEffects:[{Id:14b,Amplifier:1b,Duration:19999980,ShowParticles:1b}]}

execute if entity @p[tag=searching,scores={search_timer=50}] as @a[tag=searching,scores={search_timer=50}] at @s run tag @s remove searching
execute if entity @p[tag=found_searchable] as @a[tag=found_searchable] at @s run tag @s remove found_searchable



#Remove Finders if age hits -1 teleport to Underworld
execute if entity @e[tag=finder,nbt={Age:-1}] as @e[tag=finder,nbt={Age:-1}] run tp @s 0 -768 0

execute if entity @p[scores={search=1..},tag=!searching] as @a[scores={search=1..},tag=!searching] run tellraw @s "You begin to search the region...."
execute if entity @p[scores={search=1..},tag=!searching] as @a[scores={search=1..},tag=!searching] run tag @s add searching

#execute if entity @e[tag=searchable] at @e[tag=searchable] if entity @p[distance=..6,scores={search_timer=50..}] as @a[distance=..6,scores={search_timer=50..}] run scoreboard players set @s search_timer 0

execute unless entity @p[scores={search_timer=..51}] run scoreboard objectives remove search_timer

execute if entity @p[scores={search=1..}] as @a[scores={search=1..}] if entity @e[tag=searchable] at @e[tag=searchable] if entity @s[distance=..6] unless entity @s[scores={search_timer=0..}] run scoreboard objectives add search_timer minecraft.custom:minecraft.play_one_minute "Search timer determines when the player can search again"
#scoreboard objectives setdisplay sidebar search_timer
#scoreboard players set @a search_timer 50
#execute if entity @e[tag=searchable] as @e[tag=searchable] at @s if entity @p[distance=..6] run scoreboard players set @p[distance=..6] search_timer 0
#scoreboard objectives setdisplay sidebar

execute if entity @p[scores={search=1..}] as @a[scores={search=1..}] run scoreboard players reset @s search

execute as @a unless entity @s[scores={search=-2147483648..2147483647}] unless entity @s[scores={search_timer=..50}] run scoreboard players enable @s search

#If Finder Has Found Parent Teleport To Void Collection Chamber
execute if entity @e[tag=finder] as @e[tag=finder] at @s unless entity @p[distance=..12] run tp @s 0 -1023 0
execute if entity @e[tag=finder] as @e[tag=finder] at @s unless entity @e[tag=finder_parent,distance=..12] run tp @s 0 -1023 0
#execute if entity @e[tag=finder] as @e[tag=finder] at @s if entity @e[tag=finder_parent,distance=..1] run tp @s[type=pig,tag=finder] 0 -1023 0
#execute if entity @e[tag=finder] as @e[tag=finder] at @s unless entity @e[tag=finder_parent,distance=..8] run tp @s[type=pig,tag=finder] 0 -1023 0
#If Searchable Has A Parent Without Any Nearby Finder Teleport To Void Collection Chamber

execute if entity @e[tag=finder_parent] as @e[tag=finder_parent] at @s unless entity @p[distance=..12] run tp @s 0 -1023 0
execute if entity @e[tag=finder_parent] as @e[tag=finder_parent] at @s unless entity @e[tag=finder,distance=..12] run tp @s 0 -1023 0
#execute if entity @e[tag=searchable] at @e[tag=searchable] if entity @e[tag=finder_parent,distance=..1] unless entity @e[tag=finder,distance=..8] run tp @e[type=pig,tag=finder_parent,distance=..1] 0 -1023 0
#execute if entity @e[tag=searchable] at @e[tag=searchable] if entity @e[tag=finder_parent,distance=..1] unless entity @p[tag=searching,distance=..8] run tp @e[type=pig,tag=finder_parent,distance=..1] 0 -1023 0

execute if entity @e[tag=finder] as @e[tag=finder] at @s if entity @e[tag=finder_parent,distance=..1] run tp @s 0 -1023 0



#Start Coordinates

execute as @a unless entity @s[scores={coordinates=-2147483648..2147483647}] run tellraw @s "[ENABLED] /trigger coordinates"
execute as @a unless entity @s[scores={coordinates=-2147483648..2147483647}] run scoreboard players enable @s coordinates

execute if entity @p[scores={coordinates=1..},tag=!coordinates] as @a[scores={coordinates=1..},tag=!coordinates] run tellraw @s "Enabling Coordinates (To disable type /trigger coordinates set -1)."
execute if entity @p[scores={coordinates=1..},tag=!coordinates] as @a[scores={coordinates=1..},tag=!coordinates] run tag @s add coordinates
execute if entity @p[scores={coordinates=1..},tag=coordinates] as @a[scores={coordinates=1..},tag=coordinates] run scoreboard players reset @s coordinates

execute if entity @p[tag=coordinates] as @a[tag=coordinates] run title @s actionbar ["X: ",{"nbt":"Pos[0]","entity":"@s"},", Y: ",{"nbt":"Pos[1]","entity":"@s"},", Z: ",{"nbt":"Pos[2]","entity":"@s"}]


execute if entity @p[scores={coordinates=..-1},tag=coordinates] as @a[scores={coordinates=..-1},tag=coordinates] run tellraw @s "Disabling Coordinate."
execute if entity @p[scores={coordinates=..-1},tag=coordinates] as @a[scores={coordinates=..-1},tag=coordinates] run tag @s remove coordinates
execute if entity @p[scores={coordinates=..-1},tag=!coordinates] as @a[scores={coordinates=..-1},tag=!coordinates] run scoreboard players reset @s coordinates

#End Coordinates
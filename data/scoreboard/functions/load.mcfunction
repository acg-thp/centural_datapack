#Status Loading
execute if entity @p[tag=verbose] as @a[tag=verbose] run tellraw @s [{"text":" [ MODIFY ] ","color":"gold"},{"text":"data modify storage scoreboard:load status set value loading","clickEvent":{"action":"suggest_command","value":"/data modify storage scoreboard:load status set value loading"},"color":"light_purple"}]
data modify storage scoreboard:load status set value loading

#Teardown
execute if entity @p[tag=verbose] as @a[tag=verbose] run tellraw @s [{"text":" [ REMOVE ] ","color":"red"},{"text":"data remove storage scoreboard:require require","clickEvent":{"action":"suggest_command","value":"/data remove storage scoreboard:require require"},"color":"light_purple"}]
data remove storage scoreboard:require core

#Setup Core Scoreboard
execute store success storage scoreboard:require core byte 1 run function core:scoreboard
execute if data storage scoreboard:require {core:0b} if entity @p[tag=verbose] as @a[tag=verbose] run tellraw @s [{"text":" [ ERROR ] ","color":"red"},{"text":"function core:scoreboard required but not found.","color":"white"}]
execute if data storage scoreboard:require {core:1b} if entity @p[tag=verbose] as @a[tag=verbose] run tellraw @s [{"text":" [ REQUIRE ] ","color":"pink"},{"text":" function core:scoreboard","clickEvent":{"action":"suggest_command","value":"/function core:scoreboard"},"color":"light_purple"}]

#function load:load

#return true
help
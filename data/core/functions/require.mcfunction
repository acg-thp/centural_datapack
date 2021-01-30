
execute if entity @p[tag=verbose] as @a[tag=verbose] run tellraw @s [{"text":" [ REMOVE ] ","color":"red"},{"text":"data remove storage core:require scoreboard","clickEvent":{"action":"suggest_command","value":"data remove storage core:require scoreboard"},"color":"light_purple"}]

data remove storage core:require scoreboard

execute store success storage core:require scoreboard byte 1 run function scoreboard:load
execute if data storage core:require {scoreboard:0b} if entity @p[tag=verbose] as @a[tag=verbose] run tellraw @s [{"text":" [ ERROR ] ","color":"red"},{"text":"function scoreboard:load required but not found.","color":"white"}]
execute if data storage core:require {scoreboard:1b} if entity @p[tag=verbose] as @a[tag=verbose] run tellraw @s [{"text":" [ REQUIRE ] ","color":"pink"},{"text":"function scoreboard:load","clickEvent":{"action":"suggest_command","value":"/function scoreboard:load"},"color":"light_purple"}]

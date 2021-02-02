
#Teardown Require
execute if entity @p[tag=verbose] as @a[tag=verbose] run tellraw @s [{"text":" [ REMOVE ] ","color":"red"},{"text":"data remove storage require:load status","clickEvent":{"action":"suggest_command","value":"/data remove storage require:load status"},"color":"light_purple"}]
data remove storage require:load status

#Status Loading
execute if entity @p[tag=verbose] as @a[tag=verbose] run tellraw @s [{"text":" [ MODIFY ] ","color":"gold"},{"text":"data modify storage require:load status set value loading","clickEvent":{"action":"suggest_command","value":"/data modify storage core:load status set value loading"},"color":"light_purple"}]
data modify storage  require:load status set value loading


#
execute store success storage core:require require byte 1 run function core:require
execute if data storage core:require {require:0b} if entity @p[tag=verbose] as @a[tag=verbose] run tellraw @s [{"text":" [ ERROR ] ","color":"red"},{"text":"function core:require required but not found.","color":"white"}]
execute if data storage core:require {require:1b} if entity @p[tag=verbose] as @a[tag=verbose] run tellraw @s [{"text":" [ REQUIRE ] ","color":"pink"},{"text":"function core:require","clickEvent":{"action":"suggest_command","value":"/function core:require"},"color":"light_purple"}]

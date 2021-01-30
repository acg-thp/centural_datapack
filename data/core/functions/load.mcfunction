#
execute if entity @p[tag=verbose] as @a[tag=verbose] run tellraw @s [{"text":" [ REMOVE ] ","color":"red"},{"text":"data remove storage core:load status","clickEvent":{"action":"suggest_command","value":"/data remove storage core:load status"},"color":"light_purple"}]
data remove storage core:load status

#
execute if entity @p[tag=verbose] as @a[tag=verbose] run tellraw @s [{"text":" [ MODIFY ] ","color":"gold"},{"text":"data modify storage core:load status set value loading","clickEvent":{"action":"suggest_command","value":"/data modify storage core:load status set value loading"},"color":"light_purple"}]
data modify storage core:load status set value loading

#function load:load

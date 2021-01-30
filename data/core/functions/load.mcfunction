execute if entity @p[tag=verbose] as @a[tag=verbose] run tellraw @s [{"text":" [ REMOVE ] ","color":"red"},{"text":"data remove storage core:load status","color":"purple"}]
data remove storage core:load status

execute if entity @p[tag=verbose] as @a[tag=verbose] run tellraw @s [{"text":" [ MODIFY ] ","color":"orange"},{"text":"data modify storage core:load status set value loading","color":"purple"}]
data modify storage core:load status set value "loading"
#function load:load

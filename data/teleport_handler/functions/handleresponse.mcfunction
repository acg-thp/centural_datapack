execute store result entity @s Item.tag.testID long 1 run scoreboard players get @e[tag=TPResponse,limit=1] teleport_id
execute store success entity @s Item.tag.tpSuccess byte 1 run data modify entity @s Item.tag.testID set from entity @s Item.tag.receiverID
execute as @e[nbt={Item:{tag:{tpSuccess:0b}}}] run data modify entity @s Item.tag.tpState set value 2L
function teleport_handler:tp_responsecalc
execute if entity @e[tag=TPResponse,scores={TPReply=1..},limit=1] as @e[nbt={Item:{tag:{tpState:2L}}}] run function teleport_handler:tpaccept
execute if entity @e[tag=TPResponse,scores={TPReply=..-1},limit=1] as @e[nbt={Item:{tag:{tpState:2L}}}] run function teleport_handler:tpdeny

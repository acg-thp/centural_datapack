execute store result entity @s Item.tag.testID long 1 run scoreboard players get @e[tag=TPRun,limit=1] teleport_id
execute store success entity @s Item.tag.tpSuccess byte 1 run data modify entity @s Item.tag.testID set from entity @s Item.tag.requesterID
execute as @e[nbt={Item:{tag:{tpSuccess:0b}}}] run kill @s
data modify entity @s Item.tag.testID set value 0L
data modify entity @s Item.tag.tpSuccess set value 1L
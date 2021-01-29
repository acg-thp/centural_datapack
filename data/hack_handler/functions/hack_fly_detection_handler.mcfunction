execute if entity @p[scores={fly_detection=20000..}] as @a[scores={fly_detection=20000..}] run function hack_handler:tag/add/hack_tag_add_flag_as_flying_handler
execute if entity @p[tag=flag_as_flying,tag=!jail] as @a[tag=flag_as_flying,tag=!jail] run tellraw @s {"text":"You have been detected by our fly_detection_handler. You are receiving an infraction and will be place in jail until further investigation"}

execute if entity @p[tag=flag_as_flying,tag=!jail] as @a[tag=flag_as_flying,tag=!jail] run tag @s add jail

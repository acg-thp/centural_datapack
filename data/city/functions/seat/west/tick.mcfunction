execute if entity @p[tag=sitting,distance=..1,scores={seat_animation=0}] run data modify entity @s Rotation set value [-90.0f,0.0f]
execute if entity @p[tag=sitting,distance=..1,scores={seat_animation=1}] run data modify entity @s Rotation set value [-91.0f,0.0f]
execute if entity @p[tag=sitting,distance=..1,scores={seat_animation=2}] run data modify entity @s Rotation set value [-92.0f,0.0f]
execute if entity @p[tag=sitting,distance=..1,scores={seat_animation=3}] run data modify entity @s Rotation set value [-93.0f,0.0f]
execute if entity @p[tag=sitting,distance=..1,scores={seat_animation=4}] run data modify entity @s Rotation set value [-94.0f,0.0f]
execute if entity @p[tag=sitting,distance=..1,scores={seat_animation=5}] run data modify entity @s Rotation set value [-95.0f,0.0f]
execute if entity @p[tag=sitting,distance=..1,scores={seat_animation=6..}] run scoreboard players set @s seat_animation 0

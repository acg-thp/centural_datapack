#If we can delete tags while offline then this handler may not beed needed.
execute if entity @p[tag=ReturningPlayer] as @a[tag=ReturningPlayer] run tag @s remove ReturningPlayer

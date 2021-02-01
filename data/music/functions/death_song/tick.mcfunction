execute as @a[tag=nbs_deathsong] run scoreboard players operation @s nbs_deathsong += speed nbs_deathsong
execute as @a[tag=nbs_deathsong] at @s run function music:death_song/tree/0_511

execute if entity @p[scores={death_song=1..}] as @a[scores={death_song=1..}] run function music:death_song/play
execute if entity @p[scores={death_song=1..}] as @a[scores={death_song=1..}] run scoreboard players reset @s death_song
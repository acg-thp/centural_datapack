execute as @a[tag=!returning_player] run function player_handler:new_player
execute as @a[scores={login_handler=1..}] run function player_handler:returning_player
execute as @a[scores={deathTrigger=1..}] run function player_handler:on_death
execute as @a[nbt={SleepTimer:20s},limit=1] run function player_handler:on_sleep

function player_handler:reset
tellraw @s {"text":"Enabling all home triggers"}
execute as @s run function home_handler:enable/enable_delete_home
execute as @s run function home_handler:enable/enable_set_home
execute as @s run function home_handler:enable/enable_teleport_home

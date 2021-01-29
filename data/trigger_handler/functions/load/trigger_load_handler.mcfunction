# TODO all triggers from other handlers need to be able to run from here
#  for now it is safe to say you can write triggers in this handler then 
#  detail it out into its own handler later
execute unless entity @e[tag=warp_handler] if entity @e[tag=handler] run tag @e[tag=handler] add warp_handler


# start warp_trigger_load_handler

scoreboard objectives add warp_math dummy "Warp math placeholder"
scoreboard objectives add warp_cooldown minecraft.custom:minecraft.play_one_minute "Warp cooldown"
scoreboard players set @e[tag=warp_handler] warp_cooldown 200

# start warp_trigger_load_player_triggers_handler
scoreboard objectives add warp_to_wild trigger "Warp to the wilderness"
scoreboard objectives add warp_to_spawn trigger "Warp to world spawn"
# end warp_trigger_load_player_triggers_handler

# start warp_trigger_load_administrator_triggers_handler
scoreboard objectives add warp_to_player trigger "Warp to another player"
scoreboard objectives add warp_other_to_me trigger "Warp another player to me"
scoreboard objectives add warp_all_to_me trigger "Warp all players to me"
scoreboard objectives add warp_targets trigger "Warp target selectors"
scoreboard objectives add warp_who dummy "Warp who target selector"
scoreboard objectives add warp_where dummy "Warp where target selector"
scoreboard objectives add warp_where_x dummy "Warp where target selector is coordinate x"
scoreboard objectives add warp_where_y dummy "Warp where target selector is coordinate y"
scoreboard objectives add warp_where_z dummy "Warp where target selector is coordinate z"
# end warp_trigger_load_administrator_triggers_handler

# end warp_trigger_load_handler

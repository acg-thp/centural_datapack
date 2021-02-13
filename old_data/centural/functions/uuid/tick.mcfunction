data get storage centural:add_player_to_online_player_base
execute store result storage centural:last_output length int 1 run data get block ~ -1023 ~ LastOutput

data modify storage centural:last_output length set from storage centural:util expected_uuid_length
execute unless block ~ -1023 ~ minecraft:command_block{SuccessCount:1b} run data modify storage centural:online_player_base uuid_stack append from storage centural:add_player_to_online_player_base {}

execute unless block ~ ~-1 ~ minecraft:repeating_command_block{SuccessCount:1b} run data modify storage centural:online_player_base uuid_stack append from storage centural:add_player_to_online_player_base {}
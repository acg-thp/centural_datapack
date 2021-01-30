scoreboard objectives add deathTrigger deathCount
scoreboard objectives add deathCount deathCount "Deaths"
scoreboard objectives add mod_level dummy "Mod Level"
scoreboard objectives add play_time_ranks dummy "Play Time Rankings"
scoreboard objectives add position_x dummy "POS X"
scoreboard objectives add position_y dummy "POS Y"
scoreboard objectives add position_z dummy "POS Z"
scoreboard objectives add rotation_pitch dummy "ROT Pitch"
scoreboard objectives add rotation_yaw dummy "ROT Yaw"
scoreboard objectives add one_time_math dummy
scoreboard objectives add teleport_id dummy "TP ID"
scoreboard objectives add dimension dummy "Dimension"
#scoreboard objectives add home1_x dummy "Home 1 X-Coordinate"
#scoreboard objectives add home1_y dummy "Home 1 Y-Coordinate"
#scoreboard objectives add home1_z dummy "Home 1 Z-Coordinate"
scoreboard objectives add health health "Health"
scoreboard objectives add fly minecraft.custom:minecraft.fly_one_cm  "Fly One CM"
scoreboard objectives add login_handler minecraft.custom:minecraft.leave_game "Login Handler"
scoreboard objectives add clear_lag_timer minecraft.custom:minecraft.play_one_minute  "Clear Lag Timer"
scoreboard objectives add lemon_timer minecraft.custom:minecraft.play_one_minute  "Lemon Timer"
scoreboard objectives add sprint minecraft.custom:minecraft.sprint_one_cm "Sprint One CM"
scoreboard objectives add swim minecraft.custom:minecraft.swim_one_cm "Swim One CM"
scoreboard objectives add walk_on_water minecraft.custom:minecraft.walk_on_water_one_cm "Walk On Water One CM"
scoreboard objectives add walk minecraft.custom:minecraft.walk_one_cm "Walk One CM"
scoreboard objectives add walk_under_water minecraft.custom:minecraft.walk_under_water_one_cm "Walk Under Water One CM"
#scoreboard objectives add DELHOME trigger 
scoreboard objectives add GM trigger
#scoreboard objectives add HOME trigger
scoreboard objectives add MOD trigger
scoreboard objectives add POS trigger
#scoreboard objectives add SETHOME trigger
scoreboard objectives add TP trigger
scoreboard objectives add TPReply trigger
scoreboard objectives add TPO trigger
scoreboard objectives add TPOHERE trigger
scoreboard objectives add xp xp "XP"
#
scoreboard objectives setdisplay list teleport_id
scoreboard objectives setdisplay belowName health
say test
#function home_handler:reset/reset

# TODO storage by player UUID filter on login to populate scoreboard data then add remove on load as we would load their data from storage on login instead of perm storage in scoreboard
scoreboard objectives add home_x dummy "Home X Coordinate"
scoreboard objectives add home_y dummy "Home Y Coordinate"
scoreboard objectives add home_z dummy "Home Z Coordinate"
scoreboard objectives add home_dimension dummy "Home Dimension"

# Start Set Home Triggers
scoreboard objectives add set_home trigger "Set Home Trigger"
# Start Set Home Alternate Triggers
scoreboard objectives add SETHOME trigger "Set Home Alternate Trigger One"
scoreboard objectives add sethome trigger "Set Home Alternate Trigger Two"
scoreboard objectives add place_home trigger "Set Home Alternate Trigger Three"
# End Set Home Alternate Triggers
# End Set Home Triggers

# Start Delete Home Triggers
scoreboard objectives add delete_home trigger "Delete Home Trigger"
# Start Delete Home Alternate Triggers
# End Delete Home Alternate Triggers
# End Delete Home Triggers

# Start Get Home Triggers
scoreboard objectives add get_home trigger "Get Home Trigger"
# Start Get Home Alternate Triggers
scoreboard objectives add GETHOME trigger "Get Home Alternate Trigger One"
scoreboard objectives add gethome trigger "Get Home Alternate Trigger Two"
# End Get Home Alternate Triggers
# End Get Home Triggers

# Start Teleport Home Triggers
scoreboard objectives add teleport_home trigger "Teleport Home Trigger"
# Start Teleport Home Alternate Triggers
scoreboard objectives add home trigger "Teleport Home Alternate Trigger One"
scoreboard objectives add tp_home trigger "Teleport Home Alternate Trigger Two"
scoreboard objectives add HOME trigger "Teleport Home Alternate Trigger Three"
# End Teleport Home Alternate Triggers
# End Teleport Home Triggers

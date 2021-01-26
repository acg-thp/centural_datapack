
#scoreboard objectives remove logout_reset If you remove this we have to make sure a data storage model is work or else we cannot rely on this scoreboard in testing.

scoreboard objectives add logout_reset minecraft.custom:minecraft.leave_game "Logout Reset"
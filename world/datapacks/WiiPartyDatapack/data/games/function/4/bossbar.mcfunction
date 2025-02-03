#   Author        =   @ JevinLevin
#   Description   =   Handles the bossbar at the top, used to show how much time is left
#   Called By     =   games:4/repeating


# Sets the timeleft= score to 3600, the max time value
scoreboard players set timeleft= 4scores 3600

# Takes awayh the time= since the game has started from the max value, to find out how much time is left
scoreboard players operation timeleft= 4scores -= time= 4scores

# Stores the timeleft= into the bossbars value
execute store result bossbar 4blue value run scoreboard players get timeleft= 4scores
execute store result bossbar 4red value run scoreboard players get timeleft= 4scores
execute store result bossbar 4green value run scoreboard players get timeleft= 4scores
execute store result bossbar 4orange value run scoreboard players get timeleft= 4scores
execute store result bossbar 4spectator value run scoreboard players get timeleft= 4scores
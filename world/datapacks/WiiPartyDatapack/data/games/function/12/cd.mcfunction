#   Author        =   @ T4Bl3rUs
#   Description   =   Countdown and start title sequence for the seeker
#   Called By     =   games:12/begin + games:12/cd

#Countdown
execute if score timer 12scores matches 1.. run scoreboard players remove timer 12scores 1
execute if score timer 12scores matches 1.. run schedule function games:12/cd 1s

#Start title sequence 4 seconds before
execute if score timer 12scores matches 4 run function games:12/title1_2
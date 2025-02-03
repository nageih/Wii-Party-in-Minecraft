#   Author        =   @ JevinLevin
#   Description   =   Ran as a barrel that smashes and hits the player
#   Called By     =   games:3/repeating


# Displays damage particles at the broken barrel
particle minecraft:damage_indicator ~ ~1 ~ 0.5 0.5 0.5 0.001 100

# Kill the barrel falling block so it looks like it broke
kill @s
#   Author        =   @ JevinLevin
#   Description   =   Kills push slimes after 2 seconds
#   Called By     =   games:26/repeating


# Increeases the slimes timer
scoreboard players add @s 26push 1

# After 2 seconds tp them into the void and kill them
tp @s[scores={26push=40..}] ~ -70 ~
kill @s[scores={26push=40..}]
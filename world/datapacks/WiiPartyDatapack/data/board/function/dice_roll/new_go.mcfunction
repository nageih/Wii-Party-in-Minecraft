#   Author        =   @ JevinLevin
#   Description   =   Finds the next player to roll their dice, or ends the dice rolling segment
#   Called By     =   board:dice_roll/end_go

# Gives the player the hadTurn tag to show that the player has rolled this round 
tag @a[tag=turn] add hadTurn

# Removes the current players turn tag 
tag @a[tag=turn] remove turn
tag @a remove startFinal

function board:tiles/end
schedule clear board:dice_roll/end_go

execute unless entity @a[tag=ingame,tag=turn] run tag @a[tag=ingame,tag=1st,tag=!hadTurn,limit=1,sort=random] add turn
execute unless entity @a[tag=ingame,tag=turn] run tag @a[tag=ingame,tag=2nd,tag=!hadTurn,limit=1,sort=random] add turn
execute unless entity @a[tag=ingame,tag=turn] run tag @a[tag=ingame,tag=3rd,tag=!hadTurn,limit=1,sort=random] add turn
execute unless entity @a[tag=ingame,tag=turn] run tag @a[tag=ingame,tag=4th,tag=!hadTurn,limit=1,sort=random] add turn

execute as @a[tag=ingame,tag=turn] run function board:dice_roll/start

execute unless entity @a[tag=ingame,tag=turn] run function board:dice_roll/end



# # Checks who to give the turn tag to next
#     # If the player who is 1st has had their turn, but the player who isnt 2nd hasnt then give 2nd the tag
# execute if entity @a[tag=1st,tag=hadTurn] if entity @a[tag=2nd,tag=!hadTurn] run tag @a[tag=2nd,limit=1,sort=random] add turn
#     # If the players who are 1st and 2nd have had their turn, but the player in 3rd hasnt then give 3rd the tag
# execute if entity @a[tag=2nd,tag=hadTurn] if entity @a[tag=3rd,tag=!hadTurn] run tag @a[tag=3rd,limit=1,sort=random] add turn
#     # If the players who are 1st, 2nd and 3rd have had their turn, but the player in 4th hasnt then give 4th the tag
# execute if entity @a[tag=3rd,tag=hadTurn] if entity @a[tag=4th,tag=!hadTurn] run tag @a[tag=4th,limit=1,sort=random] add turn

# If an entity has been given the turn tag, then it runs the start function as them to start the next round
#execute as @a[tag=turn] run function board:dice_roll/start

# If there are no players with the turn tag, and there are players who have had their turn, then that means everyone who can have a turn has so it runs the end function
#execute if entity @a[tag=ingame,tag=hadTurn] unless entity @a[tag=ingame,tag=!hadTurn] run function board:dice_roll/end

# Puts the player who just had their turn back into spectator
gamemode spectator @a[gamemode=!spectator,tag=ingame,tag=!turn]

# Gives weakness to all other players
effect give @a[gamemode=!spectator,tag=ingame,tag=!turn] minecraft:weakness infinite 255 true

# Clears everyones skip coas
clear @a[tag=playing] minecraft:carrot_on_a_stick[minecraft:custom_data={skip:1b}]
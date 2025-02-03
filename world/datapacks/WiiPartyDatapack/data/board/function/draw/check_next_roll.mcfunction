execute if entity @a[tag=drawRoll,tag=!drawRolled] run schedule function board:draw/new_roll 10t
execute unless entity @a[tag=drawRoll,tag=!drawRolled] run schedule function board:draw/all_rolled 1s

scoreboard players set rolling= draw 0
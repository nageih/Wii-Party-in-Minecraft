execute store result score 1st= draw if entity @a[tag=1st]
execute store result score 2nd= draw if entity @a[tag=2nd]
execute store result score 3rd= draw if entity @a[tag=3rd]
execute store result score 4th= draw if entity @a[tag=4th]


scoreboard players set place= draw 0

execute if score place= draw matches 0 if score 1st= draw matches 2.. run scoreboard players set place= draw 1
execute if score place= draw matches 0 if score 2nd= draw matches 2.. run scoreboard players set place= draw 2
execute if score place= draw matches 0 if score 3rd= draw matches 2.. run scoreboard players set place= draw 3
execute if score place= draw matches 0 if score 4th= draw matches 2.. run scoreboard players set place= draw 4

# Failsafe to make sure a player didnt get multiple tags
scoreboard players set fsTotal= draw 0
execute store result score players= draw if entity @a[tag=ingame]
execute store result score fs1st= draw if entity @a[tag=ingame,tag=1st]
execute store result score fs2nd= draw if entity @a[tag=ingame,tag=2nd]
execute store result score fs3rd= draw if entity @a[tag=ingame,tag=3rd]
execute store result score fs4th= draw if entity @a[tag=ingame,tag=4th]
scoreboard players operation fsTotal= draw += fs1st= draw
scoreboard players operation fsTotal= draw += fs2nd= draw
scoreboard players operation fsTotal= draw += fs3rd= draw
scoreboard players operation fsTotal= draw += fs4th= draw
execute if score fsTotal= draw > players= draw run scoreboard players set place= draw -1

# If draw is happening
execute if score place= draw matches 1..4 run effect clear @a[tag=ingame] weakness
execute if score place= draw matches 1..4 run effect give @a[tag=ingame] resistance infinite 255 true
execute if score place= draw matches 1..4 run team modify blue collisionRule always
execute if score place= draw matches 1..4 run team modify red collisionRule always
execute if score place= draw matches 1..4 run team modify green collisionRule always
execute if score place= draw matches 1..4 run team modify orange collisionRule always

execute if score place= draw matches 1 run function board:draw/start {"place":"1st"}
execute if score place= draw matches 2 run function board:draw/start {"place":"2nd"}
execute if score place= draw matches 3 run function board:draw/start {"place":"3rd"}
execute if score place= draw matches 4 run function board:draw/start {"place":"4th"}

execute if score place= draw matches 0 run function board:draw/end
execute if score place= draw matches 0 run function board:dice_roll/begin

execute if score place= draw matches -1 run function board:draw/failsafe

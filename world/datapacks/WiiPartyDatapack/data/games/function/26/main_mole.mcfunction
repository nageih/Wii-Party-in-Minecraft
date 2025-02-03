#   Author        =   @ JevinLevin
#   Description   =   Runs every tick as the mole slime entities
#   Called By     =   games:26/repeat


# Increments the 26mole score, which is how long they have existed for
scoreboard players add @s 26mole 1

# Teleports the mole up for the first half second
tp @s[scores={26mole=..10}] ~ ~.2 ~

# Plays a sound at its location  while its moving up
execute at @s[scores={26mole=5}] run playsound minecraft:block.note_block.flute master @a ~ ~ ~ 2 1

# Stops the mole from getting punched while its moving down
tag @s[scores={26mole=150..}] add invalid

# Starts teleporting the mole down after 7 and a half seconds. Its speed depends on if its hit or not
    # If not hit teleport down slowly
tp @s[tag=!hit,scores={26mole=150..}] ~ ~-.2 ~
    # If hit teleport down fast
tp @s[tag=hit,scores={26mole=150..}] ~ ~-1 ~

# Once the mole is in the ground then it removed the 'moled' tag from the holes AEC, which is used to show that the hole currently has a mole in it
execute at @s[scores={26mole=160..}] run tag @e[type=minecraft:area_effect_cloud,tag=hole,sort=nearest,limit=1] remove moled

execute at @s[scores={26mole=160..}] run kill @e[type=minecraft:armor_stand,tag=mole,sort=nearest,limit=1]

# After 8 seconds kill the mole
tp @s[scores={26mole=160..}] ~ -70 ~
kill @s[scores={26mole=160..}]

# If the mole is punched before it starts moving down, run the mole_hit function
execute if entity @s[type=minecraft:slime,tag=mole,scores={26mole=..149},nbt={HurtTime:10s}] run function games:26/mole_hit
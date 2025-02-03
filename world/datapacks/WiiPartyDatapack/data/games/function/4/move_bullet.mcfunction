# Teleports the bullets in the correct direciton depending on their 4direction score
tp @s[scores={4direction=1}] ~1.25 ~ ~
tp @s[scores={4direction=2}] ~ ~ ~1.25
tp @s[scores={4direction=3}] ~-1.25 ~ ~
tp @s[scores={4direction=4}] ~ ~ ~-1.25

# Increases the bullets 4shoottime score so that it can detect how long its been since the bullet was shot, gets killed once this score hits 40
scoreboard players add @s 4shootTime 1

# Once the bullet has existed for 40 ticks (2 seconds) it is killed
execute if entity @s[scores={4shootTime=40..}] run function games:4/bullet_fail
execute as @s[scores={4direction=1}] unless block ~1 ~ ~ #board:dice_proof run function games:4/bullet_fail
execute as @s[scores={4direction=2}] unless block ~ ~ ~1 #board:dice_proof run function games:4/bullet_fail
execute as @s[scores={4direction=3}] unless block ~-1 ~ ~ #board:dice_proof run function games:4/bullet_fail
execute as @s[scores={4direction=4}] unless block ~ ~ ~-1 #board:dice_proof run function games:4/bullet_fail

# Runs particles at the correct coloured bullet
    # Blue
execute anchored eyes if predicate games:4blue run particle dust{color:[0.000,0.502,1.000],scale:2} ~ ~.75 ~ 0.1 0.1 0.1 100 1 force
    # Red
execute anchored eyes if predicate games:4red run particle dust{color:[1.000,0.000,0.000],scale:2} ~ ~.75 ~ 0.1 0.1 0.1 100 1 force
    # Green
execute anchored eyes if predicate games:4green run particle dust{color:[0.000,1.000,0.000],scale:2} ~ ~.75 ~ 0.1 0.1 0.1 100 1 force
    # Orange
execute anchored eyes if predicate games:4orange run particle dust{color:[1.000,0.800,0.000],scale:2} ~ ~.75 ~ 0.1 0.1 0.1 100 1 force


# Hit detection
# Mark players who cant be hit
tag @a[tag=4dead] add tempImmune
tag @a[tag=4hit] add tempImmune
execute as @s[tag=blue] run tag @a[team=blue] add tempImmune
execute as @s[tag=red] run tag @a[team=red] add tempImmune
execute as @s[tag=green] run tag @a[team=green] add tempImmune
execute as @s[tag=orange] run tag @a[team=orange] add tempImmune


scoreboard players operation dir= 4scores = @s 4direction
execute as @a[tag=!tempImmune,tag=ingame,distance=..1.25] unless score @s 4tempImmune matches 1.. at @s if score @s 4direction = dir= 4scores run function games:4/hit
execute as @a[tag=!tempImmune,tag=ingame,distance=..1.25] unless score @s 4tempImmune matches 1.. at @s unless score @s 4direction = dir= 4scores run function games:4/miss

tag @a remove tempImmune
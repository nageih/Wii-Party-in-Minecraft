
scoreboard players set @s 10axisx 0

# Normalise axis
    scoreboard players operation temp= 10axisy = dy= 10scores
    scoreboard players operation temp= 10axisz = dz= 10scores
    # Get a2 and b2
    scoreboard players operation temp= 10axisy *= temp= 10axisy
    scoreboard players operation temp= 10axisz *= temp= 10axisz
    # Get c2
    scoreboard players operation length= 10scores = temp= 10axisy
    scoreboard players operation length= 10scores += temp= 10axisz
    # Square root to turn c2 into c (which is axis length)

    execute store result storage games:10 sqrt.input.val double 1 run scoreboard players get length= 10scores
    execute store result storage games:10 sqrt.input.scale double 1 run scoreboard players get 1 Numbers
    function games:10/sqrt/calc with storage games:10 sqrt.input
    scoreboard players operation length= 10scores = output sqrt

    # Scale everything by 10000
    scoreboard players operation dy= 10scores *= 10000 Numbers
    scoreboard players operation dz= 10scores *= 10000 Numbers

    # Divide axix by length to normalize
    scoreboard players operation dy= 10scores /= length= 10scores
    scoreboard players operation dz= 10scores /= length= 10scores

scoreboard players operation @s 10axisy = dy= 10scores
scoreboard players operation @s 10axisz = dz= 10scores

# Use 'cross product' instead to rotate in direction of axis
scoreboard players operation temp= 10scores = @s 10axisy
# Swap x and y
scoreboard players operation @s 10axisy = @s 10axisz
scoreboard players operation @s 10axisz = temp= 10scores
# Negate x
scoreboard players operation @s 10axisz *= -1 Numbers

scoreboard players operation @s 10angle = length= 10scores
### Scale rotation angle 
scoreboard players operation @s 10angle *= 50 Numbers

# Store axis in storage
execute store result storage games:10 axis.x double 0.0001 run scoreboard players get @s 10axisx 
execute store result storage games:10 axis.y double 0.0001 run scoreboard players get @s 10axisy
execute store result storage games:10 axis.z double 0.0001 run scoreboard players get @s 10axisz 
execute store result storage games:10 axis.angle double 0.0001 run scoreboard players get @s 10angle 

# Convert axis into a quaternion
function general:math/quat/angle_axis_to_quat with storage games:10 axis

execute store result score @s 10quatw run data get storage general:math quat.w 1000
execute store result score @s 10quatx run data get storage general:math quat.x 1000
execute store result score @s 10quaty run data get storage general:math quat.y 1000
execute store result score @s 10quatz run data get storage general:math quat.z 1000



tag @s add 10spin



# Store quat rotation in storage
execute store result storage games:10 quat.w double 0.005 run scoreboard players get @s 10quatw
execute store result storage games:10 quat.x double 0.005 run scoreboard players get @s 10quatx
execute store result storage games:10 quat.y double 0.005 run scoreboard players get @s 10quaty
execute store result storage games:10 quat.z double 0.005 run scoreboard players get @s 10quatz

# Store current quaternion rotation in storage
execute store result storage general:math base.x double 0.0001 run data get entity @s transformation.left_rotation[0] 10000
execute store result storage general:math base.y double 0.0001 run data get entity @s transformation.left_rotation[1] 10000
execute store result storage general:math base.z double 0.0001 run data get entity @s transformation.left_rotation[2] 10000
execute store result storage general:math base.w double 0.0001 run data get entity @s transformation.left_rotation[3] 10000

# Set storage for old and new quaternion
data modify storage general:math quata set from storage games:10 quat
data modify storage general:math quatb set from storage general:math base

# Multiply quaternions
execute store result score #input_quaternion_1_r math run data get storage general:math quata.w 1000
execute store result score #input_quaternion_1_i math run data get storage general:math quata.x 1000
execute store result score #input_quaternion_1_j math run data get storage general:math quata.y 1000
execute store result score #input_quaternion_1_k math run data get storage general:math quata.z 1000
execute store result score #input_quaternion_2_r math run data get storage general:math quatb.w 1000
execute store result score #input_quaternion_2_i math run data get storage general:math quatb.x 1000
execute store result score #input_quaternion_2_j math run data get storage general:math quatb.y 1000
execute store result score #input_quaternion_2_k math run data get storage general:math quatb.z 1000
function general:math/quat/multiply2
execute store result storage games:10 quat.w double 0.001 run scoreboard players get #output_quaternion_r math
execute store result storage games:10 quat.x double 0.001 run scoreboard players get #output_quaternion_i math
execute store result storage games:10 quat.y double 0.001 run scoreboard players get #output_quaternion_j math
execute store result storage games:10 quat.z double 0.001 run scoreboard players get #output_quaternion_k math

function games:10/spin_can with storage games:10 quat
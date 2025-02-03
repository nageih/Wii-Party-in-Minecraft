# Multiply the second quaternion by the first quaternion twice from either side



execute store result score #input_quaternion_1_r math run data get storage general:math quata.w 1000
execute store result score #input_quaternion_1_i math run data get storage general:math quata.x 1000
execute store result score #input_quaternion_1_j math run data get storage general:math quata.y 1000
execute store result score #input_quaternion_1_k math run data get storage general:math quata.z 1000

execute store result score #input_quaternion_2_r math run data get storage general:math quatb.w 1000
execute store result score #input_quaternion_2_i math run data get storage general:math quatb.x 1000
execute store result score #input_quaternion_2_j math run data get storage general:math quatb.y 1000
execute store result score #input_quaternion_2_k math run data get storage general:math quatb.z 1000

function general:math/quat/multiply2

scoreboard players operation #temp_quaternion_1_r math = #input_quaternion_1_r math
scoreboard players operation #temp_quaternion_1_i math = #input_quaternion_1_i math
scoreboard players operation #temp_quaternion_1_j math = #input_quaternion_1_j math
scoreboard players operation #temp_quaternion_1_k math = #input_quaternion_1_k math
scoreboard players operation #temp_quaternion_2_r math = #input_quaternion_2_r math
scoreboard players operation #temp_quaternion_2_i math = #input_quaternion_2_i math
scoreboard players operation #temp_quaternion_2_j math = #input_quaternion_2_j math
scoreboard players operation #temp_quaternion_2_k math = #input_quaternion_2_k math

scoreboard players operation #input_quaternion_2_r math = #input_quaternion_1_r math
scoreboard players operation #input_quaternion_2_i math = #input_quaternion_1_i math
scoreboard players operation #input_quaternion_2_j math = #input_quaternion_1_j math
scoreboard players operation #input_quaternion_2_k math = #input_quaternion_1_k math
scoreboard players operation #input_quaternion_2_i math *= #-1 math
scoreboard players operation #input_quaternion_2_j math *= #-1 math
scoreboard players operation #input_quaternion_2_k math *= #-1 math

scoreboard players operation #input_quaternion_1_r math = #output_quaternion_r math
scoreboard players operation #input_quaternion_1_i math = #output_quaternion_i math
scoreboard players operation #input_quaternion_1_j math = #output_quaternion_j math
scoreboard players operation #input_quaternion_1_k math = #output_quaternion_k math

function general:math/quat/multiply2

scoreboard players operation #input_quaternion_1_r math = #temp_quaternion_1_r math
scoreboard players operation #input_quaternion_1_i math = #temp_quaternion_1_i math
scoreboard players operation #input_quaternion_1_j math = #temp_quaternion_1_j math
scoreboard players operation #input_quaternion_1_k math = #temp_quaternion_1_k math
scoreboard players operation #input_quaternion_2_r math = #temp_quaternion_2_r math
scoreboard players operation #input_quaternion_2_i math = #temp_quaternion_2_i math
scoreboard players operation #input_quaternion_2_j math = #temp_quaternion_2_j math
scoreboard players operation #input_quaternion_2_k math = #temp_quaternion_2_k math


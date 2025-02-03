# Multiply quaternions

scoreboard players operation #math_quaternion_r math = #input_quaternion_1_r math
scoreboard players operation #math_quaternion_r math *= #input_quaternion_2_r math
scoreboard players operation #math_quaternion_i math = #input_quaternion_1_i math
scoreboard players operation #math_quaternion_i math *= #input_quaternion_2_i math
scoreboard players operation #math_quaternion_j math = #input_quaternion_1_j math
scoreboard players operation #math_quaternion_j math *= #input_quaternion_2_j math
scoreboard players operation #math_quaternion_k math = #input_quaternion_1_k math
scoreboard players operation #math_quaternion_k math *= #input_quaternion_2_k math

scoreboard players operation #output_quaternion_r math = #math_quaternion_r math
scoreboard players operation #output_quaternion_r math -= #math_quaternion_i math
scoreboard players operation #output_quaternion_r math -= #math_quaternion_j math
scoreboard players operation #output_quaternion_r math -= #math_quaternion_k math
scoreboard players operation #output_quaternion_r math /= #1000 math



scoreboard players operation #math_quaternion_r math = #input_quaternion_1_r math
scoreboard players operation #math_quaternion_r math *= #input_quaternion_2_i math
scoreboard players operation #math_quaternion_i math = #input_quaternion_1_i math
scoreboard players operation #math_quaternion_i math *= #input_quaternion_2_r math
scoreboard players operation #math_quaternion_j math = #input_quaternion_1_j math
scoreboard players operation #math_quaternion_j math *= #input_quaternion_2_k math
scoreboard players operation #math_quaternion_k math = #input_quaternion_1_k math
scoreboard players operation #math_quaternion_k math *= #input_quaternion_2_j math

scoreboard players operation #output_quaternion_i math = #math_quaternion_r math
scoreboard players operation #output_quaternion_i math += #math_quaternion_i math
scoreboard players operation #output_quaternion_i math += #math_quaternion_j math
scoreboard players operation #output_quaternion_i math -= #math_quaternion_k math
scoreboard players operation #output_quaternion_i math /= #1000 math



scoreboard players operation #math_quaternion_r math = #input_quaternion_1_r math
scoreboard players operation #math_quaternion_r math *= #input_quaternion_2_j math
scoreboard players operation #math_quaternion_i math = #input_quaternion_1_i math
scoreboard players operation #math_quaternion_i math *= #input_quaternion_2_k math
scoreboard players operation #math_quaternion_j math = #input_quaternion_1_j math
scoreboard players operation #math_quaternion_j math *= #input_quaternion_2_r math
scoreboard players operation #math_quaternion_k math = #input_quaternion_1_k math
scoreboard players operation #math_quaternion_k math *= #input_quaternion_2_i math

scoreboard players operation #output_quaternion_j math = #math_quaternion_r math
scoreboard players operation #output_quaternion_j math -= #math_quaternion_i math
scoreboard players operation #output_quaternion_j math += #math_quaternion_j math
scoreboard players operation #output_quaternion_j math += #math_quaternion_k math
scoreboard players operation #output_quaternion_j math /= #1000 math



scoreboard players operation #math_quaternion_r math = #input_quaternion_1_r math
scoreboard players operation #math_quaternion_r math *= #input_quaternion_2_k math
scoreboard players operation #math_quaternion_i math = #input_quaternion_1_i math
scoreboard players operation #math_quaternion_i math *= #input_quaternion_2_j math
scoreboard players operation #math_quaternion_j math = #input_quaternion_1_j math
scoreboard players operation #math_quaternion_j math *= #input_quaternion_2_i math
scoreboard players operation #math_quaternion_k math = #input_quaternion_1_k math
scoreboard players operation #math_quaternion_k math *= #input_quaternion_2_r math

scoreboard players operation #output_quaternion_k math = #math_quaternion_r math
scoreboard players operation #output_quaternion_k math += #math_quaternion_i math
scoreboard players operation #output_quaternion_k math -= #math_quaternion_j math
scoreboard players operation #output_quaternion_k math += #math_quaternion_k math
scoreboard players operation #output_quaternion_k math /= #1000 math

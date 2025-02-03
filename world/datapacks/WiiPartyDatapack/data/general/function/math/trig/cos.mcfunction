# Transform input

scoreboard players operation #output math = #input math
scoreboard players remove #output math 900
scoreboard players operation #output math %= #1800 math
scoreboard players remove #output math 900







# Compute Bhaskara's approximation

scoreboard players operation #output math *= #output math
scoreboard players operation #math_trigonometry_0 math = #output math
scoreboard players add #math_trigonometry_0 math 3240000
scoreboard players operation #math_trigonometry_0 math /= #1000 math
scoreboard players operation #output math *= #4 math
scoreboard players operation #output math *= #-1 math
scoreboard players add #output math 3240000
scoreboard players operation #output math /= #math_trigonometry_0 math







# Apply sign

scoreboard players operation #math_trigonometry_0 math = #input math
scoreboard players add #math_trigonometry_0 math 900
scoreboard players operation #math_trigonometry_0 math %= #3600 math
execute if score #math_trigonometry_0 math matches 1800.. run scoreboard players operation #output math *= #-1 math
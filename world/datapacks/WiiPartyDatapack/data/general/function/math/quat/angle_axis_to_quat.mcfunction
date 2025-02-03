
$data modify storage general:math axis.x set value $(x)
$data modify storage general:math axis.y set value $(y)
$data modify storage general:math axis.z set value $(z)
$data modify storage general:math axis.angle set value $(angle)

execute store result score halfAngle= math run data get storage general:math axis.angle 10
scoreboard players operation halfAngle= math /= #2 math

scoreboard players operation #input math = halfAngle= math
function general:math/trig/cos
execute store result storage general:math quat.w double 0.001 run scoreboard players get #output math

function general:math/trig/sin
execute store result score sin= math run scoreboard players get #output math


execute store result score x= math run data get storage general:math axis.x 100
execute store result storage general:math quat.x double 0.00001 run scoreboard players operation x= math *= sin= math
execute store result score y= math run data get storage general:math axis.y 100
execute store result storage general:math quat.y double 0.00001 run scoreboard players operation y= math *= sin= math
execute store result score z= math run data get storage general:math axis.z 100
execute store result storage general:math quat.z double 0.00001 run scoreboard players operation z= math *= sin= math
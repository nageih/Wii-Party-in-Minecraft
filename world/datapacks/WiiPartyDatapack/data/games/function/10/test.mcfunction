execute store result storage general:math axis.x double 0.001 run scoreboard players set test= 10scores 0
execute store result storage general:math axis.y double 0.001 run scoreboard players set test= 10scores 00367
execute store result storage general:math axis.z double 0.001 run scoreboard players set test= 10scores 00882
execute store result storage general:math axis.angle double 0.001 run scoreboard players set test= 10scores 34210


execute store result storage general:math testQuat.x double 0.001 run scoreboard players set test= 10scores 00000
execute store result storage general:math testQuat.y double 0.001 run scoreboard players set test= 10scores 00085
execute store result storage general:math testQuat.z double 0.001 run scoreboard players set test= 10scores 00021
execute store result storage general:math testQuat.w double 0.001 run scoreboard players set test= 10scores 00996

function general:math/quat/angle_axis_to_quat with storage general:math axis

data modify storage general:math quata set from storage general:math quat
data modify storage general:math quatb set from storage general:math testQuat

tellraw @a [{"text":"W = "},{"storage":"general:math","nbt":"quata.w"},{"text":"\nX = "},{"storage":"general:math","nbt":"quata.x"},{"text":"\nY = "},{"storage":"general:math","nbt":"quata.y"},{"text":"\nZ = "},{"storage":"general:math","nbt":"quata.z"}]
tellraw @a [{"text":"W = "},{"storage":"general:math","nbt":"quatb.w"},{"text":"\nX = "},{"storage":"general:math","nbt":"quatb.x"},{"text":"\nY = "},{"storage":"general:math","nbt":"quatb.y"},{"text":"\nZ = "},{"storage":"general:math","nbt":"quatb.z"}]


function general:math/quat/multiply1

tellraw @a [{"text":"W = "},{"storage":"general:math","nbt":"quat.w"},{"text":"\nX = "},{"storage":"general:math","nbt":"quat.x"},{"text":"\nY = "},{"storage":"general:math","nbt":"quat.y"},{"text":"\nZ = "},{"storage":"general:math","nbt":"quat.z"}]


#scoreboard players set #input math 550
#function general:math/trig/cos
#tellraw @a [{"score":{"name":"#output","objective":"math"}}]
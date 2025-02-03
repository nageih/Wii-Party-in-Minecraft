
function general:wasd/calc/main_mount

# Ignore multiple inputs
execute if entity @s[tag=local.wasd_a,tag=local.wasd_d] run return fail
execute if entity @s[tag=local.wasd_a,tag=local.wasd_w] run return fail
execute if entity @s[tag=local.wasd_a,tag=local.wasd_s] run return fail
execute if entity @s[tag=local.wasd_d,tag=local.wasd_a] run return fail
execute if entity @s[tag=local.wasd_d,tag=local.wasd_w] run return fail
execute if entity @s[tag=local.wasd_d,tag=local.wasd_s] run return fail
execute if entity @s[tag=local.wasd_w,tag=local.wasd_a] run return fail
execute if entity @s[tag=local.wasd_w,tag=local.wasd_d] run return fail
execute if entity @s[tag=local.wasd_w,tag=local.wasd_s] run return fail
execute if entity @s[tag=local.wasd_s,tag=local.wasd_a] run return fail
execute if entity @s[tag=local.wasd_s,tag=local.wasd_d] run return fail
execute if entity @s[tag=local.wasd_s,tag=local.wasd_w] run return fail

tag @s[tag=local.wasd_a] add 23left
tag @s[tag=local.wasd_d] add 23right
tag @s[tag=local.wasd_w] add 23forward
tag @s[tag=local.wasd_s] add 23forward

# Removes previous tags
execute if entity @s[tag=local.wasd_a,tag=23right,tag=!changed] run function games:23/change_direction {"val":"23right"}
execute if entity @s[tag=local.wasd_a,tag=23forward,tag=!changed] run function games:23/change_direction {"val":"23forward"}

execute if entity @s[tag=local.wasd_d,tag=23left,tag=!changed] run function games:23/change_direction {"val":"23left"}
execute if entity @s[tag=local.wasd_d,tag=23forward,tag=!changed] run function games:23/change_direction {"val":"23forward"}

execute if entity @s[tag=local.wasd_w,tag=23left,tag=!changed] run function games:23/change_direction {"val":"23left"}
execute if entity @s[tag=local.wasd_w,tag=23right,tag=!changed] run function games:23/change_direction {"val":"23right"}
execute if entity @s[tag=local.wasd_s,tag=23left,tag=!changed] run function games:23/change_direction {"val":"23left"}
execute if entity @s[tag=local.wasd_s,tag=23right,tag=!changed] run function games:23/change_direction {"val":"23right"}

tag @s remove changed
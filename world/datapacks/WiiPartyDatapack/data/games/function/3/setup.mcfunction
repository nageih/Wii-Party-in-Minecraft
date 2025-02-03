# If the right coloured player exists, then it summons an area effect cloud for their booth on both sides. Used for summoning the barrels and playing sounds
execute if entity @a[tag=ingame,team=blue] run summon minecraft:area_effect_cloud 3006 34 2982 {Age:-2147483648,Duration:-1,WaitTime:-2147483648,Tags:["2chain","blue"]}
execute if entity @a[tag=ingame,team=blue] run summon minecraft:area_effect_cloud 3006 34 3003 {Age:-2147483648,Duration:-1,WaitTime:-2147483648,Tags:["2chain","blue"]}
execute if entity @a[tag=ingame,team=red] run summon minecraft:area_effect_cloud 3002 34 2982 {Age:-2147483648,Duration:-1,WaitTime:-2147483648,Tags:["2chain","red"]}
execute if entity @a[tag=ingame,team=red] run summon minecraft:area_effect_cloud 3002 34 3003 {Age:-2147483648,Duration:-1,WaitTime:-2147483648,Tags:["2chain","red"]}
execute if entity @a[tag=ingame,team=green] run summon minecraft:area_effect_cloud 2998 34 2982 {Age:-2147483648,Duration:-1,WaitTime:-2147483648,Tags:["2chain","green"]}
execute if entity @a[tag=ingame,team=green] run summon minecraft:area_effect_cloud 2998 34 3003 {Age:-2147483648,Duration:-1,WaitTime:-2147483648,Tags:["2chain","green"]}
execute if entity @a[tag=ingame,team=orange] run summon minecraft:area_effect_cloud 2994 34 2982 {Age:-2147483648,Duration:-1,WaitTime:-2147483648,Tags:["2chain","orange"]}
execute if entity @a[tag=ingame,team=orange] run summon minecraft:area_effect_cloud 2994 34 3003 {Age:-2147483648,Duration:-1,WaitTime:-2147483648,Tags:["2chain","orange"]}

# Runs the function to set the original chains and barrels at the start
function games:3/set_barrels

function games:3/summon_buttons
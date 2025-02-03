execute if entity @s[team=blue] run summon minecraft:magma_cube 19163.0 41 19160.0 {Health:10000.0f,Size:14,NoAI:1b,Silent:1b,Tags:["blue","game18"],active_effects:[{id:"minecraft:invisibility",amplifier:127b,duration:1000000,show_particles:0b},{id:"minecraft:regeneration",amplifier:1b,duration:1000000,show_particles:0b}]}
execute if entity @s[team=red] run summon minecraft:magma_cube 19163.0 41 19150.0 {Health:10000.0f,Size:14,NoAI:1b,Silent:1b,Tags:["red","game18"],active_effects:[{id:"minecraft:invisibility",amplifier:127b,duration:1000000,show_particles:0b},{id:"minecraft:regeneration",amplifier:1b,duration:1000000,show_particles:0b}]}
execute if entity @s[team=green] run summon minecraft:magma_cube 19153.0 41 19150.0 {Health:10000.0f,Size:14,NoAI:1b,Silent:1b,Tags:["green","game18"],active_effects:[{id:"minecraft:invisibility",amplifier:127b,duration:1000000,show_particles:0b},{id:"minecraft:regeneration",amplifier:1b,duration:1000000,show_particles:0b}]}
execute if entity @s[team=orange] run summon minecraft:magma_cube 19153.0 41 19160.0 {Health:10000.0f,Size:14,NoAI:1b,Silent:1b,Tags:["orange","game18"],active_effects:[{id:"minecraft:invisibility",amplifier:127b,duration:1000000,show_particles:0b},{id:"minecraft:regeneration",amplifier:1b,duration:1000000,show_particles:0b}]}

#team join noCollision @e[type=magma_cube,tag=game18]

#execute as @a[tag=ingame,tag=playing] run function games:18/controls/renewmagma_cube
#schedule function games:18/setup2 1s
execute if entity @s[tag=blue] run scoreboard players remove @a[team=blue] 10score 2
execute if entity @s[tag=red] run scoreboard players remove @a[team=red] 10score 2
execute if entity @s[tag=green] run scoreboard players remove @a[team=green] 10score 2
execute if entity @s[tag=orange] run scoreboard players remove @a[team=orange] 10score 2

tag @s remove 10air

execute if entity @s[tag=blue] run summon text_display ~ ~ ~ {interpolation_duration:1,billboard:"vertical",text_opacity:255,teleport_duration:1,shadow:1b,alignment:"center",Tags:["10score"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[2f,2f,2f]},text:'{"bold":true,"color":"#0088ff","text":"-2"}',background:16777216}
execute if entity @s[tag=red] run summon text_display ~ ~ ~ {interpolation_duration:1,billboard:"vertical",text_opacity:255,teleport_duration:1,shadow:1b,alignment:"center",Tags:["10score"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[2f,2f,2f]},text:'{"bold":true,"color":"red","text":"-2"}',background:16777216}
execute if entity @s[tag=green] run summon text_display ~ ~ ~ {interpolation_duration:1,billboard:"vertical",text_opacity:255,teleport_duration:1,shadow:1b,alignment:"center",Tags:["10score"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[2f,2f,2f]},text:'{"bold":true,"color":"green","text":"-2"}',background:16777216}
execute if entity @s[tag=orange] run summon text_display ~ ~ ~ {interpolation_duration:1,billboard:"vertical",text_opacity:255,teleport_duration:1,shadow:1b,alignment:"center",Tags:["10score"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[2f,2f,2f]},text:'{"bold":true,"color":"gold","text":"-2"}',background:16777216}


execute if entity @s[tag=blue] as @a[team=blue] at @s run playsound block.note_block.didgeridoo master @s
execute if entity @s[tag=red] as @a[team=red] at @s run playsound block.note_block.didgeridoo master @s
execute if entity @s[tag=green] as @a[team=green] at @s run playsound block.note_block.didgeridoo master @s
execute if entity @s[tag=orange] as @a[team=orange] at @s run playsound block.note_block.didgeridoo master @s

function games:10/display

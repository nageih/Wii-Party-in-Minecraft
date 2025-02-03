# Apply motion and torque
scoreboard players set hit= 10scores 1

summon marker ~ ~ ~ {Tags:["10temphit"]}
execute at @s run summon marker ~ ~.333 ~ {Tags:["10tempcentre"]}

#execute at @e[tag=10tempcentre] run particle flame ~-1 ~ ~ 0 0 0 0 1 force


execute store result score z= 10scores run data get entity @e[type=marker,tag=10tempcentre,limit=1] Pos[2] 10000
execute store result score dz= 10scores run data get entity @e[type=marker,tag=10temphit,limit=1] Pos[2] 10000
execute store result score y= 10scores run data get entity @e[type=marker,tag=10tempcentre,limit=1] Pos[1] 10000
execute store result score dy= 10scores run data get entity @e[type=marker,tag=10temphit,limit=1] Pos[1] 10000

scoreboard players operation dz= 10scores -= z= 10scores
scoreboard players operation dy= 10scores -= y= 10scores

execute as @e[type=armor_stand,tag=10tempcan] store result entity @s Motion[2] double 0.000125 run scoreboard players get dz= 10scores

execute as @e[type=armor_stand,tag=10tempcan] run data modify entity @s Motion[1] set value 0.5d


execute as @e[type=item_display,tag=10tempcan] at @s run function games:10/start_spin_can

kill @e[type=marker,tag=10temphit]
kill @e[type=marker,tag=10tempcentre]

tag @s add 10air

# Add score
execute if entity @s[tag=blue] run summon text_display ~ ~ ~ {interpolation_duration:1,billboard:"vertical",text_opacity:255,teleport_duration:1,shadow:1b,alignment:"center",Tags:["10score"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[2f,2f,2f]},text:'{"bold":true,"color":"#0088ff","text":"+1"}',background:16777216}
execute if entity @s[tag=red] run summon text_display ~ ~ ~ {interpolation_duration:1,billboard:"vertical",text_opacity:255,teleport_duration:1,shadow:1b,alignment:"center",Tags:["10score"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[2f,2f,2f]},text:'{"bold":true,"color":"red","text":"+1"}',background:16777216}
execute if entity @s[tag=green] run summon text_display ~ ~ ~ {interpolation_duration:1,billboard:"vertical",text_opacity:255,teleport_duration:1,shadow:1b,alignment:"center",Tags:["10score"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[2f,2f,2f]},text:'{"bold":true,"color":"green","text":"+1"}',background:16777216}
execute if entity @s[tag=orange] run summon text_display ~ ~ ~ {interpolation_duration:1,billboard:"vertical",text_opacity:255,teleport_duration:1,shadow:1b,alignment:"center",Tags:["10score"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[2f,2f,2f]},text:'{"bold":true,"color":"gold","text":"+1"}',background:16777216}

execute if entity @s[tag=blue] run scoreboard players add @a[team=blue] 10score 1
execute if entity @s[tag=red] run scoreboard players add @a[team=red] 10score 1
execute if entity @s[tag=green] run scoreboard players add @a[team=green] 10score 1
execute if entity @s[tag=orange] run scoreboard players add @a[team=orange] 10score 1

execute if entity @s[tag=blue] as @a[team=blue] at @s run playsound entity.experience_orb.pickup master @s ~ ~ ~ 1 1.5
execute if entity @s[tag=red] as @a[team=red] at @s run playsound entity.experience_orb.pickup master @s ~ ~ ~ 1 1.5
execute if entity @s[tag=green] as @a[team=green] at @s run playsound entity.experience_orb.pickup master @s ~ ~ ~ 1 1.5
execute if entity @s[tag=orange] as @a[team=orange] at @s run playsound entity.experience_orb.pickup master @s ~ ~ ~ 1 1.5


scoreboard players reset @s 10airdelay

function games:10/display

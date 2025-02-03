scoreboard players set dragonAlive= tiles 1
function board:tiles/dragonwall/stages/reset

scoreboard players set spikeAlive= tiles 1
scoreboard players set spikeRoll= tiles 5
fill -156 27 99 -156 25 97 iron_bars
tp @e[type=elder_guardian,tag=spikeBall] 0 -1000 0
kill @e[type=elder_guardian,tag=spikeBall]
summon elder_guardian -156.0 26 95.0 {NoGravity:1b,Silent:1b,Invulnerable:1b,Tags:["spikeBall"],PersistenceRequired:1b}
summon elder_guardian -156.0 26 102.0 {NoGravity:1b,Silent:1b,Invulnerable:1b,Tags:["spikeBall"],PersistenceRequired:1b}
function board:tiles/spikeball/setdisplay

# Resummon party phil
kill @e[type=armor_stand,tag=partyphil]
kill @e[type=text_display,tag=partyphil]
summon armor_stand -198 57 56 {Invulnerable:1b,Invisible:1b,Tags:["partyphil"],DisabledSlots:4144959,Rotation:[-90F,0F],ArmorItems:[{},{},{},{id:"minecraft:carrot_on_a_stick",count:1,components:{"minecraft:custom_model_data":10}}]}
summon text_display -197.5 59.75 56 {alignment:"center", billboard:"vertical", default_background:0b,shadow:1b,Rotation:[-90F,0F],Tags:["partyphil"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[1.25f,1.25f,1.25f]},text:'{"bold":true,"color":"light_purple","translate":"advancements.island.phil"}',background:0}
summon text_display -200 61 56 {alignment:"center",default_background:0b,shadow:1b,Rotation:[-90F,0F],Tags:["partyphil"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[7f,7f,7f]},text:'{"bold":true,"color":"green","text":"6"}',background:0}
function board:tiles/final/stages/reset
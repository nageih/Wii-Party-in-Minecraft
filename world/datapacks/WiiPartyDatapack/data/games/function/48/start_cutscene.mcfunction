scoreboard players set ingame= 48scores 3

clear @a[tag=ingame] carrot_on_a_stick

function games:48/set_signs

summon item_display 48992 20 49132 {NoGravity:1b,start_interpolation:-1,teleport_duration:1,Tags:["48cutscene"]}

gamemode spectator @a[tag=ingame]

scoreboard players set cutscene= 48scores 0

# Enable movement
execute as @a[tag=ingame] run attribute @s minecraft:generic.movement_speed base set 0.1
execute as @a[tag=ingame] run attribute @s minecraft:generic.jump_strength base set 0.41999998688697815

# Place line showing target
execute store result storage game48 target double 1 run scoreboard players get distance= 48scores
execute positioned 48994 16 49132 run function games:48/place_line with storage game48

# Place player armor stands
execute as @a[tag=ingame,team=blue,limit=1] run function games:48/place_player
execute as @a[tag=ingame,team=red,limit=1] run function games:48/place_player
execute as @a[tag=ingame,team=green,limit=1] run function games:48/place_player
execute as @a[tag=ingame,team=orange,limit=1] run function games:48/place_player
function games:48/set_heads

#   Author        =   @ JevinLevin
#   Description   =   Ran as a mole when it is hit
#   Called By     =   games:26/player


# Stop the mole getting hit again
data merge entity @s {Invulnerable:1b}

# Sets their timer to 150, which will make them start moving down
scoreboard players set @s 26mole 150

# Shows that the mole has been punched
tag @s add hit

# Stops the mole from getting punched and hit animationed from players
tag @s add invalid

# Displays particles and sounds depending on the mole type. The sounds only play for the player who hit the mole
    # Normal
execute at @s[tag=!golden,tag=!sus] run playsound minecraft:entity.experience_orb.pickup master @a[tag=tempHit] ~ ~ ~ 2 0
execute at @s[tag=!golden,tag=!sus] run particle minecraft:happy_villager ~ ~.5 ~ 0.5 0.5 0.5 1 15 force
    # Golden
execute at @s[tag=golden] run playsound minecraft:entity.player.levelup master @a[tag=tempHit] ~ ~ ~ 2 1.25
execute at @s[tag=golden] run particle minecraft:end_rod ~ ~.5 ~ 0.25 0.25 0.25 0.1 25 force

execute at @s[tag=sus] run playsound entity.generic.explode master @a[tag=tempHit] ~ ~ ~ 2 1.75
execute at @s[tag=sus] run particle minecraft:angry_villager ~ ~.5 ~ 1 1 1 0.1 10 force

# For everyone else who didnt hit the mole a different sound
playsound minecraft:item.shield.block master @a[tag=!tempHit] ~ ~ ~ 2 0

# Summons an armor stand that display the points gained using a custom font. Its colour will depend on the players team. Their name is invisible at first to avoid a visual bug
    # Blue
execute at @s[tag=!golden,tag=!sus] if entity @a[tag=ingame,tag=tempHit,sort=nearest,limit=1,team=blue] run summon minecraft:text_display ~ ~1 ~ {NoGravity:1b,billboard:"vertical",interpolation_duration:1,teleport_duration:1,text_opacity:255,shadow:1b,alignment:"center",Tags:["points"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[2.5f,2.5f,.25f]},text:'{"bold":true,"color":"#0088ff","text":"+1"}',background:16711680}
execute at @s[tag=golden] if entity @a[tag=ingame,tag=tempHit,sort=nearest,limit=1,team=blue] run summon minecraft:text_display ~ ~1 ~ {NoGravity:1b,billboard:"vertical",interpolation_duration:1,teleport_duration:1,text_opacity:255,shadow:1b,alignment:"center",Tags:["points"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[2.5f,2.5f,.25f]},text:'{"bold":true,"color":"#0088ff","text":"+3"}',background:16711680}
execute at @s[tag=sus] if entity @a[tag=ingame,tag=tempHit,sort=nearest,limit=1,team=blue] run summon minecraft:text_display ~ ~1 ~ {NoGravity:1b,billboard:"vertical",interpolation_duration:1,teleport_duration:1,text_opacity:255,shadow:1b,alignment:"center",Tags:["points"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[2.5f,2.5f,.25f]},text:'{"bold":true,"color":"#0088ff","text":"-3"}',background:16711680}
    # Red
execute at @s[tag=!golden,tag=!sus] if entity @a[tag=ingame,tag=tempHit,sort=nearest,limit=1,team=red] run summon minecraft:text_display ~ ~1 ~ {NoGravity:1b,billboard:"vertical",interpolation_duration:1,teleport_duration:1,text_opacity:255,shadow:1b,alignment:"center",Tags:["points"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[2.5f,2.5f,.25f]},text:'{"bold":true,"color":"red","text":"+1"}',background:16711680}
execute at @s[tag=golden] if entity @a[tag=ingame,tag=tempHit,sort=nearest,limit=1,team=red] run summon minecraft:text_display ~ ~1 ~ {NoGravity:1b,billboard:"vertical",interpolation_duration:1,teleport_duration:1,text_opacity:255,shadow:1b,alignment:"center",Tags:["points"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[2.5f,2.5f,.25f]},text:'{"bold":true,"color":"red","text":"+3"}',background:16711680}
execute at @s[tag=sus] if entity @a[tag=ingame,tag=tempHit,sort=nearest,limit=1,team=red] run summon minecraft:text_display ~ ~1 ~ {NoGravity:1b,billboard:"vertical",interpolation_duration:1,teleport_duration:1,text_opacity:255,shadow:1b,alignment:"center",Tags:["points"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[2.5f,2.5f,.25f]},text:'{"bold":true,"color":"red","text":"-3"}',background:16711680}
    # Green
execute at @s[tag=!golden,tag=!sus] if entity @a[tag=ingame,tag=tempHit,sort=nearest,limit=1,team=green] run summon minecraft:text_display ~ ~1 ~ {NoGravity:1b,billboard:"vertical",interpolation_duration:1,teleport_duration:1,text_opacity:255,shadow:1b,alignment:"center",Tags:["points"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[2.5f,2.5f,.25f]},text:'{"bold":true,"color":"green","text":"+1"}',background:16711680}
execute at @s[tag=golden] if entity @a[tag=ingame,tag=tempHit,sort=nearest,limit=1,team=green] run summon minecraft:text_display ~ ~1 ~ {NoGravity:1b,billboard:"vertical",interpolation_duration:1,teleport_duration:1,text_opacity:255,shadow:1b,alignment:"center",Tags:["points"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[2.5f,2.5f,.25f]},text:'{"bold":true,"color":"green","text":"+3"}',background:16711680}
execute at @s[tag=sus] if entity @a[tag=ingame,tag=tempHit,sort=nearest,limit=1,team=green] run summon minecraft:text_display ~ ~1 ~ {NoGravity:1b,billboard:"vertical",interpolation_duration:1,teleport_duration:1,text_opacity:255,shadow:1b,alignment:"center",Tags:["points"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[2.5f,2.5f,.25f]},text:'{"bold":true,"color":"green","text":"-3"}',background:16711680}
    # Orange
execute at @s[tag=!golden,tag=!sus] if entity @a[tag=ingame,tag=tempHit,sort=nearest,limit=1,team=orange] run summon minecraft:text_display ~ ~1 ~ {NoGravity:1b,billboard:"vertical",interpolation_duration:1,teleport_duration:1,text_opacity:255,shadow:1b,alignment:"center",Tags:["points"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[2.5f,2.5f,.25f]},text:'{"bold":true,"color":"gold","text":"+1"}',background:16711680}
execute at @s[tag=golden] if entity @a[tag=ingame,tag=tempHit,sort=nearest,limit=1,team=orange] run summon minecraft:text_display ~ ~1 ~ {NoGravity:1b,billboard:"vertical",interpolation_duration:1,teleport_duration:1,text_opacity:255,shadow:1b,alignment:"center",Tags:["points"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[2.5f,2.5f,.25f]},text:'{"bold":true,"color":"gold","text":"+3"}',background:16711680}
execute at @s[tag=sus] if entity @a[tag=ingame,tag=tempHit,sort=nearest,limit=1,team=orange] run summon minecraft:text_display ~ ~1 ~ {NoGravity:1b,billboard:"vertical",interpolation_duration:1,teleport_duration:1,text_opacity:255,shadow:1b,alignment:"center",Tags:["points"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[2.5f,2.5f,.25f]},text:'{"bold":true,"color":"gold","text":"-3"}',background:16711680}

# Removes the player who hit the mole's temporary tag
tag @a[tag=ingame,tag=tempHit,sort=nearest,limit=1] remove tempHit

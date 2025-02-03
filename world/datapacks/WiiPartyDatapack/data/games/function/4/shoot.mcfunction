#   Author        =   @ JevinLevin
#   Description   =   If the player right clicks, spawns a bullet in the direction the player is facing
#   Called By     =   games:4/player


# Spawns the bullet armor stand slightly above
execute as @s[team=blue] run summon minecraft:block_display ~-.25 ~.75 ~-.25 {NoGravity:1b,Silent:1b,Invulnerable:1b,Tags:["4shot","tempshoot","blue"],block_state:{Name:"minecraft:light_blue_concrete"},transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.5f,0.5f,0.5f]},teleport_duration:1}
execute as @s[team=red] run summon minecraft:block_display ~-.25 ~.75 ~-.25 {NoGravity:1b,Silent:1b,Invulnerable:1b,Tags:["4shot","tempshoot","red"],block_state:{Name:"minecraft:red_concrete"},transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.5f,0.5f,0.5f]},teleport_duration:1}
execute as @s[team=green] run summon minecraft:block_display ~-.25 ~.75 ~-.25 {NoGravity:1b,Silent:1b,Invulnerable:1b,Tags:["4shot","tempshoot","green"],block_state:{Name:"minecraft:lime_concrete"},transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.5f,0.5f,0.5f]},teleport_duration:1}
execute as @s[team=orange] run summon minecraft:block_display ~-.25 ~.75 ~-.25 {NoGravity:1b,Silent:1b,Invulnerable:1b,Tags:["4shot","tempshoot","orange"],block_state:{Name:"minecraft:yellow_concrete"},transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.5f,0.5f,0.5f]},teleport_duration:1}

scoreboard players operation @e[type=minecraft:block_display,tag=tempshoot] 4direction = @s 4direction

tag @e[type=minecraft:block_display,tag=tempshoot] remove tempshoot

# Plays whoosh sound for all players
playsound minecraft:entity.illusioner.cast_spell master @a ~ ~ ~ 3 2
playsound block.note_block.bit master @s ~ ~ ~ 1 0.75

scoreboard players set @s[tag=!4super] 4shootCooldown 20
scoreboard players set @s[tag=4super] 4shootCooldown 5

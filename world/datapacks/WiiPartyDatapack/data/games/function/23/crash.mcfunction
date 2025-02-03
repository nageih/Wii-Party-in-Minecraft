execute as @p[tag=!dead] run function games:23/death_messages
tag @p[tag=ingame] add dead
gamemode spectator @p

playsound entity.generic.explode master @a ~ ~ ~ 2 0.75

particle explosion_emitter ~ ~ ~ 1 1 1 0.5 1 force


# Set new first or last cart
execute if entity @s[tag=23first] run tag @e[tag=!23first,type=minecart,tag=23cart,sort=nearest,limit=1] add 23first
tag @s[tag=23first] remove 23first
execute if entity @s[tag=23last] run tag @e[tag=!23last,type=minecart,tag=23cart,sort=nearest,limit=1] add 23last
# End the phase if the last cart dies
execute if entity @s[tag=23last] run function games:23/end_phase
tag @s[tag=23last] remove 23last


kill @e[type=item_display,tag=23cart,sort=nearest,limit=1]
kill @s


execute store result score alive= 23scores if entity @a[tag=ingame,tag=!dead]
execute if score alive= 23scores matches 0 run function games:23/endgame

function games:23/display
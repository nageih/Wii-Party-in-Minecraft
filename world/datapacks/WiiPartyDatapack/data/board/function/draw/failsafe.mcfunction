tellraw @a[tag=playing] {"translate":"board.Draw.Failsafe","color":"gray","bold":true}
execute as @a[tag=playing] at @s run playsound block.note_block.didgeridoo master @s ~ ~ ~

function general:reset_tags

tag @r[tag=ingame] add 1st
tag @r[tag=ingame,tag=!1st] add 2nd
tag @r[tag=ingame,tag=!1st,tag=!2nd] add 3rd
tag @r[tag=ingame,tag=!1st,tag=!2nd,tag=!3rd] add 4th

function general:placements

schedule function board:draw/end 5s
schedule function board:dice_roll/begin 5s
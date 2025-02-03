$team join $(team)

$tellraw @a {"translate":"lobby.Teams.Joined","color":"gray","with":[{"selector":"@s"},{"translate":"generic.$(team)","color":"$(color)"}]} 
playsound block.note_block.chime master @s ~ ~ ~ 10 1

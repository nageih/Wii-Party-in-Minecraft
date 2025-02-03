$tellraw @s {"translate":"$(translate)","color":"gray","with":[{"translate":"generic.$(team)","color":"$(color)"}]} 
playsound block.note_block.didgeridoo master @s ~ ~ ~ 10 1

tag @s add teamJoinFail
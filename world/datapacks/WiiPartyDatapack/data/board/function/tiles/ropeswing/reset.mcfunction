scoreboard players reset swinging tiles
scoreboard players reset ropeswing= tiles
scoreboard players reset addResult= tiles
scoreboard players set eventRoll= tiles 0

kill @e[type=armor_stand,tag=ropestand]
kill @e[type=armor_stand,tag=ropeposition]

schedule clear board:tiles/ropeswing/end
#schedule clear board:dice_roll/end_go

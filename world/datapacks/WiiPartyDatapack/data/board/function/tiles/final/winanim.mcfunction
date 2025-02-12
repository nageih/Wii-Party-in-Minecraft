scoreboard players add wintimer= tiles 1

execute if score wintimer= tiles matches 40 at @e[type=armor_stand,tag=partyphil] run particle minecraft:sweep_attack ~1 ~1.5 ~ 0.5 1 0.5 0 1 force
execute if score wintimer= tiles matches 40 at @e[type=armor_stand,tag=partyphil] run playsound minecraft:entity.player.attack.strong master @a ~ ~ ~ 1 1


execute if score wintimer= tiles matches 60 at @e[type=armor_stand,tag=partyphil] run particle minecraft:sweep_attack ~1 ~1.5 ~ 0.5 1 0.5 0 3 force
execute if score wintimer= tiles matches 60 at @e[type=armor_stand,tag=partyphil] run playsound minecraft:entity.player.attack.knockback master @a ~ ~ ~ 1 1


execute if score wintimer= tiles matches 80 at @e[type=armor_stand,tag=partyphil] run particle minecraft:sweep_attack ~1 ~1.5 ~ 0.5 1 0.5 0 8 force
execute if score wintimer= tiles matches 80 at @e[type=armor_stand,tag=partyphil] run playsound minecraft:entity.player.attack.crit master @a ~ ~ ~ 1 1

execute if score wintimer= tiles matches 100 at @e[type=armor_stand,tag=partyphil] run particle minecraft:explosion_emitter ~1 ~1.5 ~ 0.5 1 0.5 0 3 force
execute if score wintimer= tiles matches 100 at @e[type=armor_stand,tag=partyphil] run playsound minecraft:entity.generic.explode master @a ~ ~ ~ 1 0.5

execute if score wintimer= tiles matches 103 run kill @e[tag=partyphil]

execute if score wintimer= tiles matches 140 positioned -202 55 56 run function board:tiles/final/stages/set {"pitch":"1"}
execute if score wintimer= tiles matches 143 positioned -202 56 56 run function board:tiles/final/stages/set {"pitch":"1.05"}
execute if score wintimer= tiles matches 146 positioned -202 57 56 run function board:tiles/final/stages/set {"pitch":"1.1"}
execute if score wintimer= tiles matches 149 positioned -202 58 56 run function board:tiles/final/stages/set {"pitch":"1.15"}
execute if score wintimer= tiles matches 152 positioned -202 59 56 run function board:tiles/final/stages/set {"pitch":"1.2"}
execute if score wintimer= tiles matches 155 positioned -202 60 56 run function board:tiles/final/stages/set {"pitch":"1.25"}
execute if score wintimer= tiles matches 158 positioned -202 61 56 run function board:tiles/final/stages/set {"pitch":"1.3"}
execute if score wintimer= tiles matches 161 positioned -202 62 56 run function board:tiles/final/stages/set {"pitch":"1.35"}

execute if score wintimer= tiles matches 181 run function board:tiles/final/play_song



execute positioned -222 53 56 as @a[tag=turn,distance=..7] run function board:tiles/final/complete
scoreboard players set @a[tag=ingame] 6canwhack 0
scoreboard players set @a[tag=ingame] 6stamina 100
scoreboard players set cooldown1 6scores 0
scoreboard players set cooldown2 6scores 0
scoreboard players set cooldown3 6scores 0

title @a[tag=playing] title ""
title @a[team=blue] subtitle {"nbt":"colors.blue","storage":"minecraft:config","interpret":true,"extra":[{"translate":"generic.Go","bold":true}],"source":"storage","type":"nbt"}
title @a[team=red] subtitle {"nbt":"colors.red","storage":"minecraft:config","interpret":true,"extra":[{"translate":"generic.Go","bold":true}],"source":"storage","type":"nbt"}
title @a[team=green] subtitle {"nbt":"colors.green","storage":"minecraft:config","interpret":true,"extra":[{"translate":"generic.Go","bold":true}],"source":"storage","type":"nbt"}
title @a[team=orange] subtitle {"nbt":"colors.orange","storage":"minecraft:config","interpret":true,"extra":[{"translate":"generic.Go","bold":true}],"source":"storage","type":"nbt"}
title @a[tag=playing,tag=!ingame] subtitle {"nbt":"colors.spectator","storage":"minecraft:config","interpret":true,"extra":[{"translate":"generic.Go","bold":true}],"source":"storage","type":"nbt"}

execute as @a[tag=playing] at @s run playsound minecraft:block.note_block.pling master @a ~ ~ ~ 1 2
execute as @a[tag=playing] at @s run playsound ouo:start master @s ~ ~ ~ 3 1

fill 6039 15 5974 6039 14 5984 minecraft:air replace minecraft:barrier
fill 6039 13 5974 6039 13 5975 minecraft:air
fill 6039 13 5977 6039 13 5978 minecraft:air
fill 6039 13 5980 6039 13 5981 minecraft:air
fill 6039 13 5983 6039 13 5984 minecraft:air
bossbar set minecraft:6bluestamina players @a[team=blue]
bossbar set minecraft:6redstamina players @a[team=red]
bossbar set minecraft:6greenstamina players @a[team=green]
bossbar set minecraft:6orangestamina players @a[team=orange]
bossbar set minecraft:6bluestamina visible true
bossbar set minecraft:6redstamina visible true
bossbar set minecraft:6greenstamina visible true
bossbar set minecraft:6orangestamina visible true
bossbar set minecraft:6bluestamina name {"translate":"game.DerbyDash.Stamina","color":"#0088ff","bold":true}
bossbar set minecraft:6redstamina name {"translate":"game.DerbyDash.Stamina","color":"red","bold":true}
bossbar set minecraft:6greenstamina name {"translate":"game.DerbyDash.Stamina","color":"green","bold":true}
bossbar set minecraft:6orangestamina name {"translate":"game.DerbyDash.Stamina","color":"gold","bold":true}
summon minecraft:firework_rocket 6036 14 5972 {LifeTime:30,FireworksItem:{id:"minecraft:firework_rocket",components:{"minecraft:fireworks":{explosions:[{shape:"star",colors:[I;16731469,16764766,16775787,7536494,8450815,12095487,16555263],has_trail:1b,has_twinkle:1b}]}},count:1}}
summon minecraft:firework_rocket 6026 14 5972 {LifeTime:30,FireworksItem:{id:"minecraft:firework_rocket",components:{"minecraft:fireworks":{explosions:[{shape:"star",colors:[I;16731469,16764766,16775787,7536494,8450815,12095487,16555263],has_trail:1b,has_twinkle:1b}]}},count:1}}
summon minecraft:firework_rocket 6036 14 5986 {LifeTime:30,FireworksItem:{id:"minecraft:firework_rocket",components:{"minecraft:fireworks":{explosions:[{shape:"star",colors:[I;16731469,16764766,16775787,7536494,8450815,12095487,16555263],has_trail:1b,has_twinkle:1b}]}},count:1}}
summon minecraft:firework_rocket 6026 14 5986 {LifeTime:30,FireworksItem:{id:"minecraft:firework_rocket",components:{"minecraft:fireworks":{explosions:[{shape:"star",colors:[I;16731469,16764766,16775787,7536494,8450815,12095487,16555263],has_trail:1b,has_twinkle:1b}]}},count:1}}

scoreboard players set ingame 6scores 2

execute as @a[tag=playing] at @s run playsound music:back_attack_derby_dash voice @s
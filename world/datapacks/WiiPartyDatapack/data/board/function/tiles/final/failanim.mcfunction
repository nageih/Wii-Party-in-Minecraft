gamemode spectator @a[tag=turn]

execute at @a[tag=turn] run particle minecraft:gust ~ ~ ~ 1 2 1 0.5 10
execute at @a[tag=turn] run particle minecraft:raid_omen ~ ~ ~ 1 1 1 0.5 25

execute at @a[tag=turn] run playsound entity.player.attack.crit master @a ~ ~ ~ 1 0.75
execute at @a[tag=turn] run playsound entity.lightning_bolt.impact master @a ~ ~ ~ 1 2
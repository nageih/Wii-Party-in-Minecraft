function games:10/start_raycast

playsound entity.generic.explode master @a ~ ~ ~ 0.5 2

execute anchored eyes run particle minecraft:smoke ^-.275 ^-.1 ^.3
execute anchored eyes run particle minecraft:firework ^-.275 ^-.1 ^.3
#execute anchored eyes run particle minecraft:lava ^-.2 ^-.2 ^.3

scoreboard players set @s 10cooldown 5
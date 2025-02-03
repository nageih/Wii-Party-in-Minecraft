particle minecraft:explosion_emitter -156.0 26 95.0
particle minecraft:explosion_emitter -156.0 26 95.0
particle minecraft:flame -156 26 98 2 2 2 0 100
particle minecraft:campfire_cosy_smoke -156 26 98 2 2 2 0 50
kill @e[type=elder_guardian,tag=spikeBall]
fill -156 27 99 -156 25 97 air destroy
playsound entity.generic.explode master @a -156 26 98 3 0.75
kill @e[type=text_display,tag=spikeBall]
execute if entity @e[type=glow_item_frame,distance=...25,tag=23rail] run return fail

$summon glow_item_frame ~ ~ ~ {Tags:["23rail"],Facing:1b,ItemRotation:$(y)b,Invulnerable:1b,Invisible:1b,Fixed:1b,Item:{id:"minecraft:rail",count:1,components:{"minecraft:custom_model_data":$(x)}}}
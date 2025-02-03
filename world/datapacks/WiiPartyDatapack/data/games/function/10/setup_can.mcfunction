execute if entity @s[tag=blue] run summon magma_cube ~ ~ ~ {Tags:["10hitbox","blue"],attributes:[{id:"minecraft:generic.scale",base:2}], NoAI:1b,Size:0,Silent:1b,Invulnerable:1b}
execute if entity @s[tag=red] run summon magma_cube ~ ~ ~ {Tags:["10hitbox","red"],attributes:[{id:"minecraft:generic.scale",base:2}], NoAI:1b,Size:0,Silent:1b,Invulnerable:1b}
execute if entity @s[tag=green] run summon magma_cube ~ ~ ~ {Tags:["10hitbox","green"],attributes:[{id:"minecraft:generic.scale",base:2}], NoAI:1b,Size:0,Silent:1b,Invulnerable:1b}
execute if entity @s[tag=orange] run summon magma_cube ~ ~ ~ {Tags:["10hitbox","orange"],attributes:[{id:"minecraft:generic.scale",base:2}], NoAI:1b,Size:0,Silent:1b,Invulnerable:1b}

execute if entity @s[tag=blue] run summon item_display ~ ~ ~ {Tags:["10can","blue"],NoAI:1b,teleport_duration:1,transformation:{left_rotation:[0.0f,90.0f,0.0f,90f],right_rotation:[0f,0f,0f,1f],translation:[0f,0.25f,0f],scale:[0.5f,0.5f,0.5f]},item:{id:"minecraft:carrot_on_a_stick",count:1,components:{"minecraft:custom_model_data":10001}}}
execute if entity @s[tag=red] run summon item_display ~ ~ ~ {Tags:["10can","red"],NoAI:1b,teleport_duration:1,transformation:{left_rotation:[0.0f,90.0f,0.0f,90f],right_rotation:[0f,0f,0f,1f],translation:[0f,0.25f,0f],scale:[0.5f,0.5f,0.5f]},item:{id:"minecraft:carrot_on_a_stick",count:1,components:{"minecraft:custom_model_data":10002}}}
execute if entity @s[tag=green] run summon item_display ~ ~ ~ {Tags:["10can","green"],NoAI:1b,teleport_duration:1,transformation:{left_rotation:[0.0f,90.0f,0.0f,90f],right_rotation:[0f,0f,0f,1f],translation:[0f,0.25f,0f],scale:[0.5f,0.5f,0.5f]},item:{id:"minecraft:carrot_on_a_stick",count:1,components:{"minecraft:custom_model_data":10003}}}
execute if entity @s[tag=orange] run summon item_display ~ ~ ~ {Tags:["10can","orange"],NoAI:1b,teleport_duration:1,transformation:{left_rotation:[0.0f,90.0f,0.0f,90f],right_rotation:[0f,0f,0f,1f],translation:[0f,0.25f,0f],scale:[0.5f,0.5f,0.5f]},item:{id:"minecraft:carrot_on_a_stick",count:1,components:{"minecraft:custom_model_data":10004}}}


#effect give @s slow_falling infinite 1 true
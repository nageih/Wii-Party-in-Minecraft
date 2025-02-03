kill @e[type=item_display,tag=36card]

summon item_display 36004 20.5 35996.0 {interpolation_duration:5,teleport_duration:5,Tags:["36card","phase1"],transformation:[0.001f,0f,1f,0f,0f,1f,0f,0f,-1f,0f,0.001f,0f,0f,0f,0f,1f],item:{id:"minecraft:carrot_on_a_stick",count:1,components:{"minecraft:custom_model_data":36001}}}
summon item_display 36004 20.5 35999.0 {interpolation_duration:5,teleport_duration:5,Tags:["36card","phase1"],transformation:[0.001f,0f,1f,0f,0f,1f,0f,0f,-1f,0f,0.001f,0f,0f,0f,0f,1f],item:{id:"minecraft:carrot_on_a_stick",count:1,components:{"minecraft:custom_model_data":36001}}}
summon item_display 36004 20.5 36002.0 {interpolation_duration:5,teleport_duration:5,Tags:["36card","phase1"],transformation:[0.001f,0f,1f,0f,0f,1f,0f,0f,-1f,0f,0.001f,0f,0f,0f,0f,1f],item:{id:"minecraft:carrot_on_a_stick",count:1,components:{"minecraft:custom_model_data":36001}}}
summon item_display 36004 20.5 36005.0 {interpolation_duration:5,teleport_duration:5,Tags:["36card","phase1"],transformation:[0.001f,0f,1f,0f,0f,1f,0f,0f,-1f,0f,0.001f,0f,0f,0f,0f,1f],item:{id:"minecraft:carrot_on_a_stick",count:1,components:{"minecraft:custom_model_data":36001}}}
execute as @e[type=item_display,tag=36card,tag=!36set,sort=random] run function games:36/set_color
tag @e[type=item_display,tag=!36set] add 36set

summon item_display 35998 20.5 35996.0 {interpolation_duration:5,teleport_duration:5,Tags:["36card","phase2"],transformation:[0.001f,0f,1f,0f,0f,1f,0f,0f,-1f,0f,0.001f,0f,0f,0f,0f,1f],item:{id:"minecraft:carrot_on_a_stick",count:1,components:{"minecraft:custom_model_data":36001}}}
summon item_display 35998 20.5 35999.0 {interpolation_duration:5,teleport_duration:5,Tags:["36card","phase2"],transformation:[0.001f,0f,1f,0f,0f,1f,0f,0f,-1f,0f,0.001f,0f,0f,0f,0f,1f],item:{id:"minecraft:carrot_on_a_stick",count:1,components:{"minecraft:custom_model_data":36001}}}
summon item_display 35998 20.5 36002.0 {interpolation_duration:5,teleport_duration:5,Tags:["36card","phase2"],transformation:[0.001f,0f,1f,0f,0f,1f,0f,0f,-1f,0f,0.001f,0f,0f,0f,0f,1f],item:{id:"minecraft:carrot_on_a_stick",count:1,components:{"minecraft:custom_model_data":36001}}}
summon item_display 35998 20.5 36005.0 {interpolation_duration:5,teleport_duration:5,Tags:["36card","phase2"],transformation:[0.001f,0f,1f,0f,0f,1f,0f,0f,-1f,0f,0.001f,0f,0f,0f,0f,1f],item:{id:"minecraft:carrot_on_a_stick",count:1,components:{"minecraft:custom_model_data":36001}}}
execute as @e[type=item_display,tag=36card,tag=!36set,sort=random] run function games:36/set_color
tag @e[type=item_display,tag=!36set] add 36set

summon item_display 35992 20.5 35996.0 {interpolation_duration:5,teleport_duration:5,Tags:["36card","phase3"],transformation:[0.001f,0f,1f,0f,0f,1f,0f,0f,-1f,0f,0.001f,0f,0f,0f,0f,1f],item:{id:"minecraft:carrot_on_a_stick",count:1,components:{"minecraft:custom_model_data":36001}}}
summon item_display 35992 20.5 35999.0 {interpolation_duration:5,teleport_duration:5,Tags:["36card","phase3"],transformation:[0.001f,0f,1f,0f,0f,1f,0f,0f,-1f,0f,0.001f,0f,0f,0f,0f,1f],item:{id:"minecraft:carrot_on_a_stick",count:1,components:{"minecraft:custom_model_data":36001}}}
summon item_display 35992 20.5 36002.0 {interpolation_duration:5,teleport_duration:5,Tags:["36card","phase3"],transformation:[0.001f,0f,1f,0f,0f,1f,0f,0f,-1f,0f,0.001f,0f,0f,0f,0f,1f],item:{id:"minecraft:carrot_on_a_stick",count:1,components:{"minecraft:custom_model_data":36001}}}
summon item_display 35992 20.5 36005.0 {interpolation_duration:5,teleport_duration:5,Tags:["36card","phase3"],transformation:[0.001f,0f,1f,0f,0f,1f,0f,0f,-1f,0f,0.001f,0f,0f,0f,0f,1f],item:{id:"minecraft:carrot_on_a_stick",count:1,components:{"minecraft:custom_model_data":36001}}}
execute as @e[type=item_display,tag=36card,tag=!36set,sort=random] run function games:36/set_color
tag @e[type=item_display,tag=!36set] add 36set

team join black @e[type=item_display,tag=36card]
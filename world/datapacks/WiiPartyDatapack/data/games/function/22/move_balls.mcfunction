# Applies the motion to the armor stands so that they move in line to their next position
execute as @e[type=minecraft:armor_stand,tag=ball] run data merge entity @s {Motion:[-0.3548d,0.5d,0.0d]}

# Checks if enough balls have been summoned already, if not it summons a new ball with motion to move to the next spot
execute if score balls= 22scores > totalturns= 22scores run summon minecraft:armor_stand 22929 13 22985 {Invisible:1b,Tags:["ball","temp"],Motion:[-0.23d,0.5d,0.0d],Silent:1b,ArmorItems:[{},{},{},{id:"minecraft:carrot_on_a_stick",count:1,components:{"minecraft:custom_model_data":22001}}]}

# Runs a function as the newly summoned armor stand to give it a random size
execute as @e[type=minecraft:armor_stand,tag=ball,tag=temp] run function games:22/random_size
# Summons 3 different armor stands to represent balls on each spot in a line, these represent the upcoming balls
summon minecraft:armor_stand 22927 13 22985 {Invisible:1b,Tags:["ball"],Silent:1b,ArmorItems:[{},{},{},{id:"minecraft:carrot_on_a_stick",count:1,components:{"minecraft:custom_model_data":22001}}]}
summon minecraft:armor_stand 22925 13 22985 {Invisible:1b,Tags:["ball"],Silent:1b,ArmorItems:[{},{},{},{id:"minecraft:carrot_on_a_stick",count:1,components:{"minecraft:custom_model_data":22001}}]}
summon minecraft:armor_stand 22923 13 22985 {Invisible:1b,Tags:["ball"],Silent:1b,ArmorItems:[{},{},{},{id:"minecraft:carrot_on_a_stick",count:1,components:{"minecraft:custom_model_data":22001}}]}

# Runs a function as all these balls to give them a random size
execute as @e[type=minecraft:armor_stand,tag=ball] run function games:22/random_size
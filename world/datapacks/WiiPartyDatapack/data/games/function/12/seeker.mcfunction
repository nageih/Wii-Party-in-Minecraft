tag @s[predicate=!games:12coas] add clear

#Remove the tool from the player's inventory
execute if score timer 12scores matches ..-1 if score lives 12scores matches 1.. if score @s 12scores matches 0 if score struct0 12scores matches 0 run tag @s add clear
execute if score timer 12scores matches ..-1 if score lives 12scores matches 1.. if score @s 12scores matches 1 if score struct1 12scores matches 0 run tag @s add clear
execute if score timer 12scores matches ..-1 if score lives 12scores matches 1.. if score @s 12scores matches 2 if score struct2 12scores matches 0 run tag @s add clear
execute if score timer 12scores matches ..-1 if score lives 12scores matches 1.. if score @s 12scores matches 3 if score struct3 12scores matches 0 run tag @s add clear
execute if score timer 12scores matches ..-1 if score lives 12scores matches 1.. if score @s 12scores matches 4 if score struct4 12scores matches 0 run tag @s add clear
execute if score timer 12scores matches ..-1 if score lives 12scores matches 1.. if score @s 12scores matches 5 if score struct5 12scores matches 0 run tag @s add clear
execute if score timer 12scores matches ..-1 if score lives 12scores matches 1.. if score @s 12scores matches 6 if score struct6 12scores matches 0 run tag @s add clear

#clear @s[tag=clear] minecraft:carrot_on_a_stick

item replace entity @s[tag=clear] hotbar.0 with minecraft:air
item replace entity @s[tag=clear] hotbar.1 with minecraft:air
item replace entity @s[tag=clear] hotbar.2 with minecraft:air
item replace entity @s[tag=clear] hotbar.3 with minecraft:air
item replace entity @s[tag=clear] hotbar.4 with minecraft:air
item replace entity @s[tag=clear] hotbar.5 with minecraft:air
item replace entity @s[tag=clear] hotbar.6 with minecraft:air
item replace entity @s[tag=clear] hotbar.7 with minecraft:air
item replace entity @s[tag=clear] hotbar.8 with minecraft:air

tag @s remove clear

#Check if the seeker has used the tool
execute at @s if score @s coas matches 1.. run function games:12/uncover
#Only give the tool if the structure hasnt been checked
execute if score timer 12scores matches ..-1 as @a[tag=solo,predicate=!games:12coas] if score lives 12scores matches 1.. if score @s 12scores matches 0 if score struct0 12scores matches 1 run item replace entity @s weapon.mainhand with minecraft:carrot_on_a_stick[minecraft:custom_model_data=201,custom_data={hideandpeek:1b},minecraft:custom_name='{"translate":"game.HideNPeek.SeekerTool.Name","color":"light_purple","bold":true}',minecraft:lore=['{"translate":"game.HideNPeek.SeekerTool.Lore","color":"aqua","italic":true,"with":[{"keybind":"key.use","color":"aqua","italic":true,"underlined":true,"type":"keybind"}]}']]
execute if score timer 12scores matches ..-1 as @a[tag=solo,predicate=!games:12coas] if score lives 12scores matches 1.. if score @s 12scores matches 1 if score struct1 12scores matches 1 run item replace entity @s weapon.mainhand with minecraft:carrot_on_a_stick[minecraft:custom_model_data=201,custom_data={hideandpeek:1b},minecraft:custom_name='{"translate":"game.HideNPeek.SeekerTool.Name","color":"light_purple","bold":true}',minecraft:lore=['{"translate":"game.HideNPeek.SeekerTool.Lore","color":"aqua","italic":true,"with":[{"keybind":"key.use","color":"aqua","italic":true,"underlined":true,"type":"keybind"}]}']]
execute if score timer 12scores matches ..-1 as @a[tag=solo,predicate=!games:12coas] if score lives 12scores matches 1.. if score @s 12scores matches 2 if score struct2 12scores matches 1 run item replace entity @s weapon.mainhand with minecraft:carrot_on_a_stick[minecraft:custom_model_data=201,custom_data={hideandpeek:1b},minecraft:custom_name='{"translate":"game.HideNPeek.SeekerTool.Name","color":"light_purple","bold":true}',minecraft:lore=['{"translate":"game.HideNPeek.SeekerTool.Lore","color":"aqua","italic":true,"with":[{"keybind":"key.use","color":"aqua","italic":true,"underlined":true,"type":"keybind"}]}']]
execute if score timer 12scores matches ..-1 as @a[tag=solo,predicate=!games:12coas] if score lives 12scores matches 1.. if score @s 12scores matches 3 if score struct3 12scores matches 1 run item replace entity @s weapon.mainhand with minecraft:carrot_on_a_stick[minecraft:custom_model_data=201,custom_data={hideandpeek:1b},minecraft:custom_name='{"translate":"game.HideNPeek.SeekerTool.Name","color":"light_purple","bold":true}',minecraft:lore=['{"translate":"game.HideNPeek.SeekerTool.Lore","color":"aqua","italic":true,"with":[{"keybind":"key.use","color":"aqua","italic":true,"underlined":true,"type":"keybind"}]}']]
execute if score timer 12scores matches ..-1 as @a[tag=solo,predicate=!games:12coas] if score lives 12scores matches 1.. if score @s 12scores matches 4 if score struct4 12scores matches 1 run item replace entity @s weapon.mainhand with minecraft:carrot_on_a_stick[minecraft:custom_model_data=201,custom_data={hideandpeek:1b},minecraft:custom_name='{"translate":"game.HideNPeek.SeekerTool.Name","color":"light_purple","bold":true}',minecraft:lore=['{"translate":"game.HideNPeek.SeekerTool.Lore","color":"aqua","italic":true,"with":[{"keybind":"key.use","color":"aqua","italic":true,"underlined":true,"type":"keybind"}]}']]
execute if score timer 12scores matches ..-1 as @a[tag=solo,predicate=!games:12coas] if score lives 12scores matches 1.. if score @s 12scores matches 5 if score struct5 12scores matches 1 run item replace entity @s weapon.mainhand with minecraft:carrot_on_a_stick[minecraft:custom_model_data=201,custom_data={hideandpeek:1b},minecraft:custom_name='{"translate":"game.HideNPeek.SeekerTool.Name","color":"light_purple","bold":true}',minecraft:lore=['{"translate":"game.HideNPeek.SeekerTool.Lore","color":"aqua","italic":true,"with":[{"keybind":"key.use","color":"aqua","italic":true,"underlined":true,"type":"keybind"}]}']]
execute if score timer 12scores matches ..-1 as @a[tag=solo,predicate=!games:12coas] if score lives 12scores matches 1.. if score @s 12scores matches 6 if score struct6 12scores matches 1 run item replace entity @s weapon.mainhand with minecraft:carrot_on_a_stick[minecraft:custom_model_data=201,custom_data={hideandpeek:1b},minecraft:custom_name='{"translate":"game.HideNPeek.SeekerTool.Name","color":"light_purple","bold":true}',minecraft:lore=['{"translate":"game.HideNPeek.SeekerTool.Lore","color":"aqua","italic":true,"with":[{"keybind":"key.use","color":"aqua","italic":true,"underlined":true,"type":"keybind"}]}']]
execute if score timer 12scores matches ..-1 if score lives 12scores matches 0 run title @a[tag=ingame,tag=solo] actionbar " "

scoreboard players reset @s coas
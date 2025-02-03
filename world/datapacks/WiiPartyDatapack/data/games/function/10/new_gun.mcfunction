#   Author        =   @ JevinLevin
#   Description   =   Forces the hammer item to always be in either the players offhand or mainhand
#   Called By     =   games:26/player


# Removes the current hammer from their inventory
clear @s minecraft:carrot_on_a_stick
item replace entity @s hotbar.0 with minecraft:air
item replace entity @s hotbar.1 with minecraft:air
item replace entity @s hotbar.2 with minecraft:air
item replace entity @s hotbar.3 with minecraft:air
item replace entity @s hotbar.4 with minecraft:air
item replace entity @s hotbar.5 with minecraft:air
item replace entity @s hotbar.6 with minecraft:air
item replace entity @s hotbar.7 with minecraft:air
item replace entity @s hotbar.8 with minecraft:air

# Replaces their mainhand with a new one.
# BLue
item replace entity @s[team=blue] weapon.mainhand with minecraft:carrot_on_a_stick[minecraft:custom_model_data=10011,minecraft:custom_name='{"translate":"game.PopgunPosse.GunName","color":"#0088ff","bold":true,"italic":false}',minecraft:lore=['{"translate":"game.PopgunPosse.GunLore","color":"#006DCC","italic":false}'],minecraft:unbreakable={show_in_tooltip:false},minecraft:hide_additional_tooltip={},minecraft:custom_data={popgun:1b}] 1
# Red
item replace entity @s[team=red] weapon.mainhand with minecraft:carrot_on_a_stick[minecraft:custom_model_data=10012,minecraft:custom_name='{"translate":"game.PopgunPosse.GunName","color":"#ff5555","bold":true,"italic":false}',minecraft:lore=['{"translate":"game.PopgunPosse.GunLore","color":"#CF4545","italic":false}'],minecraft:unbreakable={show_in_tooltip:false},minecraft:hide_additional_tooltip={},minecraft:custom_data={popgun:1b}] 1
# Green
item replace entity @s[team=green] weapon.mainhand with minecraft:carrot_on_a_stick[minecraft:custom_model_data=10013,minecraft:custom_name='{"translate":"game.PopgunPosse.GunName","color":"#55ff55","bold":true,"italic":false}',minecraft:lore=['{"translate":"game.PopgunPosse.GunLore","color":"#3AAD3A","italic":false}'],minecraft:unbreakable={show_in_tooltip:false},minecraft:hide_additional_tooltip={},minecraft:custom_data={popgun:1b}] 1
# Orange
item replace entity @s[team=orange] weapon.mainhand with minecraft:carrot_on_a_stick[minecraft:custom_model_data=10014,minecraft:custom_name='{"translate":"game.PopgunPosse.GunName","color":"#ffaa00","bold":true,"italic":false}',minecraft:lore=['{"translate":"game.PopgunPosse.GunLore","color":"#BA7C00","italic":false}'],minecraft:unbreakable={show_in_tooltip:false},minecraft:hide_additional_tooltip={},minecraft:custom_data={popgun:1b}] 1

kill @e[type=item,nbt={Item:{id:"minecraft:carrot_on_a_stick",components:{"minecraft:custom_data":{popgun:1b}}}}]

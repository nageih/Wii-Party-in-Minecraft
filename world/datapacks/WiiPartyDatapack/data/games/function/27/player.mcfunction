#   Author        =   @ T4Bl3rUs
#   Description   =   Runs commands as all the players ingame. No real reason for this other than small optimisations and organisation
#   Called By     =   games:27/repeating



clear @s[predicate=!games:27remote] minecraft:carrot_on_a_stick
item replace entity @s[predicate=!games:27remote] hotbar.0 with minecraft:air
item replace entity @s[predicate=!games:27remote] hotbar.1 with minecraft:air
item replace entity @s[predicate=!games:27remote] hotbar.2 with minecraft:air
item replace entity @s[predicate=!games:27remote] hotbar.3 with minecraft:air
item replace entity @s[predicate=!games:27remote] hotbar.4 with minecraft:air
item replace entity @s[predicate=!games:27remote] hotbar.5 with minecraft:air
item replace entity @s[predicate=!games:27remote] hotbar.6 with minecraft:air
item replace entity @s[predicate=!games:27remote] hotbar.7 with minecraft:air
item replace entity @s[predicate=!games:27remote] hotbar.8 with minecraft:air

# Replaces their mainhand with a new one.
# Blue
item replace entity @s[team=blue,predicate=!games:27remote] weapon.mainhand with minecraft:carrot_on_a_stick[minecraft:custom_model_data=200,minecraft:custom_name='{"translate":"game.ChannelChangers.RemoteName","bold":true,"italic":false,"color":"white"}',minecraft:lore=['{"translate":"game.ChannelChangers.RemoteLore","italic":false,"color":"#006DCC"}'],minecraft:custom_data={remote:1b}] 1
# Red
item replace entity @s[team=red,predicate=!games:27remote] weapon.mainhand with minecraft:carrot_on_a_stick[minecraft:custom_model_data=200,minecraft:custom_name='{"translate":"game.ChannelChangers.RemoteName","bold":true,"italic":false,"color":"#FF5555"}',minecraft:lore=['{"translate":"game.ChannelChangers.RemoteLore","italic":false,"color":"#CF4545"}'],minecraft:custom_data={remote:1b}] 1
# Green
item replace entity @s[team=green,predicate=!games:27remote] weapon.mainhand with minecraft:carrot_on_a_stick[minecraft:custom_model_data=200,minecraft:custom_name='{"translate":"game.ChannelChangers.RemoteName","bold":true,"italic":false,"color":"#55FF55"}',minecraft:lore=['{"translate":"game.ChannelChangers.RemoteLore","italic":false,"color":"#3AAD3A"}'],minecraft:custom_data={remote:1b}] 1
# Orange
item replace entity @s[team=orange,predicate=!games:27remote] weapon.mainhand with minecraft:carrot_on_a_stick[minecraft:custom_model_data=200,minecraft:custom_name='{"translate":"game.ChannelChangers.RemoteName","bold":true,"italic":false,"color":"#FFAA00"}',minecraft:lore=['{"translate":"game.ChannelChangers.RemoteLore","italic":false,"color":"#BA7C00"}'],minecraft:custom_data={remote:1b}] 1


execute if score @s rightClick matches 1.. at @s run function games:27/raytracing/start
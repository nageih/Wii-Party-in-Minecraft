clear @s carrot_on_a_stick[custom_data={whip:1b}]
kill @e[type=item,nbt={Item:{id:"minecraft:carrot_on_a_stick",components:{"minecraft:custom_data":{whip:1b}}}}]

item replace entity @s weapon.mainhand with carrot_on_a_stick[custom_name='{"bold":true,"translate":"game.DerbyDash.Whip"}',unbreakable={},custom_model_data=6001,custom_data={whip:1b}] 1
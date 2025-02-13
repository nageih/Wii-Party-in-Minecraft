execute as @e[type=item_display,tag=36card,tag=!36finish] run function games:36/unhover
# Conver to happy
execute as @e[type=item_display,tag=36sad] run function games:36/convert_happy
tag @e remove 36sad
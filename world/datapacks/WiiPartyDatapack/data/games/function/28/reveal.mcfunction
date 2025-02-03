scoreboard players add revealtimer= 28scores 1

execute if score revealtimer= 28scores matches ..15 as @e[type=item_display,tag=28close,tag=bottom] at @s run tp @s ~ ~-.025 ~
execute if score revealtimer= 28scores matches ..15 as @e[type=item_display,tag=28close,tag=top] at @s run tp @s ~ ~.025 ~

#execute if score revealtimer= 28scores matches 20 as @a[tag=ingame,tag=28exact] at @s run tag @e[type=armor_stand,tag=28player,limit=1,sort=nearest] add 28exact
#execute if score revealtimer= 28scores matches 20 if entity @a[tag=ingame,tag=28exact] as @e[type=armor_stand,tag=28player] at @s run function games:28/loot_at_winner

execute if score revealtimer= 28scores matches 35.. run function games:28/finish
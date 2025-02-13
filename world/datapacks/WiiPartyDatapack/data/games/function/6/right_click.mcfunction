advancement revoke @s only games:6/right_click
advancement revoke @s only games:6/left_click

execute as @s[tag=ingame,scores={6stamina=15..,6canwhack=0}] run function games:6/whackhorse
execute as @s[tag=ingame,scores={6stamina=..14,6canwhack=0}] run function games:6/whackhorseslow
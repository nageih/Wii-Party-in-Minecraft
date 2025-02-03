scoreboard players set rope= 42scores 0



execute unless score direction= 42scores matches 1 run scoreboard players add phase= 42scores 1
execute if score direction= 42scores matches 1 run scoreboard players remove phase= 42scores 1


function games:42/phase/controller


execute if score phase= 42scores matches 15 run scoreboard players set direction= 42scores 1
execute if score phase= 42scores matches 1 run scoreboard players set direction= 42scores 0
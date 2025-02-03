tag @e remove nbs_backattack
scoreboard objectives remove nbs_backattack
scoreboard objectives remove nbs_backattack_t
datapack disable "file/back_attack.zip"
tellraw @s ["",{"text":"[NBS] ","color":"gold","bold":true,"type":"text"},{"text":"Data pack ","color":"yellow","type":"text"},{"text":"back_attack.zip","color":"gold","underlined":true,"type":"text"},{"text":" uninstalled successfully. You may now remove it from your data pack folder.","color":"yellow","type":"text"}]
tag @e remove nbs_barreldare
scoreboard objectives remove nbs_barreldare
scoreboard objectives remove nbs_barreldare_t
datapack disable "file/barrel_daredevil.zip"
tellraw @s ["",{"text":"[NBS] ","color":"gold","bold":true,"type":"text"},{"text":"Data pack ","color":"yellow","type":"text"},{"text":"barrel_daredevil.zip","color":"gold","underlined":true,"type":"text"},{"text":" uninstalled successfully. You may now remove it from your data pack folder.","color":"yellow","type":"text"}]
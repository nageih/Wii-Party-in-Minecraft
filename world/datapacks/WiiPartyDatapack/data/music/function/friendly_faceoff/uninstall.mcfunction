tag @e remove nbs_friendlyfa
scoreboard objectives remove nbs_friendlyfa
scoreboard objectives remove nbs_friendlyfa_t
datapack disable "file/friendly_faceoff.zip"
tellraw @s ["",{"text":"[NBS] ","color":"gold","bold":true,"type":"text"},{"text":"Data pack ","color":"yellow","type":"text"},{"text":"friendly_faceoff.zip","color":"gold","underlined":true,"type":"text"},{"text":" uninstalled successfully. You may now remove it from your data pack folder.","color":"yellow","type":"text"}]
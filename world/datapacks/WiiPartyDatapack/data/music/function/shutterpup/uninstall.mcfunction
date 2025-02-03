tag @e remove nbs_shutterpup
scoreboard objectives remove nbs_shutterpup
scoreboard objectives remove nbs_shutterpup_t
datapack disable "file/shutterpup.zip"
tellraw @s ["",{"text":"[NBS] ","color":"gold","bold":true,"type":"text"},{"text":"Data pack ","color":"yellow","type":"text"},{"text":"shutterpup.zip","color":"gold","underlined":true,"type":"text"},{"text":" uninstalled successfully. You may now remove it from your data pack folder.","color":"yellow","type":"text"}]
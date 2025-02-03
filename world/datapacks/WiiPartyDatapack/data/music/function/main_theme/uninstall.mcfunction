tag @e remove nbs_maintheme
scoreboard objectives remove nbs_maintheme
scoreboard objectives remove nbs_maintheme_t
datapack disable "file/main_theme.zip"
tellraw @s ["",{"text":"[NBS] ","color":"gold","bold":true,"type":"text"},{"text":"Data pack ","color":"yellow","type":"text"},{"text":"main_theme.zip","color":"gold","underlined":true,"type":"text"},{"text":" uninstalled successfully. You may now remove it from your data pack folder.","color":"yellow","type":"text"}]
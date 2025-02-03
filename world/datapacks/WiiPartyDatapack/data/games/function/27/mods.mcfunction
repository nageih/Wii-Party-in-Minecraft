#data modify storage mods game.27.base set value ['[{"translate":"game.mods.title","color":"dark_gray","bold":true},"\\n",{"translate":"game.mods.desc","color":"gray","bold":false},"\\n\\n",{"translate":"game.ChannelChangers.mods.theme.title","color":"dark_gray","bold":true},"\\n",{"nbt":"game.27.theme[0]","storage":"mods","interpret":true},{"nbt":"game.27.theme[1]","storage":"mods","interpret":true}]']


# COLORED VERSION OF UNLOCKABLE MODS
#data modify storage mods game.27.theme_not_sel set value ['{"text":" ○ ","extra":[{"translate":"game.ChannelChangers.mods.theme.default","color":"gray"},"\\n"],"hoverEvent":{"action":"show_text","contents":{"translate":"game.mods.default","with":[{"translate":"game.ChannelChangers.mods.theme.desc","color":"gray","with":[{"translate":"game.ChannelChangers.mods.theme.default","color":"green"}]}]}},"color":"gray","bold":false,"clickEvent":{"action":"run_command","value":"/trigger 27trigs set 1"}}','{"text":" ○ ","extra":[{"translate":"game.ChannelChangers.mods.theme.theme2","color":"#FEC53E"},"\\n"],"hoverEvent":{"action":"show_text","contents":[{"translate":"game.ChannelChangers.mods.theme.desc","color":"gray","with":[{"translate":"game.ChannelChangers.mods.theme.theme2","color":"green"}]},"\\n",{"translate":"game.mods.unlocked_by","color":"aqua","with":[{"selector":"@a[scores={27theme2=1},tag=ingame]","color":"blue"}]}]},"color":"#FEC53E","bold":false,"clickEvent":{"action":"run_command","value":"/trigger 27trigs set 2"}}']
#data modify storage mods game.27.theme_sel set value ['{"text":" ● ","extra":[{"translate":"game.ChannelChangers.mods.theme.default","color":"gray"},"\\n"],"hoverEvent":{"action":"show_text","contents":{"translate":"game.mods.default","with":[{"translate":"game.ChannelChangers.mods.theme.desc","color":"gray","with":[{"translate":"game.ChannelChangers.mods.theme.default","color":"green"}]}]}},"color":"gray","bold":true}','{"text":" ● ","extra":[{"translate":"game.ChannelChangers.mods.theme.theme2","color":"#FEC53E"},"\\n"],"hoverEvent":{"action":"show_text","contents":[{"translate":"game.ChannelChangers.mods.theme.desc","color":"gray","with":[{"translate":"game.ChannelChangers.mods.theme.theme2","color":"green"}]},"\\n",{"translate":"game.mods.unlocked_by","color":"aqua","with":[{"selector":"@a[scores={27theme2=1},tag=ingame]","color":"blue"}]}]},"color":"#FEC53E","bold":true}']
#data modify storage mods game.27.theme_locked set value ['','{"text":"   ??? \\n","hoverEvent":{"action":"show_text","contents":{"translate":"game.mods.event_exclusive","color":"gray","with":[{"translate":"game.mods.events.placeholder","color":"red"}]}},"color":"gray","bold":false}']


# THEME TRIGGERS
execute if entity @a[scores={27trigs=1..2}] run data modify storage minecraft:mods game.27.theme set from storage minecraft:mods game.27.theme_not_sel
execute if entity @a[scores={27trigs=1}] run data modify storage minecraft:mods game.27.theme[0] set from storage minecraft:mods game.27.theme_sel[0]
execute if entity @a[scores={27trigs=2}] run data modify storage minecraft:mods game.27.theme[1] set from storage minecraft:mods game.27.theme_sel[1]
execute if entity @a[scores={27trigs=1}] run scoreboard players set theme= 27mods 1
execute if entity @a[scores={27trigs=2}] run scoreboard players set theme= 27mods 2


scoreboard players reset @a 27trigs
scoreboard players enable @a 27trigs
data modify block -976 12 -1153 front_text.messages[0] set from storage minecraft:mods game.27.base[0]
execute as @a[tag=ingame] at @s run data modify block ~ ~1 ~ Book.tag.pages[1] set from block -976 12 -1153 front_text.messages[0]
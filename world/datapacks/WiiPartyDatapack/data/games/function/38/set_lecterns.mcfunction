# Places the start menu lecterns
fill 37960 17 37985 37958 15 37983 minecraft:barrier
setblock 37960 16 37985 minecraft:lectern[has_book=true]{Book:{id:"minecraft:written_book",Count:1b,tag:{pages:["",'[{"translate":"game.mods.title","color":"dark_gray","bold":true},"\\n",{"translate":"game.mods.desc","color":"gray","bold":false}]'],author:"Wii Party in MC!",title:"Tutorial"}}}
setblock 37958 16 37983 minecraft:lectern[has_book=true]{Book:{id:"minecraft:written_book",Count:1b,tag:{pages:["",'[{"translate":"game.mods.title","color":"dark_gray","bold":true},"\\n",{"translate":"game.mods.desc","color":"gray","bold":false}]'],author:"Wii Party in MC!",title:"Tutorial"}}}
setblock 37958 16 37985 minecraft:lectern[has_book=true]{Book:{id:"minecraft:written_book",Count:1b,tag:{pages:["",'[{"translate":"game.mods.title","color":"dark_gray","bold":true},"\\n",{"translate":"game.mods.desc","color":"gray","bold":false}]'],author:"Wii Party in MC!",title:"Tutorial"}}}
setblock 37960 16 37983 minecraft:lectern[has_book=true]{Book:{id:"minecraft:written_book",Count:1b,tag:{pages:["",'[{"translate":"game.mods.title","color":"dark_gray","bold":true},"\\n",{"translate":"game.mods.desc","color":"gray","bold":false}]'],author:"Wii Party in MC!",title:"Tutorial"}}}

# Teleport all players to the minigame
tp @a[tag=ingame,team=blue] 37960 15 37985
tp @a[tag=ingame,team=red] 37958 15 37983
tp @a[tag=ingame,team=green] 37958 15 37985
tp @a[tag=ingame,team=orange] 37960 15 37983
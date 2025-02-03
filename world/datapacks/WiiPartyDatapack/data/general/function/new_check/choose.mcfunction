title @s subtitle {"text":"Is this your first time playing","color":"light_purple","type":"text"}

execute if score choice= newCheck matches 0 run title @s title [{"text":"Yes","color":"green","bold":true,"underlined":true,"type":"text"},{"text":" ","underlined":false,"type":"text"},{"text":" ","underlined":false,"type":"text"},{"text":" ","underlined":false,"type":"text"},{"text":"No","color":"gray","bold":true,"underlined":false,"type":"text"}]
execute if score choice= newCheck matches 1 run title @s title [{"text":"Yes","color":"gray","bold":true,"underlined":false,"type":"text"},{"text":" ","underlined":false,"type":"text"},{"text":" ","underlined":false,"type":"text"},{"text":" ","underlined":false,"type":"text"},{"text":"No","color":"red","bold":true,"underlined":true,"type":"text"}]

execute if entity @a[tag=new_check,scores={rightClick=1..}] run function general:new_check/select
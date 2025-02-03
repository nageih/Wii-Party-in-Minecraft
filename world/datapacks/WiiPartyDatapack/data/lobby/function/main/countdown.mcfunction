scoreboard players add countdownTimer= lobby 1

execute if score countdownTimer= lobby matches 20 run title @a subtitle {"text":"5","color":"#2cac2c"}
execute if score countdownTimer= lobby matches 20 as @a at @s run playsound minecraft:block.note_block.hat master @s ~ ~ ~ 1 0.5
execute if score countdownTimer= lobby matches 40 run title @a subtitle {"text":"4","color":"#30c030"}
execute if score countdownTimer= lobby matches 40 as @a at @s run playsound minecraft:block.note_block.hat master @s ~ ~ ~ 1 0.55
execute if score countdownTimer= lobby matches 60 run title @a subtitle {"text":"3","color":"#35d535"}
execute if score countdownTimer= lobby matches 60 as @a at @s run playsound minecraft:block.note_block.hat master @s ~ ~ ~ 1 0.6
execute if score countdownTimer= lobby matches 80 run title @a subtitle {"text":"2","color":"#3ae93a"}
execute if score countdownTimer= lobby matches 80 as @a at @s run playsound minecraft:block.note_block.hat master @s ~ ~ ~ 1 0.7
execute if score countdownTimer= lobby matches 100 run title @a subtitle {"text":"1","color":"green"}
execute if score countdownTimer= lobby matches 100 as @a at @s run playsound minecraft:block.note_block.hat master @s ~ ~ ~ 1 0.8
execute if score countdownTimer= lobby matches 120 run title @a times 0 0 20
execute if score countdownTimer= lobby matches 120 run title @a title ""
execute if score countdownTimer= lobby matches 120 run title @a subtitle ""
execute if score countdownTimer= lobby matches 120 run function general:game/start

execute if score countdownTimer= lobby matches 120 run scoreboard players set countdownMain= lobby 0
execute if score countdownTimer= lobby matches 120 run scoreboard players set countdownTimer= lobby 0
scoreboard players add @s 24rotate 1

tp @s[scores={24rotate=1..30}] ~ ~ ~ ~45 ~
tp @s[scores={24rotate=31..34}] ~ ~ ~ ~30 ~
tp @s[scores={24rotate=35..36}] ~ ~ ~ ~20 ~
tp @s[scores={24rotate=37}] ~ ~ ~ ~10 ~
tp @s[scores={24rotate=38}] ~ ~ ~ ~5 ~
tp @s[scores={24rotate=39}] ~ ~ ~ ~2 ~
tp @s[scores={24rotate=40}] ~ ~ ~ ~1 ~

execute if score @s 24rotate matches 40.. run tag @s add 24move
execute if score @s 24rotate matches 40.. run scoreboard players set @s 24rotate -1
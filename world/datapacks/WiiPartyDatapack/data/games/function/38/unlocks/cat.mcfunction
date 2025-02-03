execute store result score @s 38cat run loot spawn ~ -70 ~ loot games:unlocks/38cat
execute unless score @s 38cat > chance= 38cat run tellraw @s {"translate":"game.mods.unlock","with":[{"translate":"game.Shutterpup.mods.entity.cat","color":"light_purple"}," ",{"translate":"game.Shutterpup.mods.entity.title_simple"},{"translate":"game.ShutterpupName"}],"color":"gray"}
execute unless score @s 38cat > chance= 38cat run scoreboard players set @s 38cat 1
execute if score @s 38cat > chance= 38cat run scoreboard players reset @s 38cat
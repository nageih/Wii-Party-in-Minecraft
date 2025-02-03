execute store result score random= 23scores run loot spawn ~ -70 ~ loot games:23direction

execute align xyz positioned ~.5 ~ ~.5 if score random= 23scores matches 1 run function games:23/set_left
execute align xyz positioned ~.5 ~ ~.5 if score random= 23scores matches 2 run function games:23/set_middle
execute align xyz positioned ~.5 ~ ~.5 if score random= 23scores matches 3 run function games:23/set_right
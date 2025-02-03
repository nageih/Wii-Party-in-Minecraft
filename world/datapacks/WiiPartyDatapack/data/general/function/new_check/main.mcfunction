execute if score stage= newCheck matches 1.. as @a run function general:new_check/scroll_check

execute if score stage= newCheck matches 1.. as @a[tag=new_check] run function general:new_check/choose


tag @a remove down
tag @a remove up
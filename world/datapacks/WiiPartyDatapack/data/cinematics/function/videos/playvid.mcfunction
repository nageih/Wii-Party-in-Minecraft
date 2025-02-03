#   Author        =   @ T4Bl3rUs
#   Description   =   Starts playing the video stored in "load"
#   Called By     =   cinematics:demos/*

function cinematics:videos/internal/reset
execute unless entity @e[type=minecraft:armor_stand,tag=video,limit=1] run summon minecraft:armor_stand ~ ~ ~ {NoGravity:1b,Invisible:1b,Silent:1b,Tags:["video"]}
schedule function cinematics:videos/internal/playvid2 2t
summon marker -218 68 56 {Tags:["selectMarker"],"Rotation":[0f,0f]}
summon magma_cube -218 68 56 {Tags:["selectSpectate"],NoAI:1b, Size:6b, Invulnerable:1b, Silent:1b,wasOnGround:1b, NoGravity:1b, HasVisualFire:0b}

execute as @a[tag=playing] at @e[type=marker,tag=selectMarker] run playsound minecraft:block.beacon.power_select master @s ~ ~ ~ 100000 0.75
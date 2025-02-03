#   Author        =   @ JevinLevin
#   Description   =   Run every time as a player when they hit any entity
#   Called By     =   games:26/hit_golden + games:26/hit_normal + advancements/games:26/hit_player


# Stops the player hitting for 30 secs
scoreboard players set @s 26hitCooldown 30

# Lets the player do the hit animation for 4 ticks
scoreboard players set @s 26aniCooldown 5

# Removes the advancement used to trigger this function so they can trigger it again
advancement revoke @s only games:26/hit_player


scoreboard objectives add sqrt dummy

# Initialize values
scoreboard players set output sqrt 0
scoreboard players set increment sqrt 32768

$scoreboard players set input sqrt $(val)
$scoreboard players set scale_factor sqrt $(scale)

scoreboard players operation input sqrt *= scale_factor sqrt
# Execute recursive function
function games:10/sqrt/loop
# Reset input
scoreboard players operation input sqrt /= scale_factor sqrt

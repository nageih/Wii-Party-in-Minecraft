# Compute test
scoreboard players operation test sqrt = output sqrt
scoreboard players operation test sqrt += increment sqrt
scoreboard players operation test sqrt *= test sqrt
# Compare sqrts
execute if score test sqrt <= input sqrt run scoreboard players operation output sqrt += increment sqrt
# Execute recursive function
scoreboard players operation increment sqrt /= 2 Numbers
execute if score increment sqrt matches 1.. run function games:10/sqrt/loop
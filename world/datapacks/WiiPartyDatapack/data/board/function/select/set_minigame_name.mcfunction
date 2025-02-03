

$scoreboard players set §$(n)§r minigameSelectDisplay $(n) 
$team add ms$(n)
$team modify ms$(n) prefix {"text":"$(name)","bold":true,"color":"#$(x)$(y)04f9"}
$team join ms$(n) §$(n)§r

$scoreboard players operation §$(n)§$(n)§r minigameSelectDisplay = §$(n)§r minigameSelectDisplay
$scoreboard players add §$(n)§$(n)§r minigameSelectDisplay 1
$team add ms$(n)s
$team modify ms$(n)s prefix [{"translate":"space.1"},{"text":"$(name)","bold":true,"color":"#$(x)$(ys)04f8"}]
$team join ms$(n)s §$(n)§$(n)§r
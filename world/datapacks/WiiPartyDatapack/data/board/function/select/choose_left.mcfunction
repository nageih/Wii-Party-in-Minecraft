tellraw @a ""
tellraw @a {"translate":"select.Choose.Left","color":"gray"}
tellraw @a ""

execute store result score final= minigameSelect run random value 1..3

function board:select/end_choose

schedule clear board:select/choose_left
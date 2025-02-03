tellraw @a[tag=playing] {"translate":"lobby.EndGame.NoPlayers","color":"red"}

function general:game/end

scoreboard players set playing= lobby 0

schedule function lobby:end/noise 3t
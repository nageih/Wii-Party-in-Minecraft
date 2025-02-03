$tag @s add lobbyJoinTemp$(team)


$execute if entity @s[team=$(team)] run function lobby:teams/error {"translate":"lobby.Teams.Error.Already","team":"$(team)","color":"$(color)"}
tag @s add teamTemp
$execute if entity @a[tag=!teamTemp,team=$(team)] run function lobby:teams/error {"translate":"lobby.Teams.Error.Full","team":"$(team)","color":"$(color)"}
tag @s remove teamTemp

$execute if entity @s[tag=!teamJoinFail] run function lobby:teams/join {"team":"$(team)","color":"$(color)"}

tag @s remove teamJoinFail
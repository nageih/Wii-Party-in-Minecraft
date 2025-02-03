tag @s add lobbyJoinTempleave


execute if entity @s[team=!blue,team=!red,team=!green,team=!orange] run function lobby:teams/error {"translate":"lobby.Teams.Error.NoTeam","team":"","color":"gray"}

execute if entity @s[tag=!teamJoinFail] run function lobby:teams/leave

tag @s remove teamJoinFail
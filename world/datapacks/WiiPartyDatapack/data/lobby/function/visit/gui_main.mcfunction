


tag @s remove lobbyVisitUsed

tag @a[predicate=lobby:has_head,distance=..10] add lobbyVisitValid
tag @a[tag=lobbyVisitValid,limit=1,sort=nearest] add lobbyVisitPlayer
tag @a remove lobbyVisitValid


execute store result score lobbyVisitSelected= lobby run data get entity @s Items[0].Slot
execute if score visitPage= lobby matches 0 if entity @s[tag=!lobbyVisitUsed] unless score lobbyVisitSelected= lobby matches 1 run clear @a[tag=lobbyVisitPlayer] minecraft:player_head 1
execute if score visitPage= lobby matches 0 if entity @s[tag=!lobbyVisitUsed] unless score lobbyVisitSelected= lobby matches 1 as @a[tag=lobbyVisitPlayer] run function lobby:visit/minigames/dicey_descent
execute if score visitPage= lobby matches 0 if entity @s[tag=!lobbyVisitUsed] unless score lobbyVisitSelected= lobby matches 1 run tag @s add lobbyVisitUsed
execute store result score lobbyVisitSelected= lobby run data get entity @s Items[1].Slot
execute if score visitPage= lobby matches 0 if entity @s[tag=!lobbyVisitUsed] unless score lobbyVisitSelected= lobby matches 2 run clear @a[tag=lobbyVisitPlayer] minecraft:player_head 1
execute if score visitPage= lobby matches 0 if entity @s[tag=!lobbyVisitUsed] unless score lobbyVisitSelected= lobby matches 2 as @a[tag=lobbyVisitPlayer] run function lobby:visit/minigames/zombie_tag
execute if score visitPage= lobby matches 0 if entity @s[tag=!lobbyVisitUsed] unless score lobbyVisitSelected= lobby matches 2 run tag @s add lobbyVisitUsed
execute store result score lobbyVisitSelected= lobby run data get entity @s Items[2].Slot
execute if score visitPage= lobby matches 0 if entity @s[tag=!lobbyVisitUsed] unless score lobbyVisitSelected= lobby matches 3 run clear @a[tag=lobbyVisitPlayer] minecraft:player_head 1
execute if score visitPage= lobby matches 0 if entity @s[tag=!lobbyVisitUsed] unless score lobbyVisitSelected= lobby matches 3 as @a[tag=lobbyVisitPlayer] run function lobby:visit/minigames/barrel_daredevil
execute if score visitPage= lobby matches 0 if entity @s[tag=!lobbyVisitUsed] unless score lobbyVisitSelected= lobby matches 3 run tag @s add lobbyVisitUsed
execute store result score lobbyVisitSelected= lobby run data get entity @s Items[3].Slot
execute if score visitPage= lobby matches 0 if entity @s[tag=!lobbyVisitUsed] unless score lobbyVisitSelected= lobby matches 4 run clear @a[tag=lobbyVisitPlayer] minecraft:player_head 1
execute if score visitPage= lobby matches 0 if entity @s[tag=!lobbyVisitUsed] unless score lobbyVisitSelected= lobby matches 4 as @a[tag=lobbyVisitPlayer] run function lobby:visit/minigames/back_attack
execute if score visitPage= lobby matches 0 if entity @s[tag=!lobbyVisitUsed] unless score lobbyVisitSelected= lobby matches 4 run tag @s add lobbyVisitUsed
execute store result score lobbyVisitSelected= lobby run data get entity @s Items[4].Slot
execute if score visitPage= lobby matches 0 if entity @s[tag=!lobbyVisitUsed] unless score lobbyVisitSelected= lobby matches 5 run clear @a[tag=lobbyVisitPlayer] minecraft:player_head 1
execute if score visitPage= lobby matches 0 if entity @s[tag=!lobbyVisitUsed] unless score lobbyVisitSelected= lobby matches 5 as @a[tag=lobbyVisitPlayer] run function lobby:visit/minigames/lucky_launch
execute if score visitPage= lobby matches 0 if entity @s[tag=!lobbyVisitUsed] unless score lobbyVisitSelected= lobby matches 5 run tag @s add lobbyVisitUsed
execute store result score lobbyVisitSelected= lobby run data get entity @s Items[5].Slot
execute if score visitPage= lobby matches 0 if entity @s[tag=!lobbyVisitUsed] unless score lobbyVisitSelected= lobby matches 6 run clear @a[tag=lobbyVisitPlayer] minecraft:player_head 1
execute if score visitPage= lobby matches 0 if entity @s[tag=!lobbyVisitUsed] unless score lobbyVisitSelected= lobby matches 6 as @a[tag=lobbyVisitPlayer] run function lobby:visit/minigames/derby_dash
execute if score visitPage= lobby matches 0 if entity @s[tag=!lobbyVisitUsed] unless score lobbyVisitSelected= lobby matches 6 run tag @s add lobbyVisitUsed
execute store result score lobbyVisitSelected= lobby run data get entity @s Items[6].Slot
execute if score visitPage= lobby matches 0 if entity @s[tag=!lobbyVisitUsed] unless score lobbyVisitSelected= lobby matches 7 run clear @a[tag=lobbyVisitPlayer] minecraft:player_head 1
execute if score visitPage= lobby matches 0 if entity @s[tag=!lobbyVisitUsed] unless score lobbyVisitSelected= lobby matches 7 as @a[tag=lobbyVisitPlayer] run function lobby:visit/minigames/shifty_gifts
execute if score visitPage= lobby matches 0 if entity @s[tag=!lobbyVisitUsed] unless score lobbyVisitSelected= lobby matches 7 run tag @s add lobbyVisitUsed
execute store result score lobbyVisitSelected= lobby run data get entity @s Items[7].Slot
execute if score visitPage= lobby matches 0 if entity @s[tag=!lobbyVisitUsed] unless score lobbyVisitSelected= lobby matches 10 run clear @a[tag=lobbyVisitPlayer] minecraft:player_head 1
execute if score visitPage= lobby matches 0 if entity @s[tag=!lobbyVisitUsed] unless score lobbyVisitSelected= lobby matches 10 as @a[tag=lobbyVisitPlayer] run function lobby:visit/minigames/chop_chops
execute if score visitPage= lobby matches 0 if entity @s[tag=!lobbyVisitUsed] unless score lobbyVisitSelected= lobby matches 10 run tag @s add lobbyVisitUsed
execute store result score lobbyVisitSelected= lobby run data get entity @s Items[8].Slot
execute if score visitPage= lobby matches 0 if entity @s[tag=!lobbyVisitUsed] unless score lobbyVisitSelected= lobby matches 11 run clear @a[tag=lobbyVisitPlayer] minecraft:player_head 1
execute if score visitPage= lobby matches 0 if entity @s[tag=!lobbyVisitUsed] unless score lobbyVisitSelected= lobby matches 11 as @a[tag=lobbyVisitPlayer] run function lobby:visit/minigames/jumbo_jump
execute if score visitPage= lobby matches 0 if entity @s[tag=!lobbyVisitUsed] unless score lobbyVisitSelected= lobby matches 11 run tag @s add lobbyVisitUsed
execute store result score lobbyVisitSelected= lobby run data get entity @s Items[9].Slot
execute if score visitPage= lobby matches 0 if entity @s[tag=!lobbyVisitUsed] unless score lobbyVisitSelected= lobby matches 12 run clear @a[tag=lobbyVisitPlayer] minecraft:player_head 1
execute if score visitPage= lobby matches 0 if entity @s[tag=!lobbyVisitUsed] unless score lobbyVisitSelected= lobby matches 12 as @a[tag=lobbyVisitPlayer] run function lobby:visit/minigames/popgun_posse
execute if score visitPage= lobby matches 0 if entity @s[tag=!lobbyVisitUsed] unless score lobbyVisitSelected= lobby matches 12 run tag @s add lobbyVisitUsed
execute store result score lobbyVisitSelected= lobby run data get entity @s Items[10].Slot
execute if score visitPage= lobby matches 0 if entity @s[tag=!lobbyVisitUsed] unless score lobbyVisitSelected= lobby matches 13 run clear @a[tag=lobbyVisitPlayer] minecraft:player_head 1
execute if score visitPage= lobby matches 0 if entity @s[tag=!lobbyVisitUsed] unless score lobbyVisitSelected= lobby matches 13 as @a[tag=lobbyVisitPlayer] run function lobby:visit/minigames/hurdle_hover
execute if score visitPage= lobby matches 0 if entity @s[tag=!lobbyVisitUsed] unless score lobbyVisitSelected= lobby matches 13 run tag @s add lobbyVisitUsed
execute store result score lobbyVisitSelected= lobby run data get entity @s Items[11].Slot
execute if score visitPage= lobby matches 0 if entity @s[tag=!lobbyVisitUsed] unless score lobbyVisitSelected= lobby matches 14 run clear @a[tag=lobbyVisitPlayer] minecraft:player_head 1
execute if score visitPage= lobby matches 0 if entity @s[tag=!lobbyVisitUsed] unless score lobbyVisitSelected= lobby matches 14 as @a[tag=lobbyVisitPlayer] run function lobby:visit/minigames/hide_n_peek
execute if score visitPage= lobby matches 0 if entity @s[tag=!lobbyVisitUsed] unless score lobbyVisitSelected= lobby matches 14 run tag @s add lobbyVisitUsed
execute store result score lobbyVisitSelected= lobby run data get entity @s Items[12].Slot
execute if score visitPage= lobby matches 0 if entity @s[tag=!lobbyVisitUsed] unless score lobbyVisitSelected= lobby matches 15 run clear @a[tag=lobbyVisitPlayer] minecraft:player_head 1
execute if score visitPage= lobby matches 0 if entity @s[tag=!lobbyVisitUsed] unless score lobbyVisitSelected= lobby matches 15 as @a[tag=lobbyVisitPlayer] run function lobby:visit/minigames/flag_fracas
execute if score visitPage= lobby matches 0 if entity @s[tag=!lobbyVisitUsed] unless score lobbyVisitSelected= lobby matches 15 run tag @s add lobbyVisitUsed
execute store result score lobbyVisitSelected= lobby run data get entity @s Items[13].Slot
execute if score visitPage= lobby matches 0 if entity @s[tag=!lobbyVisitUsed] unless score lobbyVisitSelected= lobby matches 16 run clear @a[tag=lobbyVisitPlayer] minecraft:player_head 1
execute if score visitPage= lobby matches 0 if entity @s[tag=!lobbyVisitUsed] unless score lobbyVisitSelected= lobby matches 16 as @a[tag=lobbyVisitPlayer] run function lobby:visit/minigames/delivery_duel
execute if score visitPage= lobby matches 0 if entity @s[tag=!lobbyVisitUsed] unless score lobbyVisitSelected= lobby matches 16 run tag @s add lobbyVisitUsed
execute store result score lobbyVisitSelected= lobby run data get entity @s Items[14].Slot
execute if score visitPage= lobby matches 0 if entity @s[tag=!lobbyVisitUsed] unless score lobbyVisitSelected= lobby matches 23 run clear @a[tag=lobbyVisitPlayer] minecraft:player_head 1
execute if score visitPage= lobby matches 0 if entity @s[tag=!lobbyVisitUsed] unless score lobbyVisitSelected= lobby matches 23 run function lobby:visit/change_page {"x":"1"}

execute store result score lobbyVisitSelected= lobby run data get entity @s Items[0].Slot
execute if score visitPage= lobby matches 1 if entity @s[tag=!lobbyVisitUsed] unless score lobbyVisitSelected= lobby matches 1 run clear @a[tag=lobbyVisitPlayer] minecraft:player_head 1
execute if score visitPage= lobby matches 1 if entity @s[tag=!lobbyVisitUsed] unless score lobbyVisitSelected= lobby matches 1 as @a[tag=lobbyVisitPlayer] run function lobby:visit/minigames/ram_jam
execute if score visitPage= lobby matches 1 if entity @s[tag=!lobbyVisitUsed] unless score lobbyVisitSelected= lobby matches 1 run tag @s add lobbyVisitUsed
execute store result score lobbyVisitSelected= lobby run data get entity @s Items[1].Slot
execute if score visitPage= lobby matches 1 if entity @s[tag=!lobbyVisitUsed] unless score lobbyVisitSelected= lobby matches 2 run clear @a[tag=lobbyVisitPlayer] minecraft:player_head 1
execute if score visitPage= lobby matches 1 if entity @s[tag=!lobbyVisitUsed] unless score lobbyVisitSelected= lobby matches 2 as @a[tag=lobbyVisitPlayer] run function lobby:visit/minigames/tropical_punch
execute if score visitPage= lobby matches 1 if entity @s[tag=!lobbyVisitUsed] unless score lobbyVisitSelected= lobby matches 2 run tag @s add lobbyVisitUsed
execute store result score lobbyVisitSelected= lobby run data get entity @s Items[2].Slot
execute if score visitPage= lobby matches 1 if entity @s[tag=!lobbyVisitUsed] unless score lobbyVisitSelected= lobby matches 3 run clear @a[tag=lobbyVisitPlayer] minecraft:player_head 1
execute if score visitPage= lobby matches 1 if entity @s[tag=!lobbyVisitUsed] unless score lobbyVisitSelected= lobby matches 3 as @a[tag=lobbyVisitPlayer] run function lobby:visit/minigames/ball_brawl
execute if score visitPage= lobby matches 1 if entity @s[tag=!lobbyVisitUsed] unless score lobbyVisitSelected= lobby matches 3 run tag @s add lobbyVisitUsed
execute store result score lobbyVisitSelected= lobby run data get entity @s Items[3].Slot
execute if score visitPage= lobby matches 1 if entity @s[tag=!lobbyVisitUsed] unless score lobbyVisitSelected= lobby matches 4 run clear @a[tag=lobbyVisitPlayer] minecraft:player_head 1
execute if score visitPage= lobby matches 1 if entity @s[tag=!lobbyVisitUsed] unless score lobbyVisitSelected= lobby matches 4 as @a[tag=lobbyVisitPlayer] run function lobby:visit/minigames/friendly_face_off
execute if score visitPage= lobby matches 1 if entity @s[tag=!lobbyVisitUsed] unless score lobbyVisitSelected= lobby matches 4 run tag @s add lobbyVisitUsed
execute store result score lobbyVisitSelected= lobby run data get entity @s Items[4].Slot
execute if score visitPage= lobby matches 1 if entity @s[tag=!lobbyVisitUsed] unless score lobbyVisitSelected= lobby matches 5 run clear @a[tag=lobbyVisitPlayer] minecraft:player_head 1
execute if score visitPage= lobby matches 1 if entity @s[tag=!lobbyVisitUsed] unless score lobbyVisitSelected= lobby matches 5 as @a[tag=lobbyVisitPlayer] run function lobby:visit/minigames/feathered_frenzy
execute if score visitPage= lobby matches 1 if entity @s[tag=!lobbyVisitUsed] unless score lobbyVisitSelected= lobby matches 5 run tag @s add lobbyVisitUsed
execute store result score lobbyVisitSelected= lobby run data get entity @s Items[5].Slot
execute if score visitPage= lobby matches 1 if entity @s[tag=!lobbyVisitUsed] unless score lobbyVisitSelected= lobby matches 6 run clear @a[tag=lobbyVisitPlayer] minecraft:player_head 1
execute if score visitPage= lobby matches 1 if entity @s[tag=!lobbyVisitUsed] unless score lobbyVisitSelected= lobby matches 6 as @a[tag=lobbyVisitPlayer] run function lobby:visit/minigames/splash_bash
execute if score visitPage= lobby matches 1 if entity @s[tag=!lobbyVisitUsed] unless score lobbyVisitSelected= lobby matches 6 run tag @s add lobbyVisitUsed
execute store result score lobbyVisitSelected= lobby run data get entity @s Items[6].Slot
execute if score visitPage= lobby matches 1 if entity @s[tag=!lobbyVisitUsed] unless score lobbyVisitSelected= lobby matches 7 run clear @a[tag=lobbyVisitPlayer] minecraft:player_head 1
execute if score visitPage= lobby matches 1 if entity @s[tag=!lobbyVisitUsed] unless score lobbyVisitSelected= lobby matches 7 as @a[tag=lobbyVisitPlayer] run function lobby:visit/minigames/saucer_snap
execute if score visitPage= lobby matches 1 if entity @s[tag=!lobbyVisitUsed] unless score lobbyVisitSelected= lobby matches 7 run tag @s add lobbyVisitUsed
execute store result score lobbyVisitSelected= lobby run data get entity @s Items[7].Slot
execute if score visitPage= lobby matches 1 if entity @s[tag=!lobbyVisitUsed] unless score lobbyVisitSelected= lobby matches 10 run clear @a[tag=lobbyVisitPlayer] minecraft:player_head 1
execute if score visitPage= lobby matches 1 if entity @s[tag=!lobbyVisitUsed] unless score lobbyVisitSelected= lobby matches 10 as @a[tag=lobbyVisitPlayer] run function lobby:visit/minigames/goal_getters
execute if score visitPage= lobby matches 1 if entity @s[tag=!lobbyVisitUsed] unless score lobbyVisitSelected= lobby matches 10 run tag @s add lobbyVisitUsed
execute store result score lobbyVisitSelected= lobby run data get entity @s Items[8].Slot
execute if score visitPage= lobby matches 1 if entity @s[tag=!lobbyVisitUsed] unless score lobbyVisitSelected= lobby matches 11 run clear @a[tag=lobbyVisitPlayer] minecraft:player_head 1
execute if score visitPage= lobby matches 1 if entity @s[tag=!lobbyVisitUsed] unless score lobbyVisitSelected= lobby matches 11 as @a[tag=lobbyVisitPlayer] run function lobby:visit/minigames/risky_railway
execute if score visitPage= lobby matches 1 if entity @s[tag=!lobbyVisitUsed] unless score lobbyVisitSelected= lobby matches 11 run tag @s add lobbyVisitUsed
execute store result score lobbyVisitSelected= lobby run data get entity @s Items[9].Slot
execute if score visitPage= lobby matches 1 if entity @s[tag=!lobbyVisitUsed] unless score lobbyVisitSelected= lobby matches 12 run clear @a[tag=lobbyVisitPlayer] minecraft:player_head 1
execute if score visitPage= lobby matches 1 if entity @s[tag=!lobbyVisitUsed] unless score lobbyVisitSelected= lobby matches 12 as @a[tag=lobbyVisitPlayer] run function lobby:visit/minigames/maze_daze
execute if score visitPage= lobby matches 1 if entity @s[tag=!lobbyVisitUsed] unless score lobbyVisitSelected= lobby matches 12 run tag @s add lobbyVisitUsed
execute store result score lobbyVisitSelected= lobby run data get entity @s Items[10].Slot
execute if score visitPage= lobby matches 1 if entity @s[tag=!lobbyVisitUsed] unless score lobbyVisitSelected= lobby matches 13 run clear @a[tag=lobbyVisitPlayer] minecraft:player_head 1
execute if score visitPage= lobby matches 1 if entity @s[tag=!lobbyVisitUsed] unless score lobbyVisitSelected= lobby matches 13 as @a[tag=lobbyVisitPlayer] run function lobby:visit/minigames/chopper_hoppers
execute if score visitPage= lobby matches 1 if entity @s[tag=!lobbyVisitUsed] unless score lobbyVisitSelected= lobby matches 13 run tag @s add lobbyVisitUsed
execute store result score lobbyVisitSelected= lobby run data get entity @s Items[11].Slot
execute if score visitPage= lobby matches 1 if entity @s[tag=!lobbyVisitUsed] unless score lobbyVisitSelected= lobby matches 14 run clear @a[tag=lobbyVisitPlayer] minecraft:player_head 1
execute if score visitPage= lobby matches 1 if entity @s[tag=!lobbyVisitUsed] unless score lobbyVisitSelected= lobby matches 14 as @a[tag=lobbyVisitPlayer] run function lobby:visit/minigames/hammer_heads
execute if score visitPage= lobby matches 1 if entity @s[tag=!lobbyVisitUsed] unless score lobbyVisitSelected= lobby matches 14 run tag @s add lobbyVisitUsed
execute store result score lobbyVisitSelected= lobby run data get entity @s Items[12].Slot
execute if score visitPage= lobby matches 1 if entity @s[tag=!lobbyVisitUsed] unless score lobbyVisitSelected= lobby matches 15 run clear @a[tag=lobbyVisitPlayer] minecraft:player_head 1
execute if score visitPage= lobby matches 1 if entity @s[tag=!lobbyVisitUsed] unless score lobbyVisitSelected= lobby matches 15 as @a[tag=lobbyVisitPlayer] run function lobby:visit/minigames/channel_changers
execute if score visitPage= lobby matches 1 if entity @s[tag=!lobbyVisitUsed] unless score lobbyVisitSelected= lobby matches 15 run tag @s add lobbyVisitUsed
execute store result score lobbyVisitSelected= lobby run data get entity @s Items[13].Slot
execute if score visitPage= lobby matches 1 if entity @s[tag=!lobbyVisitUsed] unless score lobbyVisitSelected= lobby matches 16 run clear @a[tag=lobbyVisitPlayer] minecraft:player_head 1
execute if score visitPage= lobby matches 1 if entity @s[tag=!lobbyVisitUsed] unless score lobbyVisitSelected= lobby matches 16 as @a[tag=lobbyVisitPlayer] run function lobby:visit/minigames/stop_watchers
execute if score visitPage= lobby matches 1 if entity @s[tag=!lobbyVisitUsed] unless score lobbyVisitSelected= lobby matches 16 run tag @s add lobbyVisitUsed
execute store result score lobbyVisitSelected= lobby run data get entity @s Items[14].Slot
execute if entity @s[tag=!lobbyChangedPage] if score visitPage= lobby matches 1 if entity @s[tag=!lobbyVisitUsed] unless score lobbyVisitSelected= lobby matches 21 run clear @a[tag=lobbyVisitPlayer] minecraft:player_head 1
execute if entity @s[tag=!lobbyChangedPage] if score visitPage= lobby matches 1 if entity @s[tag=!lobbyVisitUsed] unless score lobbyVisitSelected= lobby matches 21 run function lobby:visit/change_page {"x":"0"}
execute store result score lobbyVisitSelected= lobby run data get entity @s Items[15].Slot
execute if entity @s[tag=!lobbyChangedPage] if score visitPage= lobby matches 1 if entity @s[tag=!lobbyVisitUsed] unless score lobbyVisitSelected= lobby matches 23 run clear @a[tag=lobbyVisitPlayer] minecraft:player_head 1
execute if entity @s[tag=!lobbyChangedPage] if score visitPage= lobby matches 1 if entity @s[tag=!lobbyVisitUsed] unless score lobbyVisitSelected= lobby matches 23 run function lobby:visit/change_page {"x":"2"}
scoreboard players reset lobbyVisitSelected= lobby

execute store result score lobbyVisitSelected= lobby run data get entity @s Items[0].Slot
execute if score visitPage= lobby matches 2 if entity @s[tag=!lobbyVisitUsed] unless score lobbyVisitSelected= lobby matches 1 run clear @a[tag=lobbyVisitPlayer] minecraft:player_head 1
execute if score visitPage= lobby matches 2 if entity @s[tag=!lobbyVisitUsed] unless score lobbyVisitSelected= lobby matches 1 as @a[tag=lobbyVisitPlayer] run function lobby:visit/minigames/pearl_plunder
execute if score visitPage= lobby matches 2 if entity @s[tag=!lobbyVisitUsed] unless score lobbyVisitSelected= lobby matches 1 run tag @s add lobbyVisitUsed
execute store result score lobbyVisitSelected= lobby run data get entity @s Items[1].Slot
execute if score visitPage= lobby matches 2 if entity @s[tag=!lobbyVisitUsed] unless score lobbyVisitSelected= lobby matches 2 run clear @a[tag=lobbyVisitPlayer] minecraft:player_head 1
execute if score visitPage= lobby matches 2 if entity @s[tag=!lobbyVisitUsed] unless score lobbyVisitSelected= lobby matches 2 as @a[tag=lobbyVisitPlayer] run function lobby:visit/minigames/follow_your_face
execute if score visitPage= lobby matches 2 if entity @s[tag=!lobbyVisitUsed] unless score lobbyVisitSelected= lobby matches 2 run tag @s add lobbyVisitUsed
execute store result score lobbyVisitSelected= lobby run data get entity @s Items[2].Slot
execute if score visitPage= lobby matches 2 if entity @s[tag=!lobbyVisitUsed] unless score lobbyVisitSelected= lobby matches 3 run clear @a[tag=lobbyVisitPlayer] minecraft:player_head 1
execute if score visitPage= lobby matches 2 if entity @s[tag=!lobbyVisitUsed] unless score lobbyVisitSelected= lobby matches 3 as @a[tag=lobbyVisitPlayer] run function lobby:visit/minigames/smile_snap
execute if score visitPage= lobby matches 2 if entity @s[tag=!lobbyVisitUsed] unless score lobbyVisitSelected= lobby matches 3 run tag @s add lobbyVisitUsed
execute store result score lobbyVisitSelected= lobby run data get entity @s Items[3].Slot
execute if score visitPage= lobby matches 2 if entity @s[tag=!lobbyVisitUsed] unless score lobbyVisitSelected= lobby matches 4 run clear @a[tag=lobbyVisitPlayer] minecraft:player_head 1
execute if score visitPage= lobby matches 2 if entity @s[tag=!lobbyVisitUsed] unless score lobbyVisitSelected= lobby matches 4 as @a[tag=lobbyVisitPlayer] run function lobby:visit/minigames/lumber_whacks
execute if score visitPage= lobby matches 2 if entity @s[tag=!lobbyVisitUsed] unless score lobbyVisitSelected= lobby matches 4 run tag @s add lobbyVisitUsed
execute store result score lobbyVisitSelected= lobby run data get entity @s Items[4].Slot
execute if score visitPage= lobby matches 2 if entity @s[tag=!lobbyVisitUsed] unless score lobbyVisitSelected= lobby matches 5 run clear @a[tag=lobbyVisitPlayer] minecraft:player_head 1
execute if score visitPage= lobby matches 2 if entity @s[tag=!lobbyVisitUsed] unless score lobbyVisitSelected= lobby matches 5 as @a[tag=lobbyVisitPlayer] run function lobby:visit/minigames/timber_topple
execute if score visitPage= lobby matches 2 if entity @s[tag=!lobbyVisitUsed] unless score lobbyVisitSelected= lobby matches 5 run tag @s add lobbyVisitUsed
execute store result score lobbyVisitSelected= lobby run data get entity @s Items[5].Slot
execute if score visitPage= lobby matches 2 if entity @s[tag=!lobbyVisitUsed] unless score lobbyVisitSelected= lobby matches 6 run clear @a[tag=lobbyVisitPlayer] minecraft:player_head 1
execute if score visitPage= lobby matches 2 if entity @s[tag=!lobbyVisitUsed] unless score lobbyVisitSelected= lobby matches 6 as @a[tag=lobbyVisitPlayer] run function lobby:visit/minigames/shepard_scramble
execute if score visitPage= lobby matches 2 if entity @s[tag=!lobbyVisitUsed] unless score lobbyVisitSelected= lobby matches 6 run tag @s add lobbyVisitUsed
execute store result score lobbyVisitSelected= lobby run data get entity @s Items[6].Slot
execute if score visitPage= lobby matches 2 if entity @s[tag=!lobbyVisitUsed] unless score lobbyVisitSelected= lobby matches 7 run clear @a[tag=lobbyVisitPlayer] minecraft:player_head 1
execute if score visitPage= lobby matches 2 if entity @s[tag=!lobbyVisitUsed] unless score lobbyVisitSelected= lobby matches 7 as @a[tag=lobbyVisitPlayer] run function lobby:visit/minigames/poppin_pilots
execute if score visitPage= lobby matches 2 if entity @s[tag=!lobbyVisitUsed] unless score lobbyVisitSelected= lobby matches 7 run tag @s add lobbyVisitUsed
execute store result score lobbyVisitSelected= lobby run data get entity @s Items[7].Slot
execute if score visitPage= lobby matches 2 if entity @s[tag=!lobbyVisitUsed] unless score lobbyVisitSelected= lobby matches 10 run clear @a[tag=lobbyVisitPlayer] minecraft:player_head 1
execute if score visitPage= lobby matches 2 if entity @s[tag=!lobbyVisitUsed] unless score lobbyVisitSelected= lobby matches 10 as @a[tag=lobbyVisitPlayer] run function lobby:visit/minigames/strategy_steps
execute if score visitPage= lobby matches 2 if entity @s[tag=!lobbyVisitUsed] unless score lobbyVisitSelected= lobby matches 10 run tag @s add lobbyVisitUsed
execute store result score lobbyVisitSelected= lobby run data get entity @s Items[8].Slot
execute if score visitPage= lobby matches 2 if entity @s[tag=!lobbyVisitUsed] unless score lobbyVisitSelected= lobby matches 11 run clear @a[tag=lobbyVisitPlayer] minecraft:player_head 1
execute if score visitPage= lobby matches 2 if entity @s[tag=!lobbyVisitUsed] unless score lobbyVisitSelected= lobby matches 11 as @a[tag=lobbyVisitPlayer] run function lobby:visit/minigames/face_flip
execute if score visitPage= lobby matches 2 if entity @s[tag=!lobbyVisitUsed] unless score lobbyVisitSelected= lobby matches 11 run tag @s add lobbyVisitUsed
execute store result score lobbyVisitSelected= lobby run data get entity @s Items[9].Slot
execute if score visitPage= lobby matches 2 if entity @s[tag=!lobbyVisitUsed] unless score lobbyVisitSelected= lobby matches 12 run clear @a[tag=lobbyVisitPlayer] minecraft:player_head 1
execute if score visitPage= lobby matches 2 if entity @s[tag=!lobbyVisitUsed] unless score lobbyVisitSelected= lobby matches 12 as @a[tag=lobbyVisitPlayer] run function lobby:visit/minigames/spring_time
execute if score visitPage= lobby matches 2 if entity @s[tag=!lobbyVisitUsed] unless score lobbyVisitSelected= lobby matches 12 run tag @s add lobbyVisitUsed
execute store result score lobbyVisitSelected= lobby run data get entity @s Items[10].Slot
execute if score visitPage= lobby matches 2 if entity @s[tag=!lobbyVisitUsed] unless score lobbyVisitSelected= lobby matches 13 run clear @a[tag=lobbyVisitPlayer] minecraft:player_head 1
execute if score visitPage= lobby matches 2 if entity @s[tag=!lobbyVisitUsed] unless score lobbyVisitSelected= lobby matches 13 as @a[tag=lobbyVisitPlayer] run function lobby:visit/minigames/shutterpup
execute if score visitPage= lobby matches 2 if entity @s[tag=!lobbyVisitUsed] unless score lobbyVisitSelected= lobby matches 13 run tag @s add lobbyVisitUsed
execute store result score lobbyVisitSelected= lobby run data get entity @s Items[11].Slot
execute if score visitPage= lobby matches 2 if entity @s[tag=!lobbyVisitUsed] unless score lobbyVisitSelected= lobby matches 14 run clear @a[tag=lobbyVisitPlayer] minecraft:player_head 1
execute if score visitPage= lobby matches 2 if entity @s[tag=!lobbyVisitUsed] unless score lobbyVisitSelected= lobby matches 14 as @a[tag=lobbyVisitPlayer] run function lobby:visit/minigames/balloon_buggies
execute if score visitPage= lobby matches 2 if entity @s[tag=!lobbyVisitUsed] unless score lobbyVisitSelected= lobby matches 14 run tag @s add lobbyVisitUsed
execute store result score lobbyVisitSelected= lobby run data get entity @s Items[12].Slot
execute if score visitPage= lobby matches 2 if entity @s[tag=!lobbyVisitUsed] unless score lobbyVisitSelected= lobby matches 15 run clear @a[tag=lobbyVisitPlayer] minecraft:player_head 1
execute if score visitPage= lobby matches 2 if entity @s[tag=!lobbyVisitUsed] unless score lobbyVisitSelected= lobby matches 15 as @a[tag=lobbyVisitPlayer] run function lobby:visit/minigames/lunar_landers
execute if score visitPage= lobby matches 2 if entity @s[tag=!lobbyVisitUsed] unless score lobbyVisitSelected= lobby matches 15 run tag @s add lobbyVisitUsed
execute store result score lobbyVisitSelected= lobby run data get entity @s Items[13].Slot
execute if score visitPage= lobby matches 2 if entity @s[tag=!lobbyVisitUsed] unless score lobbyVisitSelected= lobby matches 16 run clear @a[tag=lobbyVisitPlayer] minecraft:player_head 1
execute if score visitPage= lobby matches 2 if entity @s[tag=!lobbyVisitUsed] unless score lobbyVisitSelected= lobby matches 16 as @a[tag=lobbyVisitPlayer] run function lobby:visit/minigames/chin_up_champ
execute if score visitPage= lobby matches 2 if entity @s[tag=!lobbyVisitUsed] unless score lobbyVisitSelected= lobby matches 16 run tag @s add lobbyVisitUsed
execute store result score lobbyVisitSelected= lobby run data get entity @s Items[14].Slot
execute if entity @s[tag=!lobbyChangedPage] if score visitPage= lobby matches 2 if entity @s[tag=!lobbyVisitUsed] unless score lobbyVisitSelected= lobby matches 21 run clear @a[tag=lobbyVisitPlayer] minecraft:player_head 1
execute if entity @s[tag=!lobbyChangedPage] if score visitPage= lobby matches 2 if entity @s[tag=!lobbyVisitUsed] unless score lobbyVisitSelected= lobby matches 21 run function lobby:visit/change_page {"x":"1"}
execute store result score lobbyVisitSelected= lobby run data get entity @s Items[15].Slot
execute if entity @s[tag=!lobbyChangedPage] if score visitPage= lobby matches 2 if entity @s[tag=!lobbyVisitUsed] unless score lobbyVisitSelected= lobby matches 23 run clear @a[tag=lobbyVisitPlayer] minecraft:player_head 1
execute if entity @s[tag=!lobbyChangedPage] if score visitPage= lobby matches 2 if entity @s[tag=!lobbyVisitUsed] unless score lobbyVisitSelected= lobby matches 23 run function lobby:visit/change_page {"x":"3"}
scoreboard players reset lobbyVisitSelected= lobby

execute store result score lobbyVisitSelected= lobby run data get entity @s Items[0].Slot
execute if score visitPage= lobby matches 3 if entity @s[tag=!lobbyVisitUsed] unless score lobbyVisitSelected= lobby matches 1 run clear @a[tag=lobbyVisitPlayer] minecraft:player_head 1
execute if score visitPage= lobby matches 3 if entity @s[tag=!lobbyVisitUsed] unless score lobbyVisitSelected= lobby matches 1 as @a[tag=lobbyVisitPlayer] run function lobby:visit/minigames/lofty_leap
execute if score visitPage= lobby matches 3 if entity @s[tag=!lobbyVisitUsed] unless score lobbyVisitSelected= lobby matches 1 run tag @s add lobbyVisitUsed
execute store result score lobbyVisitSelected= lobby run data get entity @s Items[1].Slot
execute if score visitPage= lobby matches 3 if entity @s[tag=!lobbyVisitUsed] unless score lobbyVisitSelected= lobby matches 2 run clear @a[tag=lobbyVisitPlayer] minecraft:player_head 1
execute if score visitPage= lobby matches 3 if entity @s[tag=!lobbyVisitUsed] unless score lobbyVisitSelected= lobby matches 2 as @a[tag=lobbyVisitPlayer] run function lobby:visit/minigames/space_race
execute if score visitPage= lobby matches 3 if entity @s[tag=!lobbyVisitUsed] unless score lobbyVisitSelected= lobby matches 2 run tag @s add lobbyVisitUsed
execute store result score lobbyVisitSelected= lobby run data get entity @s Items[2].Slot
execute if score visitPage= lobby matches 3 if entity @s[tag=!lobbyVisitUsed] unless score lobbyVisitSelected= lobby matches 3 run clear @a[tag=lobbyVisitPlayer] minecraft:player_head 1
execute if score visitPage= lobby matches 3 if entity @s[tag=!lobbyVisitUsed] unless score lobbyVisitSelected= lobby matches 3 as @a[tag=lobbyVisitPlayer] run function lobby:visit/minigames/poserobics
execute if score visitPage= lobby matches 3 if entity @s[tag=!lobbyVisitUsed] unless score lobbyVisitSelected= lobby matches 3 run tag @s add lobbyVisitUsed
execute store result score lobbyVisitSelected= lobby run data get entity @s Items[3].Slot
execute if score visitPage= lobby matches 3 if entity @s[tag=!lobbyVisitUsed] unless score lobbyVisitSelected= lobby matches 4 run clear @a[tag=lobbyVisitPlayer] minecraft:player_head 1
execute if score visitPage= lobby matches 3 if entity @s[tag=!lobbyVisitUsed] unless score lobbyVisitSelected= lobby matches 4 as @a[tag=lobbyVisitPlayer] run function lobby:visit/minigames/spotlight_fight
execute if score visitPage= lobby matches 3 if entity @s[tag=!lobbyVisitUsed] unless score lobbyVisitSelected= lobby matches 4 run tag @s add lobbyVisitUsed
execute store result score lobbyVisitSelected= lobby run data get entity @s Items[4].Slot
execute if score visitPage= lobby matches 3 if entity @s[tag=!lobbyVisitUsed] unless score lobbyVisitSelected= lobby matches 5 run clear @a[tag=lobbyVisitPlayer] minecraft:player_head 1
execute if score visitPage= lobby matches 3 if entity @s[tag=!lobbyVisitUsed] unless score lobbyVisitSelected= lobby matches 5 as @a[tag=lobbyVisitPlayer] run function lobby:visit/minigames/space_brawl
execute if score visitPage= lobby matches 3 if entity @s[tag=!lobbyVisitUsed] unless score lobbyVisitSelected= lobby matches 5 run tag @s add lobbyVisitUsed
execute store result score lobbyVisitSelected= lobby run data get entity @s Items[5].Slot
execute if score visitPage= lobby matches 3 if entity @s[tag=!lobbyVisitUsed] unless score lobbyVisitSelected= lobby matches 6 run clear @a[tag=lobbyVisitPlayer] minecraft:player_head 1
execute if score visitPage= lobby matches 3 if entity @s[tag=!lobbyVisitUsed] unless score lobbyVisitSelected= lobby matches 6 as @a[tag=lobbyVisitPlayer] run function lobby:visit/minigames/commuter_count
execute if score visitPage= lobby matches 3 if entity @s[tag=!lobbyVisitUsed] unless score lobbyVisitSelected= lobby matches 6 run tag @s add lobbyVisitUsed
execute store result score lobbyVisitSelected= lobby run data get entity @s Items[6].Slot
execute if score visitPage= lobby matches 3 if entity @s[tag=!lobbyVisitUsed] unless score lobbyVisitSelected= lobby matches 7 run clear @a[tag=lobbyVisitPlayer] minecraft:player_head 1
execute if score visitPage= lobby matches 3 if entity @s[tag=!lobbyVisitUsed] unless score lobbyVisitSelected= lobby matches 7 as @a[tag=lobbyVisitPlayer] run function lobby:visit/minigames/walk_off
execute if score visitPage= lobby matches 3 if entity @s[tag=!lobbyVisitUsed] unless score lobbyVisitSelected= lobby matches 7 run tag @s add lobbyVisitUsed
execute store result score lobbyVisitSelected= lobby run data get entity @s Items[7].Slot
execute if entity @s[tag=!lobbyChangedPage] if score visitPage= lobby matches 3 if entity @s[tag=!lobbyVisitUsed] unless score lobbyVisitSelected= lobby matches 21 run clear @a[tag=lobbyVisitPlayer] minecraft:player_head 1
execute if entity @s[tag=!lobbyChangedPage] if score visitPage= lobby matches 3 if entity @s[tag=!lobbyVisitUsed] unless score lobbyVisitSelected= lobby matches 21 run function lobby:visit/change_page {"x":"2"}
scoreboard players reset lobbyVisitSelected= lobby

tag @s remove lobbyChangedPage

execute if entity @s[tag=lobbyVisitUsed] run kill @e[type=item,distance=..5]
execute if entity @s[tag=lobbyVisitUsed] if score visitPage= lobby matches 0 run function lobby:visit/gui_load0
execute if entity @s[tag=lobbyVisitUsed] if score visitPage= lobby matches 1 run function lobby:visit/gui_load1
execute if entity @s[tag=lobbyVisitUsed] if score visitPage= lobby matches 2 run function lobby:visit/gui_load2
execute if entity @s[tag=lobbyVisitUsed] if score visitPage= lobby matches 3 run function lobby:visit/gui_load3

tag @a remove lobbyVisitPlayer
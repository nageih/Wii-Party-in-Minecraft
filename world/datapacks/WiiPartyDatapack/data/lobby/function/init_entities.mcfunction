# Minigame Selection Entities
tp @e[tag=lobbyMinigame] 0 -150 0
kill @e[tag=lobbyMinigame]

summon text_display -593 13.25 559 {shadow:1b,alignment:"center",Tags:["lobbyMinigame", "lobbyMinigamePrev"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[1.25f,1.25f,1.25f]},text:'{"bold":true,"color":"light_purple","translate":"lobby.Select.Previous"}',background:16777216,Rotation:[-90f,0f]}
summon text_display -593 13.25 557 {shadow:1b,alignment:"center",Tags:["lobbyMinigame", "lobbyMinigamePrev"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[1.25f,1.25f,1.25f]},text:'{"bold":true,"color":"light_purple","translate":"lobby.Select.Play"}',background:16777216,Rotation:[-90f,0f]}
summon text_display -593 13.25 555 {shadow:1b,alignment:"center",Tags:["lobbyMinigame", "lobbyMinigamePrev"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[1.25f,1.25f,1.25f]},text:'{"bold":true,"color":"light_purple","translate":"lobby.Select.Next"}',background:16777216,Rotation:[-90f,0f]}

summon interaction -593 12.5 559 {Tags:["lobbyMinigame", "lobbyMinigamePrev"],Rotation:[-90f,0f], width:1f, response:1b, height:1f}
summon interaction -593 12.5 557 {Tags:["lobbyMinigame", "lobbyMinigamePlay"],Rotation:[-90f,0f], width:1f, response:1b, height:1f}
summon interaction -593 12.5 555 {Tags:["lobbyMinigame", "lobbyMinigameNext"],Rotation:[-90f,0f], width:1f, response:1b, height:1f}



# Island Visiting Area
tp @e[tag=lobbyIsland] 0 -150 0
kill @e[tag=lobbyIsland]
summon text_display -587 14.5 535 {shadow:1b,alignment:"center",Tags:["lobbyIsland"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[2f,2f,2f]},text:'{"bold":true,"color":"light_purple","translate":"lobby.Island.Visit"}',background:16777216}
summon interaction -587 13 536 {Tags:["lobbyIsland"],Rotation:[-90f,0f], width:1f, response:1b, height:2f}



# Minigame Visiting Area
tp @e[tag=lobbyMinigames] 0 -150 0
kill @e[tag=lobbyMinigames]
summon text_display -585 14.5 566 {shadow:1b,alignment:"center",Tags:["lobbyMinigames"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[1f,1f,1f]},text:'{"bold":true,"color":"light_purple","translate":"lobby.Minigames.Click"}',background:16777216,Rotation:[180f,0f],billboard:"center"}
# Block off leashes
summon slime -588.89 13.37 567.07 {NoAI:1b, Silent:1b, Invulnerable:1b,Size:3,Tags:["lobbyMinigames"],PersistenceRequired:1b}
# Slime to block hanging signs
summon slime -534 14 548 {NoAI:1b, Silent:1b, Invulnerable:1b,Size:5,Tags:["lobbyMinigames"],PersistenceRequired:1b}
team join noCollision @e[type=slime,tag=lobbyMinigames]
effect give @e[type=slime,tag=lobbyMinigames] invisibility infinite 1 true
function lobby:visit/spawn_cart



# Team Joining Text
kill @e[tag=lobbyJoin]
summon text_display -534.00 18.5 575.00 {shadow:1b,alignment:"center",Tags:["lobbyJoin"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[2.5f,2.5f,2.5f]},text:'{"bold":true,"color":"#0088ff","translate":"lobby.Teams.Join","with":[{"translate":"generic.Blue"}]}',background:16777216,Rotation:[180f,0f],billboard:"vertical"}
summon text_display -540.50 17.81 573.50 {shadow:1b,alignment:"center",Tags:["lobbyJoin"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[2.5f,2.5f,2.5f]},text:'{"bold":true,"color":"red","translate":"lobby.Teams.Join","with":[{"translate":"generic.Red"}]}',background:16777216,Rotation:[180f,0f],billboard:"vertical"}
summon text_display -554.94 17.75 572.97 {shadow:1b,alignment:"center",Tags:["lobbyJoin"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[2.5f,2.5f,2.5f]},text:'{"bold":true,"color":"green","translate":"lobby.Teams.Join","with":[{"translate":"generic.Green"}]}',background:16777216,Rotation:[180f,0f],billboard:"vertical"}
summon text_display -561.03 18.13 574.94 {shadow:1b,alignment:"center",Tags:["lobbyJoin"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[2.5f,2.5f,2.5f]},text:'{"bold":true,"color":"gold","translate":"lobby.Teams.Join","with":[{"translate":"generic.Orange"}]}',background:16777216,Rotation:[180f,0f],billboard:"vertical"}
summon text_display -565.97 17.50 570.974 {shadow:1b,alignment:"center",Tags:["lobbyJoin"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[2.5f,2.5f,2.5f]},text:'{"bold":true,"color":"gray","translate":"lobby.Teams.Leave"}',background:16777216,Rotation:[180f,0f],billboard:"vertical"}

# Creator Credits
kill @e[type=text_display,tag=lobbyCredit]
# Einam
summon text_display -557 12.75 545 {shadow:1b,alignment:"center",Tags:["lobbyCredit"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[1.5f,1.5f,1.5f]},text:'{"bold":true,"color":"#00ff51","text":"Einam"}',background:16777216,Rotation:[180f,0f],billboard:"vertical"}
summon text_display -557 12.5 545 {shadow:1b,alignment:"center",Tags:["lobbyCredit"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.75f,0.75f,0.75f]},text:'{"color":"#00ff51","translate":"lobby.Credit.Builder"}',background:16777216,Rotation:[180f,0f],billboard:"vertical"}
# Hilloy
summon text_display -544.0 14.75 538 {shadow:1b,alignment:"center",Tags:["lobbyCredit"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[1.5f,1.5f,1.5f]},text:'{"bold":true,"color":"#8400ff","text":"Hilloy"}',background:16777216,Rotation:[180f,0f],billboard:"center"}
summon text_display -544.0 14.5 538 {shadow:1b,alignment:"center",Tags:["lobbyCredit"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.75f,0.75f,0.75f]},text:'{"color":"#8400ff","translate":"lobby.Credit.Modeller"}',background:16777216,Rotation:[180f,0f],billboard:"center"}
# UFO
summon item_display -542.3 20 538 {Tags:["lobbyCredit"],item:{id:"minecraft:carrot_on_a_stick",count:1,components:{"minecraft:custom_model_data":171}},transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[2f,2f,2f]}}
# OuO
summon text_display -534.0 15.5 540.25 {shadow:1b,alignment:"center",Tags:["lobbyCredit"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[1.5f,1.5f,1.5f]},text:'{"bold":true,"color":"#fff200","text":"OuO"}',background:16777216,Rotation:[180f,0f],billboard:"center"}
summon text_display -534.0 15.25 540.25 {shadow:1b,alignment:"center",Tags:["lobbyCredit"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.75f,0.75f,0.75f]},text:'{"color":"#fff200","translate":"lobby.Credit.MainModeller"}',background:16777216,Rotation:[180f,0f],billboard:"center"}
# Edou
summon text_display -524.5 16.75 549.75 {shadow:1b,alignment:"center",Tags:["lobbyCredit"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[1.5f,1.5f,1.5f]},text:'{"bold":true,"color":"#00a020","text":"PraiseEdo"}',background:16777216,Rotation:[180f,0f],billboard:"center"}
summon text_display -524.5 16.50 549.75 {shadow:1b,alignment:"center",Tags:["lobbyCredit"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.75f,0.75f,0.75f]},text:'{"color":"#00a020","translate":"lobby.Credit.Builder"}',background:16777216,Rotation:[180f,0f],billboard:"center"}
# Alvo
summon text_display -534 12.75 553 {shadow:1b,alignment:"center",Tags:["lobbyCredit"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[1.5f,1.5f,1.5f]},text:'{"bold":true,"color":"#00ffd0","text":"Alvo"}',background:16777216,Rotation:[180f,0f],billboard:"vertical"}
summon text_display -534 12.45 553 {shadow:1b,alignment:"center",Tags:["lobbyCredit"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.75f,0.75f,0.75f]},text:'{"color":"#00ffd0","translate":"lobby.Credit.Music"}',background:16777216,Rotation:[180f,0f],billboard:"vertical"}
summon text_display -534 12.675 553 {shadow:1b,alignment:"center",Tags:["lobbyCredit"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.5f,0.5f,0.5f]},text:'{"color":"#00ffd0","text":"@mateo_gil_ruth"}',background:16777216,Rotation:[180f,0f],billboard:"vertical"}
# Alon
summon text_display -511.75 11.5 577.25 {shadow:1b,alignment:"center",Tags:["lobbyCredit"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[1.5f,1.5f,1.5f]},text:'{"bold":true,"color":"#ff9900","text":"222alon"}',background:16777216,Rotation:[180f,0f],billboard:"vertical"}
summon text_display -511.75 11.25 577.25 {shadow:1b,alignment:"center",Tags:["lobbyCredit"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.75f,0.75f,0.75f]},text:'{"color":"#ff9900","translate":"lobby.Credit.MoralSupport"}',background:16777216,Rotation:[180f,0f],billboard:"vertical"}

# Main
summon text_display -548 23.50 580 {shadow:1b,alignment:"center",Tags:["lobbyCredit"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[4f,4f,4f]},text:'{"bold":true,"color":"#ff0000","text":"dv10"}',background:16777216,Rotation:[180f,0f],billboard:"center"}
summon text_display -548 22.75 580 {shadow:1b,alignment:"right",Tags:["lobbyCredit"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[2.5f,2.5f,2.5f]},text:'{"color":"#ff0000","translate":"lobby.Credit.MainBuilder"}',background:16777216,Rotation:[180f,0f],billboard:"center"}
summon text_display -541 21.50 580 {shadow:1b,alignment:"center",Tags:["lobbyCredit"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[4f,4f,4f]},text:'{"bold":true,"color":"#009dff","text":"JevinLevin"}',background:16777216,Rotation:[180f,0f],billboard:"center"}
summon text_display -541.25 20.75 580 {shadow:1b,alignment:"right",Tags:["lobbyCredit"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[2.5f,2.5f,2.5f]},text:'{"color":"#009dff","translate":"lobby.Credit.MainDeveloper"}',background:16777216,Rotation:[180f,0f],billboard:"center"}
summon text_display -555 21.50 580 {shadow:1b,alignment:"left",Tags:["lobbyCredit"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[4f,4f,4f]},text:'{"bold":true,"color":"#0d00ff","text":"T4Bl3rUs"}',background:16777216,Rotation:[180f,0f],billboard:"center"}
summon text_display -554.0 20.75 580 {shadow:1b,alignment:"left",Tags:["lobbyCredit"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[2.5f,2.5f,2.5f]},text:'{"color":"#0d00ff","translate":"lobby.Credit.Developer"}',background:16777216,Rotation:[180f,0f],billboard:"center"}


# Pirate phillip
kill @e[tag=lobbyPhil]
summon armor_stand -560 11 522 {Invulnerable:1b,Invisible:1b,Tags:["lobbyPhil"],DisabledSlots:4144959,Rotation:[-45F,0F],ArmorItems:[{},{},{},{id:"minecraft:carrot_on_a_stick",count:1,components:{"minecraft:custom_model_data":10}}]}
summon text_display -559.0 13.5 523.0 {alignment:"center",billboard:"vertical", default_background:0b,shadow:1b,Rotation:[-90F,0F],Tags:["lobbyPhil"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[1f,1f,1f]},text:'{"bold":true,"color":"light_purple","translate":"advancements.island.phil"}',background:0}

# Play text
tp @e[tag=lobbyMain] 0 -150 0
kill @e[tag=lobbyMain]
summon text_display -548 14.5 578 {shadow:1b,alignment:"center",Tags:["lobbyMain"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[3f,3f,3f]},text:'{"bold":true,"color":"light_purple","translate":"lobby.Play"}',background:16777216,Rotation:[180f,0f]}
summon text_display -548 14.25 578 {shadow:1b,alignment:"center",Tags:["lobbyMain"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[1f,1f,1f]},text:'{"bold":false,"color":"light_purple","translate":"lobby.BGI"}',background:16777216,Rotation:[180f,0f]}

# Stickypiston Promo
summon text_display -524 16 554 {shadow:1b,alignment:"center",Tags:["lobbyMain"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[1f,1f,1f]},text:'{"text":"d","font":"minecraft:fade"}',background:16777216,Rotation:[135f,0f]}
summon text_display -524 16 554 {shadow:1b,alignment:"center",Tags:["lobbyMain"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[1f,1f,1f]},text:'{"text":"d","font":"minecraft:fade"}',background:16777216,Rotation:[-45f,0f]}
summon text_display -524 14 554 {shadow:1b,alignment:"center",Tags:["lobbyMain"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[1.5f,1.5f,1.5f]},text:'{"translate":"lobby.SP.Header","color":"#03b706"}',background:-2113929216,Rotation:[135f,0f]}
summon text_display -524 13.75 554 {shadow:1b,alignment:"center",Tags:["lobbyMain"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[1f,1f,1f]},text:'{"bold":true,"translate":"lobby.SP.Subheader","color":"#03b706"}',background:-2113929216,Rotation:[135f,0f]}
summon interaction -524 13.5 554 {Tags:["lobbyMain","stickypiston"], width:1f, response:1b, height:1f}

setblock -556 11 521 air
setblock -556 11 521 lectern[facing=south,has_book=true]{Book:{id:"minecraft:written_book",count:1,components:{"minecraft:written_book_content":{title:"",author:"",pages:['[{"text":"","color":"dark_gray"},{"translate":"lobby.Credits.Thanks","color":"light_purple","bold":true},{"text":"\\n\\n"},{"text":"McTsts (Crowdford)\\nMulvX (PlayerMotion)\\nstr4ky (Icon)\\nRoudium\\nHalftroller\\nTakumi\\nAsdru\\nDominexis\\nDuckable\\nMarattine\\nMusemory\\nIestyn\\nVilder50"}]','[{"text":"","color":"dark_gray"},{"translate":"lobby.Credits.Testers","color":"light_purple","bold":true},{"text":"\\n\\n"},{"text":"aspookabie\\nP2ime\\nFatalVortex\\nCompleteCircuit\\nIntvrlvde\\nAlex_Succeroni\\nJGIA\\nKchouky\\nChhistenn\\nRaph9213\\nPikminFan1"}]','[{"text":"","color":"dark_gray"},{"text":"Toluro\\ncloudtapz\\nLorenOLoren\\niWacky\\nGreatBreakerBob\\nMatasse\\nAgourk\\nQu1nten\\npoyotoyt\\nbl4z30815\\nThatisThomas\\nTheWorfer27\\nCosmicCortex\\nJohn Glacious\\n"}]','[{"text":"","color":"dark_gray"},{"text":"kiwott\\nxavilr\\nojichanoziichiya\\nnewratou\\nWheety\\naspidcatowo\\nElCrepe\\nPixelMario1105\\ndragon_tornado\\nPartyPiratePhil\\nBansed\\nCaptainCool02\\nflcme"}]','[{"text":"","color":"dark_gray"},{"text":"ErrorCraft\\nRedChaos173\\nCreamyYT\\nDragonMarc\\nMegafaust\\nTheVoid357\\nGaming_RB\\nGloriousGlider8"}]']}}}} replace


# Discord Promo
summon text_display -520 15 538 {shadow:0b,alignment:"center",Tags:["lobbyMain"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.3f,0.3f,0.3f]},text:'{"text":"e","font":"minecraft:fade"}',background:16777216,Rotation:[45f,0f]}
summon text_display -520 15 538 {shadow:0b,alignment:"center",Tags:["lobbyMain"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.3f,0.3f,0.3f]},text:'{"text":"e","font":"minecraft:fade"}',background:16777216,Rotation:[-135f,0f]}
summon text_display -520 13.5 538 {shadow:1b,alignment:"center",Tags:["lobbyMain"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[1.5f,1.5f,1.5f]},text:'{"translate":"lobby.Discord.Header1","color":"#5865F2"}',background:-2113929216,Rotation:[45f,0f]}
summon text_display -520 13.2875 538 {shadow:1b,alignment:"center",Tags:["lobbyMain"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.75f,0.75f,0.75f]},text:'{"translate":"lobby.Discord.Header2","color":"#5865F2"}',background:-2113929216,Rotation:[45f,0f],line_width:300}
summon text_display -520 13.0 538 {shadow:1b,alignment:"center",Tags:["lobbyMain"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[1f,1f,1f]},text:'{"bold":true,"translate":"lobby.Discord.Subheader","color":"#5865F2"}',background:-2113929216,Rotation:[45f,0f]}
summon interaction -520 12.5 538 {Tags:["lobbyMain","discord"], width:1f, response:1b, height:2f}

# Translation Promo
summon text_display -524.0 14.5 573 {shadow:0b,alignment:"center",Tags:["lobbyMain"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.3f,0.3f,0.3f]},text:'{"text":"f","font":"minecraft:fade"}',background:16777216,Rotation:[180f,0f]}
summon text_display -524.0 14.5 573 {shadow:0b,alignment:"center",Tags:["lobbyMain"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.3f,0.3f,0.3f]},text:'{"text":"f","font":"minecraft:fade"}',background:16777216,Rotation:[0f,0f]}
summon text_display -524.0 13.0 573 {shadow:1b,alignment:"center",Tags:["lobbyMain"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[1.5f,1.5f,1.5f]},text:'{"translate":"lobby.Translations.Header","color":"#f2a058"}',background:-2113929216,Rotation:[180f,0f]}
summon text_display -524.0 12.55 573 {shadow:1b,alignment:"center",Tags:["lobbyMain"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[1f,1f,1f]},text:'{"bold":true,"translate":"lobby.Translations.Subheader.1.1","color":"#f2a058"}',background:-2113929216,Rotation:[180f,0f]}
summon text_display -524.0 12.25 573 {shadow:1b,alignment:"center",Tags:["lobbyMain"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[1f,1f,1f]},text:'{"bold":true,"translate":"lobby.Translations.Subheader.1.2","color":"#f2a058"}',background:-2113929216,Rotation:[180f,0f]}
summon text_display -524.0 11.75 573 {shadow:1b,alignment:"center",Tags:["lobbyMain"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[1f,1f,1f]},text:'{"bold":true,"translate":"lobby.Translations.Subheader.2.1","color":"#f2a058"}',background:-2113929216,Rotation:[180f,0f]}
summon text_display -524.0 11.5 573 {shadow:1b,alignment:"center",Tags:["lobbyMain"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[1f,1f,1f]},text:'{"bold":true,"translate":"lobby.Translations.Subheader.2.2","color":"#f2a058"}',background:-2113929216,Rotation:[180f,0f]}
setblock -527 11 573 air
setblock -527 11 573 lectern[facing=north,has_book=true]{Book:{id:"minecraft:written_book",count:1,components:{"minecraft:written_book_content":{title:"",author:"",pages:['[{"text":"","color":"dark_gray"},{"translate":"lobby.Credits.Translators","color":"light_purple","bold":true},{"text":"\\n\\n"},{"bold":true,"translate":"lobby.Translations.Language.French"},{"text":"\\n"},{"text":"Klexium\\nrainbowyoshi\\nnervarze"},{"text":"\\n\\n"},{"bold":true,"translate":"lobby.Translations.Language.Spanish"},{"text":"\\n"},{"text":"Tablerus\\nalvomdiga\\nIronLuigi\\nGospelBG"}]','[{"text":"","color":"dark_gray"},{"bold":true,"translate":"lobby.Translations.Language.German"},{"text":"\\n"},{"text":"Mkessler\\niam_best\\nTheVoid\\nurarashiraishi"},{"text":"\\n\\n"},{"bold":true,"translate":"lobby.Translations.Language.Italian"},{"text":"\\n"},{"text":"SimoQB\\nBenny810"},{"text":"\\n\\n"},{"bold":true,"translate":"lobby.Translations.Language.Chinese"},{"text":"\\n"},{"text":"cat813\\nZeroIceBear"}]','[{"text":"","color":"dark_gray"},{"bold":true,"translate":"lobby.Translations.Language.Dutch"},{"text":"\\n"},{"text":"Piemelpiraat\\nrobbertjan\\nurarashiraishi"},{"text":"\\n\\n"},{"bold":true,"translate":"lobby.Translations.Language.Turkish"},{"text":"\\n"},{"text":"KingExodus"},{"text":"\\n\\n"},{"bold":true,"translate":"lobby.Translations.Language.Japanese"},{"text":"\\n"},{"text":"mtmtyu\\ntai_zazanek"}]','[{"text":"","color":"dark_gray"},{"bold":true,"translate":"lobby.Translations.Language.Portuguese"},{"text":"\\n"},{"text":"funkadelic___"},{"text":"\\n\\n"},{"bold":true,"translate":"lobby.Translations.Language.Bulgarian"},{"text":"\\n"},{"text":"boborozo"},{"text":"\\n\\n"},{"bold":true,"translate":"lobby.Translations.Language.Korean"},{"text":"\\n"},{"text":"StationAlpha"},{"text":"\\n\\n"},{"bold":true,"translate":"lobby.Translations.Language.Russian"},{"text":"\\n"},{"text":"oscarkogi"}]']}}}} replace



# Graph
tp @e[tag=lobbyGraph] 0 -150 0
kill @e[tag=lobbyGraph]
summon text_display -568 13 553 {shadow:1b,alignment:"center",Tags:["lobbyGraph"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[1.5f,1.5f,1.5f]},text:'{"translate":"lobby.Graph.TP","color":"#f25858"}',background:0,Rotation:[-45f,0f]}
summon interaction -568 13 553 {Tags:["lobbyGraph","graphTP"],Rotation:[-90f,0f], width:1f, response:1b, height:1f}
summon text_display -570 26 552 {shadow:1b,alignment:"center",Tags:["lobbyGraph","graphBack"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[1.5f,1.5f,1.5f]},text:'{"translate":"lobby.Graph.Back","color":"#f25858"}',background:0,Rotation:[-45f,0f]}
summon interaction -570 26 552 {Tags:["lobbyGraph","graphBack"],Rotation:[-90f,0f], width:1f, response:1b, height:1f}

kill @e[type=text_display,tag=graphKey]
summon text_display -575 31.5 562.0 {Tags:["graphKey","blue"],background:0,shadow:1b,alignment:"center",transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.75f,0.75f,0.75f]},text:'""',Rotation:[-90f,0f]}
summon text_display -575 31 562.0 {Tags:["graphKey","red"],background:0,shadow:1b,alignment:"center",transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.75f,0.75f,0.75f]},text:'""',Rotation:[-90f,0f]}
summon text_display -575 30.5 562.0 {Tags:["graphKey","green"],background:0,shadow:1b,alignment:"center",transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.75f,0.75f,0.75f]},text:'""',Rotation:[-90f,0f]}
summon text_display -575 30 562.0 {Tags:["graphKey","orange"],background:0,shadow:1b,alignment:"center",transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.75f,0.75f,0.75f]},text:'""',Rotation:[-90f,0f]}



# Lobby Parkour Info
setblock -495 16 553 air
setblock -493 16 549 air
setblock -493 16 551 air
setblock -493 16 550 air
setblock -495 16 553 lectern[facing=west,has_book=true]{Book:{id:"minecraft:written_book",count:1,components:{"minecraft:written_book_content":{title:"",author:"",pages:['[{"translate":"lobby.Parkour.Book.1"},{"text":"\\n\\n"},{"translate":"lobby.Parkour.Book.2"}]','[{"translate":"lobby.Parkour.Book.3"},{"text":"\\n\\n"},{"translate":"lobby.Parkour.Book.4"},{"text":"\\n\\n"},{"translate":"lobby.Parkour.Book.5"}]']}}}} replace
setblock -493 16 549 minecraft:jungle_sign[rotation=4,waterlogged=false]{front_text:{color:"black",has_glowing_text:1b,messages:['{"translate":"lobby.Parkour.Warning.1"}','{"translate":"lobby.Parkour.Warning.2"}','{"text":""}','{"text":""}']},is_waxed:0b}
setblock -493 16 551 minecraft:jungle_sign[rotation=4,waterlogged=false]{front_text:{color:"black",has_glowing_text:1b,messages:['{"translate":"lobby.Parkour.Warning.1"}','{"translate":"lobby.Parkour.Warning.2"}','{"text":""}','{"text":""}']},is_waxed:0b}
setblock -493 16 550 minecraft:jungle_sign[rotation=4,waterlogged=false]{front_text:{color:"black",has_glowing_text:1b,messages:['[{"translate":"lobby.Parkour.Sign.1"},{"translate":"lobby.Parkour.Sign.2"}]','{"text":""}','{"text":""}','{"text":""}']},is_waxed:0b}
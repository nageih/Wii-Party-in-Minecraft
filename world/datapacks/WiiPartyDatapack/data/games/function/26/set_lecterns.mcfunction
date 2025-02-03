# Fills the area with barrriers
fill 24942 19 25046 24940 21 25048 minecraft:barrier
fill 24942 19 25066 24940 21 25064 minecraft:barrier
fill 24922 19 25066 24924 21 25064 minecraft:barrier
fill 24922 19 25046 24924 21 25048 minecraft:barrier


# Fills in those barriers with air
fill 24941 19 25065 24941 20 25065 minecraft:air
fill 24923 19 25065 24923 20 25065 minecraft:air
fill 24923 19 25047 24923 20 25047 minecraft:air
fill 24941 19 25047 24941 20 25047 minecraft:air

setblock 24941 19 25065 minecraft:barrier
setblock 24923 19 25065 minecraft:barrier
setblock 24941 19 25047 minecraft:barrier
setblock 24923 19 25047 minecraft:barrier

# Books must have all basic tags (title, author, pages...) or else it won't work
setblock 24941 20 25065 minecraft:lectern[has_book=true]{Book:{id:"minecraft:written_book",Count:1b,tag:{pages:[""],author:"Wii Party in MC!",title:"Tutorial"}}}
setblock 24923 20 25065 minecraft:lectern[has_book=true]{Book:{id:"minecraft:written_book",Count:1b,tag:{pages:[""],author:"Wii Party in MC!",title:"Tutorial"}}}
setblock 24941 20 25047 minecraft:lectern[has_book=true]{Book:{id:"minecraft:written_book",Count:1b,tag:{pages:[""],author:"Wii Party in MC!",title:"Tutorial"}}}
setblock 24923 20 25047 minecraft:lectern[has_book=true]{Book:{id:"minecraft:written_book",Count:1b,tag:{pages:[""],author:"Wii Party in MC!",title:"Tutorial"}}}

tp @a[tag=ingame,team=blue] 24941 19 25065 135 0
tp @a[tag=ingame,team=red] 24923 19 25065 -135 0
tp @a[tag=ingame,team=green] 24941 19 25047 45 0
tp @a[tag=ingame,team=orange] 24923 19 25047 -45 0
kill @e[type=minecraft:falling_block,tag=tileGlow]

summon minecraft:falling_block ~ ~ ~ {BlockState:{Name:"minecraft:green_concrete"},NoGravity:1b,Time:-2147483648,Glowing:1b,Tags:["tileGlow"]}
summon minecraft:falling_block ~ ~ ~0.99 {BlockState:{Name:"minecraft:dark_prismarine_stairs",Properties:{facing:"north"}},NoGravity:1b,Time:-2147483648,Glowing:1b,Tags:["tileGlow"]}
summon minecraft:falling_block ~0.99 ~ ~ {BlockState:{Name:"minecraft:dark_prismarine_stairs",Properties:{facing:"west"}},NoGravity:1b,Time:-2147483648,Glowing:1b,Tags:["tileGlow"]}
summon minecraft:falling_block ~ ~ ~-0.99 {BlockState:{Name:"minecraft:dark_prismarine_stairs",Properties:{facing:"south"}},NoGravity:1b,Time:-2147483648,Glowing:1b,Tags:["tileGlow"]}
summon minecraft:falling_block ~-0.99 ~ ~ {BlockState:{Name:"minecraft:dark_prismarine_stairs",Properties:{facing:"east"}},NoGravity:1b,Time:-2147483648,Glowing:1b,Tags:["tileGlow"]}
summon minecraft:falling_block ~0.99 ~ ~0.99 {BlockState:{Name:"minecraft:mossy_cobblestone_slab"},NoGravity:1b,Time:-2147483648,Glowing:1b,Tags:["tileGlow"]}
summon minecraft:falling_block ~0.99 ~ ~-0.99 {BlockState:{Name:"minecraft:mossy_cobblestone_slab"},NoGravity:1b,Time:-2147483648,Glowing:1b,Tags:["tileGlow"]}
summon minecraft:falling_block ~-0.99 ~ ~0.99 {BlockState:{Name:"minecraft:mossy_cobblestone_slab"},NoGravity:1b,Time:-2147483648,Glowing:1b,Tags:["tileGlow"]}
summon minecraft:falling_block ~-0.99 ~ ~-0.99 {BlockState:{Name:"minecraft:mossy_cobblestone_slab"},NoGravity:1b,Time:-2147483648,Glowing:1b,Tags:["tileGlow"]}

execute as @e[type=minecraft:falling_block,tag=tileGlow] run team join colorDarkGreen
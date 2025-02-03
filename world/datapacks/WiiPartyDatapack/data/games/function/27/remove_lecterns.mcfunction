#   Author        =   @ T4Bl3rUs
#   Description   =   Removes the lecterns with the start menu inside
#   Called By     =   games:27/start_play


# Removes all the barriers
fill 26010 25 25988 26008 27 25986 minecraft:air
fill 25992 25 25988 25990 27 25986 minecraft:air

# Kills the books that drop
kill @e[type=minecraft:item,nbt={Item:{id:"minecraft:written_book"}}]

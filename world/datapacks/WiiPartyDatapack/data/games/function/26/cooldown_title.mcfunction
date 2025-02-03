#   Author        =   @ JevinLevin
#   Description   =   Shows title showing how long until the player can hit again
#   Called By     =   games:26/player


# Blank title so that the actionbar can show up
#title @s[scores={26hitCooldown=1..}] title ""
title @s[scores={26hitCooldown=1}] actionbar [{"text":"⏺⏺⏺⏺⏺","color":"white","type":"text"}]

# Shows coloured circles representing how long until the player can hit again
    # Blue team
title @s[scores={26hitCooldown=24..30},team=blue] actionbar {"text":"⏺⏺⏺⏺⏺","color":"#0088ff","type":"text"}
title @s[scores={26hitCooldown=18..23},team=blue] actionbar [{"text":"⏺⏺⏺⏺","color":"#0088ff","type":"text"},{"text":"⏺","color":"white","type":"text"}]
title @s[scores={26hitCooldown=12..17},team=blue] actionbar [{"text":"⏺⏺⏺","color":"#0088ff","type":"text"},{"text":"⏺⏺","color":"white","type":"text"}]
title @s[scores={26hitCooldown=6..11},team=blue] actionbar [{"text":"⏺⏺","color":"#0088ff","type":"text"},{"text":"⏺⏺⏺","color":"white","type":"text"}]
title @s[scores={26hitCooldown=2..5},team=blue] actionbar [{"text":"⏺","color":"#0088ff","type":"text"},{"text":"⏺⏺⏺⏺","color":"white","type":"text"}]
    # Red
title @s[scores={26hitCooldown=24..30},team=red] actionbar {"text":"⏺⏺⏺⏺⏺","color":"red","type":"text"}
title @s[scores={26hitCooldown=18..23},team=red] actionbar [{"text":"⏺⏺⏺⏺","color":"red","type":"text"},{"text":"⏺","color":"white","type":"text"}]
title @s[scores={26hitCooldown=12..17},team=red] actionbar [{"text":"⏺⏺⏺","color":"red","type":"text"},{"text":"⏺⏺","color":"white","type":"text"}]
title @s[scores={26hitCooldown=6..11},team=red] actionbar [{"text":"⏺⏺","color":"red","type":"text"},{"text":"⏺⏺⏺","color":"white","type":"text"}]
title @s[scores={26hitCooldown=2..5},team=red] actionbar [{"text":"⏺","color":"red","type":"text"},{"text":"⏺⏺⏺⏺","color":"white","type":"text"}]
    # Green
title @s[scores={26hitCooldown=24..30},team=green] actionbar {"text":"⏺⏺⏺⏺⏺","color":"green","type":"text"}
title @s[scores={26hitCooldown=18..23},team=green] actionbar [{"text":"⏺⏺⏺⏺","color":"green","type":"text"},{"text":"⏺","color":"white","type":"text"}]
title @s[scores={26hitCooldown=12..17},team=green] actionbar [{"text":"⏺⏺⏺","color":"green","type":"text"},{"text":"⏺⏺","color":"white","type":"text"}]
title @s[scores={26hitCooldown=6..11},team=green] actionbar [{"text":"⏺⏺","color":"green","type":"text"},{"text":"⏺⏺⏺","color":"white","type":"text"}]
title @s[scores={26hitCooldown=2..5},team=green] actionbar [{"text":"⏺","color":"green","type":"text"},{"text":"⏺⏺⏺⏺","color":"white","type":"text"}]
    # Orange
title @s[scores={26hitCooldown=24..30},team=orange] actionbar {"text":"⏺⏺⏺⏺⏺","color":"gold","type":"text"}
title @s[scores={26hitCooldown=18..23},team=orange] actionbar [{"text":"⏺⏺⏺⏺","color":"gold","type":"text"},{"text":"⏺","color":"white","type":"text"}]
title @s[scores={26hitCooldown=12..17},team=orange] actionbar [{"text":"⏺⏺⏺","color":"gold","type":"text"},{"text":"⏺⏺","color":"white","type":"text"}]
title @s[scores={26hitCooldown=6..11},team=orange] actionbar [{"text":"⏺⏺","color":"gold","type":"text"},{"text":"⏺⏺⏺","color":"white","type":"text"}]
title @s[scores={26hitCooldown=2..5},team=orange] actionbar [{"text":"⏺","color":"gold","type":"text"},{"text":"⏺⏺⏺⏺","color":"white","type":"text"}]
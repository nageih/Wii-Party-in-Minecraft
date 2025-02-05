#   Author        =   @ JevinLevin
#   Description   =   Displays actionbar titles showing which direction the player will turn
#   Called By     =   games:4/player


# Displays actionbar titles for players showing which direction they will turn next
# Blue 
    # Left
title @s[tag=4left,team=blue] actionbar {"nbt":"colors.blue","storage":"minecraft:config","interpret":true,"extra":[{"text":"◀◀ ","bold":true,"type":"text"},{"text":" ","type":"text"},{"translate":"game.BackAttack.Turning","bold":false,"underlined":true,"with":[{"translate":"game.BackAttack.Left","underlined":true}]},{"text":" ","type":"text"},{"text":" ◀◀","type":"text"}],"source":"storage","type":"nbt"}
    # Right
title @s[tag=4right,team=blue] actionbar {"nbt":"colors.blue","storage":"minecraft:config","interpret":true,"extra":[{"text":"▶▶ ","bold":true,"type":"text"},{"text":" ","type":"text"},{"translate":"game.BackAttack.Turning","bold":false,"underlined":true,"with":[{"translate":"game.BackAttack.Right","underlined":true}]},{"text":" ","type":"text"},{"text":" ▶▶","type":"text"}],"source":"storage","type":"nbt"}
# Red 
    # Left
title @s[tag=4left,team=red] actionbar {"nbt":"colors.red","storage":"minecraft:config","interpret":true,"extra":[{"text":"◀◀ ","bold":true,"type":"text"},{"text":" ","type":"text"},{"translate":"game.BackAttack.Turning","bold":false,"underlined":true,"with":[{"translate":"game.BackAttack.Left","underlined":true}]},{"text":" ","type":"text"},{"text":" ◀◀","type":"text"}],"source":"storage","type":"nbt"}
    # Right
title @s[tag=4right,team=red] actionbar {"nbt":"colors.red","storage":"minecraft:config","interpret":true,"extra":[{"text":"▶▶ ","bold":true,"type":"text"},{"text":" ","type":"text"},{"translate":"game.BackAttack.Turning","bold":false,"underlined":true,"with":[{"translate":"game.BackAttack.Right","underlined":true}]},{"text":" ","type":"text"},{"text":" ▶▶","type":"text"}],"source":"storage","type":"nbt"}
# Green 
    # Left
title @s[tag=4left,team=green] actionbar {"nbt":"colors.green","storage":"minecraft:config","interpret":true,"extra":[{"text":"◀◀ ","bold":true,"type":"text"},{"text":" ","type":"text"},{"translate":"game.BackAttack.Turning","bold":false,"underlined":true,"with":[{"translate":"game.BackAttack.Left","underlined":true}]},{"text":" ","type":"text"},{"text":" ◀◀","type":"text"}],"source":"storage","type":"nbt"}
    # Right 
title @s[tag=4right,team=green] actionbar {"nbt":"colors.green","storage":"minecraft:config","interpret":true,"extra":[{"text":"▶▶ ","bold":true,"type":"text"},{"text":" ","type":"text"},{"translate":"game.BackAttack.Turning","bold":false,"underlined":true,"with":[{"translate":"game.BackAttack.Right","underlined":true}]},{"text":" ","type":"text"},{"text":" ▶▶","type":"text"}],"source":"storage","type":"nbt"}
# Orange 
    # Left
title @s[tag=4left,team=orange] actionbar {"nbt":"colors.orange","storage":"minecraft:config","interpret":true,"extra":[{"text":"◀◀ ","bold":true,"type":"text"},{"text":" ","type":"text"},{"translate":"game.BackAttack.Turning","bold":false,"underlined":true,"with":[{"translate":"game.BackAttack.Left","underlined":true}]},{"text":" ","type":"text"},{"text":" ◀◀","type":"text"}],"source":"storage","type":"nbt"}
    # Right
title @s[tag=4right,team=orange] actionbar {"nbt":"colors.orange","storage":"minecraft:config","interpret":true,"extra":[{"text":"▶▶ ","bold":true,"type":"text"},{"text":" ","type":"text"},{"translate":"game.BackAttack.Turning","bold":false,"underlined":true,"with":[{"translate":"game.BackAttack.Right","underlined":true}]},{"text":" ","type":"text"},{"text":" ▶▶","type":"text"}],"source":"storage","type":"nbt"}

scoreboard players operation test= minigameSelect = game1= minigameSelect
function board:select/set_minigame_storage {"game":"game1"}
scoreboard players operation test= minigameSelect = game2= minigameSelect
function board:select/set_minigame_storage {"game":"game2"}
scoreboard players operation test= minigameSelect = game3= minigameSelect
function board:select/set_minigame_storage {"game":"game3"}


# Set currently selected minigame
function board:select/set_minigame_bold

function board:select/minigame_images with storage board:minigame_select images

title @a[tag=playing] subtitle ""
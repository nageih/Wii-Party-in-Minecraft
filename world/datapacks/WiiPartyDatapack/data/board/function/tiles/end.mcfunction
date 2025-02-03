# Reset events
function board:tiles/boost/reset
function board:tiles/dino/reset
function board:tiles/dragonwall/reset
function board:tiles/jump/reset
function board:tiles/ribcage/reset
function board:tiles/ropeswing/reset
function board:tiles/shout_space/reset
function board:tiles/skull/reset
function board:tiles/spikeball/reset
function board:tiles/tornado/reset
function board:tiles/ufo/reset
function board:tiles/volcano/reset
function board:tiles/volcano/landed/reset
function board:tiles/final/reset

# Clear functions
schedule clear board:dice_roll/new_go
schedule clear board:tiles/volcano/return_to_normal
schedule clear board:dice_roll/next
schedule clear board:dice_roll/double
schedule clear board:dice_roll/spectator_face_player
schedule clear board:tiles/boost/start
schedule clear board:tiles/ufo/start
schedule clear board:tiles/tornado/start
schedule clear board:tiles/skull/start
schedule clear board:tiles/volcano/start
schedule clear board:tiles/volcano/landed/start
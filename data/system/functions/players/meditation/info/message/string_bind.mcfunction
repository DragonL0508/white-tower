$data modify storage attribute:cache value set from storage attribute:config $(id).$(level).$(type)
$data merge storage attribute:cache {des1:"$(des1)", des2:"$(des2)"}

function system:players/meditation/info/message/save_string with storage attribute:cache
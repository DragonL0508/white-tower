#animation
function spell:spelling/animation/spelling with storage spelling.animation.angle
#timer
scoreboard players add @s spell.timer 1

#is using shield?
execute if entity @s[tag=shield.enable] run function system:players/shield/disable

#spells execute
execute if score @s spell.timer = @s spell.spelling_time run function spell:spelling/execute
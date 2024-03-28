title @s times 5 10 10
title @s title {"text": "\uE000"}
tellraw @s {"text": "§7§o*  你睜開了雙眼 *"}
effect give @s blindness 1 0 true
effect clear @s invisibility
effect clear @s speed
effect clear @s jump_boost

function cb:schedule {ticks:10,selector:"@s",command:"function system:players/meditation/teleport_back"}
function cb:schedule {ticks:10,selector:"@s",command:"scoreboard players set @s actionbar_type 1"}

tag @s remove in_meditation
scoreboard players set $condition npc.state 1
function endsky_npc:common/option/condition/check {index:0}
execute if score $condition npc.state matches 0 store success score $changed npc.look_option run tag @e[tag=npc.option_a,tag=npc.this] add npc.invalid
execute if score $condition npc.state matches 0 if score $changed npc.look_option matches 1 run data modify entity @e[limit=1,type=minecraft:text_display,tag=npc.option_a,tag=npc.this] text set value '{"color":"gray","text":"","extra":[{"nbt":"data.Dialogue.Options[0].Option","entity":"@e[limit=1,type=minecraft:marker,tag=npc.this]","interpret":true}]}'
execute if score $condition npc.state matches 1 store success score $changed npc.look_option run tag @e[tag=npc.option_a,tag=npc.this] remove npc.invalid
execute if score $condition npc.state matches 1 if score $changed npc.look_option matches 1 run data modify entity @e[limit=1,type=minecraft:text_display,tag=npc.option_a,tag=npc.this] text set value '{"color":"black","text":"","extra":[{"nbt":"data.Dialogue.Options[0].Option","entity":"@e[limit=1,type=minecraft:marker,tag=npc.this]","interpret":true}]}'
execute if score $changed npc.look_option matches 1 run scoreboard players set $refresh npc.look_option 1

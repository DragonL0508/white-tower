# 收音機亂加
function system:players/pots/add_mana
data modify entity @e[limit=1,type=text_display,tag=npc.this,tag=npc.potion_m,tag=npc.potion_number] text set value '{"color":"black","score":{"name":"@p[tag=npc.user]","objective": "Mpots.max"}}'
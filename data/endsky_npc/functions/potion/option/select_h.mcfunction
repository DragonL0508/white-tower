# 收音機亂加
function system:players/pots/add_heal
data modify entity @e[limit=1,type=text_display,tag=npc.this,tag=npc.potion_h,tag=npc.potion_number] text set value '{"color":"black","score":{"name":"@p[tag=npc.user]","objective": "Hpots.max"}}'
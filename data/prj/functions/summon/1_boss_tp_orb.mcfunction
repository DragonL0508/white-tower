#set id
data merge storage prj:this {id:"1_boss_tp_orb"}

#set display name
data merge storage prj:this {display_name:"札爾修斯"}

#set speed (blocks per tick)
data merge storage prj:this {speed:0.7}

#set life time (tick)
data merge storage prj:this {lifetime:999}

#set damage
data merge storage prj:this {damage:0}

#can through wall? (0 - false, 1 - true)
data merge storage prj:this {through_wall:1}

#set target type (0 - none, 1 - hostile, 2 - player)
data merge storage prj:this {target:1}


#------------summon entity------------
summon marker ~ ~ ~ {Tags:["prj.this"],teleport_duration:1}

data modify storage prj:this owner set from entity @s UUID
execute as @e[tag=prj.this] run function prj:command/set_id
execute as @e[tag=prj.this] at @s run function prj:command/start with storage prj:this
#-------------------------------------
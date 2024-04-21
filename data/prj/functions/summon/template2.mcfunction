#set id
data merge storage prj:this {id:"template2"}

#set display name
data merge storage prj:this {display_name:"prj_name"}

#set speed (blocks per tick)
data merge storage prj:this {speed:0.5}

#set life time (tick)
data merge storage prj:this {lifetime:200}

#set damage
data merge storage prj:this {damage:10}

#can through wall? (0 - false, 1 - true)
data merge storage prj:this {through_wall:0}

#set target type (0 - none, 1 - hostile, 2 - player)
data merge storage prj:this {target:2}


#------------summon entity------------
summon marker ~ ~ ~ {Tags:["prj.this"]}

data modify storage prj:this owner set from entity @s UUID
execute as @e[tag=prj.this] run function prj:command/set_id
execute as @e[tag=prj.this] at @s run function prj:command/start with storage prj:this
#-------------------------------------
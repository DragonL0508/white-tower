#set id
data merge storage prj:this {id:"1_boss_tracking_orb"}

#set display name
data merge storage prj:this {display_name:"札爾修斯"}

#set speed (blocks per tick)
data merge storage prj:this {speed:0.5}

#set life time (tick)
data merge storage prj:this {lifetime:100}

#set damage
data merge storage prj:this {damage:0}

#can through wall? (0 - false, 1 - true)
data merge storage prj:this {through_wall:0}

#set target type (0 - none, 1 - hostile, 2 - player)
data merge storage prj:this {target:2}


#------------summon entity------------
summon item_display ~ ~ ~ {Tags:["prj.this"],item:{id:"minecraft:echo_shard",Count:1b,tag:{CustomModelData:1}},teleport_duration:1,billboard:"center",transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.5f,0.5f,0.5f]},brightness:{sky:15,block:15}}

data modify storage prj:this owner set from entity @s UUID
execute as @e[tag=prj.this] run function prj:command/set_id
execute as @e[tag=prj.this] at @s run function prj:command/start with storage prj:this
#-------------------------------------
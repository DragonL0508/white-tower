#this is run on players for registration for redundancy
#removing tags
tag @s remove entityid.registered
tag @s remove entityid.0.0
tag @s remove entityid.0.1
tag @s remove entityid.1.0
tag @s remove entityid.1.1
tag @s remove entityid.2.0
tag @s remove entityid.2.1
tag @s remove entityid.3.0
tag @s remove entityid.3.1
tag @s remove entityid.4.0
tag @s remove entityid.4.1
tag @s remove entityid.5.0
tag @s remove entityid.5.1
tag @s remove entityid.6.0
tag @s remove entityid.6.1
tag @s remove entityid.7.0
tag @s remove entityid.7.1
tag @s remove entityid.8.0
tag @s remove entityid.8.1
tag @s remove entityid.9.0
tag @s remove entityid.9.1 
tag @s remove entityid.10.0
tag @s remove entityid.10.1 
tag @s remove entityid.11.0
tag @s remove entityid.11.1 
tag @s remove entityid.12.0
tag @s remove entityid.12.1 
tag @s remove entityid.13.0
tag @s remove entityid.13.1 
tag @s remove entityid.14.0
tag @s remove entityid.14.1 
tag @s remove entityid.15.0
tag @s remove entityid.15.1

#resetting score
scoreboard players reset @s entityid
 
#re-assigning id
execute if score #loaded entityid matches 1 run function entityid:assign_id

# 預設開啟監聽
scoreboard players set @s ehp_listen 1
scoreboard players set @s ekp_listen 1
scoreboard players set @s phe_listen 1
scoreboard players set @s pke_listen 1
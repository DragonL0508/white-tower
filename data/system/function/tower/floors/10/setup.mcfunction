#time limit
data merge storage tower:floor.data {timelimit:240}

#set waves
data merge storage tower:floor.data {waves:3}

#floor type?
#1 - normal, 2 - boss fight, 3 - puzzle
data merge storage tower:floor.data {type:2}

#teleporter tag
data merge storage tower:floor.data {tp:"1-10.boss"}

#leave teleporter tag
data merge storage tower:floor.data {leave:"1-10.leave"}

#leave door's block state
data merge storage tower:floor.data {block_state:"Name:\"minecraft:quartz_pillar\",Properties:{axis:\"y\"}"}

#mob spawn tag
data merge storage tower:floor.data {mob_spawn:"1-10.boss.mob"}

#boss spawn tag (ignore this if this is not a boss level)
data merge storage tower:floor.data {boss_spawn:"10.boss"}

#boss title (ignore this if this is not a boss level)
data merge storage tower:floor.data {boss_title:"{\"text\": \"信仰使徒 - 札爾修斯\",\"color\": \"#FFFFC4\"}"}

#boss' hostile ID (ignore this if this is not a boss level)
data merge storage tower:floor.data {boss_id:"1_boss"}

#level rewards
data merge storage tower:floor.data {xp_rewards:100}

#DO NOT modify the following functions unless you know what you're doing
#-----
function system:tower/floor_start with storage tower:floor.data
#-----
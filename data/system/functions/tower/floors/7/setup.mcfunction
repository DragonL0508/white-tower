#time limit
data merge storage tower:floor.data {timelimit:240}

#set waves
data merge storage tower:floor.data {waves:3}

#floor type?
#1 - normal, 2 - boss fight, 3 - puzzle
data merge storage tower:floor.data {type:3}

#teleporter tag
data merge storage tower:floor.data {tp:"1-10.puzzle"}

#leave teleporter tag
data merge storage tower:floor.data {leave:"1-10.leave"}

#leave door's block state
data merge storage tower:floor.data {block_state:"Name:\"minecraft:quartz_pillar\",Properties:{axis:\"y\"}"}

#mob spawn tag
data merge storage tower:floor.data {mob_spawn:"1-10.puzzle.mob"}

#boss spawn tag (ignore this if this is not a boss level)
data merge storage tower:floor.data {boss_spawn:"5.boss"}

#level rewards
data merge storage tower:floor.data {xp_rewards:100}

#DO NOT modify the following functions unless you know what you're doing
#-----
function system:tower/floor_start with storage tower:floor.data
#-----

#everything you want to execute ->
clone 3015 56 2799 2975 80 2759 2975 28 2759
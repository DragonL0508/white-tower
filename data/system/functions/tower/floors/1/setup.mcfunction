#time limit
data merge storage tower:floor.data {timelimit:180}

#set waves
data merge storage tower:floor.data {waves:3}

#floor type?
#1 - normal, 2 - boss fight, 3 - puzzle
data merge storage tower:floor.data {type:1}

#teleporter tag
data merge storage tower:floor.data {tp:"1-10.normal"}

#mob spawn tag
data merge storage tower:floor.data {mob_spawn:"1-10.normal.mob"}

#boss spawn tag (ignore this if this is not a boss level)
data merge storage tower:floor.data {boss_spawn:"5.boss"}

#DO NOT modify the following functions unless you know what you're doing.
#-----
function system:tower/floor_start with storage tower:floor.data
#-----
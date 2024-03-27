#time limit
data merge storage tower:floor.data {timelimit:180}

#set waves
data merge storage tower:floor.data {waves:3}

#floor type?
#1 - normal, 2 - boss fight, 3 - puzzle
data merge storage tower:floor.data {type:1}

#teleporter tag
data merge storage tower:floor.data {tp:"floor.1-10.normal"}

#DO NOT modify the following functions unless you know what you're doing.
#-----
function system:tower/floor_start with storage tower:floor.data
#-----
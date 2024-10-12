particle explosion ~ ~ ~ 0 0 0 0 1 force
particle end_rod ~ ~ ~ 0 0 0 0.05 10 force
playsound custom:impact master @a ~ ~ ~ 2 1
function hp_system:damage {type:"damage2",damage:7,limit:999,distance:"..2"}

kill @s
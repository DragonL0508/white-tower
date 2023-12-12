clear @s #system:all{player.pots:1b}

execute store result storage this Hpots_counts int 1 run scoreboard players get @s Hpots.counts
execute store result storage this Mpots_counts int 1 run scoreboard players get @s Mpots.counts

execute if score @s Hpots.counts matches 1.. run function system:players/pots/sync/heal with storage this
execute if score @s Mpots.counts matches 1.. run function system:players/pots/sync/mana with storage this

data remove storage this Hpots_counts
data remove storage this Mpots_counts

#if counts is 0
execute if score @s Hpots.counts matches 0 run function system:players/pots/sync/glass_bottle {slot:7}
execute if score @s Mpots.counts matches 0 run function system:players/pots/sync/glass_bottle {slot:8}
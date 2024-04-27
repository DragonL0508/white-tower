#The function will be triggered upon summoning.

data merge entity @s {NoAI:1b}
particle flash ~ ~ ~ 0 0 0 0 1 force
particle firework ~ ~ ~ 0 0 0 0.2 10 force

#set Group ID
scoreboard players operation @s 1_magician_id = @e[tag=magician_me] 1_magician_id
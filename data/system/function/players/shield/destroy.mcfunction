scoreboard players set @s player.shield 0
function system:players/shield/disable

$damage @s $(damage) explosion
playsound block.glass.break master @a ~ ~ ~ 2 0.4
particle block amethyst_cluster ^ ^1 ^0.25 0 0.25 0 0.5 100 force
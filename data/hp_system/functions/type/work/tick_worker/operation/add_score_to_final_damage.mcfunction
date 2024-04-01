#Made By Fan_Fan_tom
scoreboard players set #10 Fan.FinalDamage 10
$scoreboard players operation #tmp Fan.FinalDamage = $(who) damage
scoreboard players operation #tmp Fan.FinalDamage /= #10 Fan.FinalDamage
scoreboard players operation @s Fan.FinalDamage += #tmp Fan.FinalDamage

#say add to final
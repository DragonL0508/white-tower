$execute as @e[team=hostile,tag=hostile_$(id)] at @s run function hostile:hostile/$(id)/loop

#ability
$execute unless data storage hostile:$(id) {ability_counts:0} as @e[team=hostile,tag=hostile_$(id)] at @s run function hostile:command/ability_countdown with storage hostile:$(id)

#boss
$execute as @e[team=hostile,tag=hostile_$(id)] if entity @s[tag=boss] if score @s invincible matches 1.. run bossbar set boss_health color blue
$execute as @e[team=hostile,tag=hostile_$(id)] if entity @s[tag=boss] unless score @s invincible matches 1.. run bossbar set boss_health color white
#bossbar shown
execute if entity @e[tag=boss,team=hostile] run bossbar set boss_health visible true
execute if entity @e[tag=boss,team=hostile] run bossbar set boss_health players @a[team=intower]
execute unless entity @e[tag=boss,team=hostile] run bossbar set boss_health visible false

#health update
execute store result bossbar boss_health value run scoreboard players get @e[tag=boss,team=hostile,limit=1] hp
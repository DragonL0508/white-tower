# Made by LeviChou
# WORK IN PROGRESS!
#==============================================
# execute to start a boss fight
#==============================================



execute store result bossbar enemy.boss max run data get entity @s PortalCooldown
$bossbar set enemy.boss name "$(boss_name)"
bossbar set enemy.boss visible true
bossbar set enemy.boss players @a[team=intower]
$execute store result score ability.random command run random value 0..$(ability_counts)

execute if score ability.random command matches 0 run scoreboard players set ability.random command 1
$data modify storage hostile:cache cache set from storage hostile:$(id)
execute store result storage hostile:cache cache.ability int 1 run scoreboard players get ability.random command
function hostile:command/run_ability with storage hostile:cache cache

$scoreboard players set @s hostile.ability.cd $(ability_cd)
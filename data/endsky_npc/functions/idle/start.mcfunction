scoreboard players operation @s npc.timer = $gametime npc.utils
data modify storage endsky_npc:common temp set from entity @s data.Idle[-1].Rest
execute if data storage endsky_npc:common temp.max run function endsky_npc:idle/random
execute store result score $rest npc.timer run data get storage endsky_npc:common temp
scoreboard players operation $rest npc.timer *= $20 npc.const
scoreboard players operation @s npc.timer = $gametime npc.utils
scoreboard players operation @s npc.timer += $rest npc.timer
scoreboard players set @s npc.idle 0

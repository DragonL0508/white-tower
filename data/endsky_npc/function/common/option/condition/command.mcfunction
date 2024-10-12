$execute as @a[limit=1,tag=npc.user] at @s store result score $condition npc.state run $(Value)
execute if score $condition npc.state matches 1.. run scoreboard players set $condition npc.state 1

#The function will be triggered upon the mob dead.

#Kill all wolf with same Group ID
tag @s add me
execute as @e[tag=hostile_1_wolf] if score @s hostile_id = @e[tag=me,limit=1] hostile_id run function hp_system:type/work/tick_worker/hp_bar/same_id_kill
tag @s remove me
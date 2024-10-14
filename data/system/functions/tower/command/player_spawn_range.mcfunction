tag @a[distance=2..] add out_of_range

tellraw @a[tag=out_of_range] {"text": "§7[§c!§7] §c關卡尚未開始，你不能離開重生點!"}
tp @a[tag=out_of_range] ~ ~0.5 ~
execute as @a[tag=out_of_range] at @s run playsound block.note_block.bass master @s ~ ~ ~ 0.5 0.5 0.5

tag @a[tag=out_of_range] remove out_of_range
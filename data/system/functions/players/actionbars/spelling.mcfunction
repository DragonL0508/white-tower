execute if score @s spell.timer matches 0..5 run title @s actionbar [{"text": "§l詠唱中... ","color": "yellow"},{"text":"♢♢♢♢♢♢♢♢♢♢","color":"gray"}]
execute if score @s spell.timer matches 6..10 run title @s actionbar [{"text": "§l詠唱中... ","color": "yellow"},{"text": "♦","color": "aqua"},{"text":"♢♢♢♢♢♢♢♢♢","color":"gray"}]
execute if score @s spell.timer matches 11..15 run title @s actionbar [{"text": "§l詠唱中... ","color": "yellow"},{"text": "♦♦","color": "aqua"},{"text":"♢♢♢♢♢♢♢♢","color":"gray"}]
execute if score @s spell.timer matches 16..20 run title @s actionbar [{"text": "§l詠唱中... ","color": "yellow"},{"text": "♦♦♦","color": "aqua"},{"text":"♢♢♢♢♢♢♢","color":"gray"}]
execute if score @s spell.timer matches 21..25 run title @s actionbar [{"text": "§l詠唱中... ","color": "yellow"},{"text": "♦♦♦♦","color": "aqua"},{"text":"♢♢♢♢♢♢","color":"gray"}]
execute if score @s spell.timer matches 26..30 run title @s actionbar [{"text": "§l詠唱中... ","color": "yellow"},{"text": "♦♦♦♦♦","color": "aqua"},{"text":"♢♢♢♢♢","color":"gray"}]
execute if score @s spell.timer matches 31..35 run title @s actionbar [{"text": "§l詠唱中... ","color": "yellow"},{"text": "♦♦♦♦♦♦","color": "aqua"},{"text":"♢♢♢♢","color":"gray"}]
execute if score @s spell.timer matches 36..40 run title @s actionbar [{"text": "§l詠唱中... ","color": "yellow"},{"text": "♦♦♦♦♦♦♦","color": "aqua"},{"text":"♢♢♢","color":"gray"}]
execute if score @s spell.timer matches 41..45 run title @s actionbar [{"text": "§l詠唱中... ","color": "yellow"},{"text": "♦♦♦♦♦♦♦♦","color": "aqua"},{"text":"♢♢","color":"gray"}]
execute if score @s spell.timer matches 46..50 run title @s actionbar [{"text": "§l詠唱中... ","color": "yellow"},{"text": "♦♦♦♦♦♦♦♦♦","color": "aqua"},{"text":"♢","color":"gray"}]
execute if score @s spell.timer matches 50 run title @s actionbar [{"text": "§l詠唱中... ","color": "yellow"},{"text":"♦♦♦♦♦♦♦♦♦♦","color":"aqua"}]

#sounds
execute if score @s spell.timer matches 6 run playsound block.amethyst_block.resonate master @s ~ ~ ~ 2 1 1
execute if score @s spell.timer matches 11 run playsound block.amethyst_block.resonate master @s ~ ~ ~ 2 1.1 1
execute if score @s spell.timer matches 16 run playsound block.amethyst_block.resonate master @s ~ ~ ~ 2 1.2 1
execute if score @s spell.timer matches 21 run playsound block.amethyst_block.resonate master @s ~ ~ ~ 2 1.3 1
execute if score @s spell.timer matches 26 run playsound block.amethyst_block.resonate master @s ~ ~ ~ 2 1.4 1
execute if score @s spell.timer matches 31 run playsound block.amethyst_block.resonate master @s ~ ~ ~ 2 1.5 1
execute if score @s spell.timer matches 36 run playsound block.amethyst_block.resonate master @s ~ ~ ~ 2 1.6 1
execute if score @s spell.timer matches 41 run playsound block.amethyst_block.resonate master @s ~ ~ ~ 2 1.7 1
execute if score @s spell.timer matches 46 run playsound block.amethyst_block.resonate master @s ~ ~ ~ 2 1.8 1
execute if score @s spell.timer matches 50 run playsound block.amethyst_block.resonate master @s ~ ~ ~ 2 1.9 1
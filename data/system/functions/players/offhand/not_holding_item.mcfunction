#檢查是不是其他按F觸發的道具 (總之按F會觸發以下指令)
execute if data entity @s Inventory[{Slot:-106b,tag:{magic_stick:1b}}] run say Press F with MS

execute if entity @s[tag=shield.enable,scores={sneak=1}] run function system:players/shield/disable
execute if entity @s[tag=!shield.enable,scores={sneak=1}] if entity @s[tag=!bypasser] if score @s player.shield matches 0 run function system:players/shield/enable_failed
execute if entity @s[tag=!shield.enable,scores={sneak=1}] if entity @s[tag=!bypasser] run function system:players/shield/enable

tag @s remove bypasser

#
clear @s carrot_on_a_stick{offhand:1b}

execute if data entity @s SelectedItem if data entity @s Inventory[{Slot:-106b}] run function system:players/offhand/drop_item
execute unless data entity @s SelectedItem run item replace entity @s weapon.mainhand from entity @s weapon.offhand

loot replace entity @s weapon.offhand loot system:offhand
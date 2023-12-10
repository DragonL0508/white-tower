clear @s carrot_on_a_stick{offhand:1b}

execute if data entity @s SelectedItem if data entity @s Inventory[{Slot:-106b}] run function system:players/offhand/drop_item
execute unless data entity @s SelectedItem run item replace entity @s weapon.mainhand from entity @s weapon.offhand

loot replace entity @s weapon.offhand loot system:offhand
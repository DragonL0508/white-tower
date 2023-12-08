execute if score $demo.sus_mysterious_stone quest.state matches 1 unless data entity @s data.Dialogue run data modify entity @s data.Dialogue set from storage quest:demo sus_mysterious_stone.Start
execute if score $demo.sus_mysterious_stone quest.state matches 2 unless data entity @s data.Dialogue run data modify entity @s data.Dialogue set from storage quest:demo sus_mysterious_stone.Item
execute if score $demo.sus_mysterious_stone quest.state matches 3 unless data entity @s data.Dialogue run data modify entity @s data.Dialogue set from storage quest:demo sus_mysterious_stone.Reward

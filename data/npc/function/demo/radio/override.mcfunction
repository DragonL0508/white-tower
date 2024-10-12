execute if score $demo.mysterious_stone quest.state matches 1 unless data entity @s data.Dialogue run data modify entity @s data.Dialogue set from storage quest:demo mysterious_stone.Start
execute if score $demo.mysterious_stone quest.state matches 2 unless data entity @s data.Dialogue run data modify entity @s data.Dialogue set from storage quest:demo mysterious_stone.Start_Remind
execute if score $demo.mysterious_stone quest.state matches 3 unless data entity @s data.Dialogue run data modify entity @s data.Dialogue set from storage quest:demo mysterious_stone.Turn_In
execute if score $demo.mysterious_stone quest.state matches 4 unless data entity @s data.Dialogue run data modify entity @s data.Dialogue set from storage quest:demo mysterious_stone.Reward

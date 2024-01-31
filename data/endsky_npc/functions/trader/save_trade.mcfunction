$data modify storage npc:$(region) $(npc).Buy set from entity @e[limit=1,type=minecraft:villager,tag=npc.trader_b,tag=npc.this] Offers.Recipes
$data modify storage npc:$(region) $(npc).Sell set from entity @e[limit=1,type=minecraft:villager,tag=npc.trader_s,tag=npc.this] Offers.Recipes
$data modify entity @s data.Buy set from storage npc:$(region) $(npc).Buy
$data modify entity @s data.Sell set from storage npc:$(region) $(npc).Sell

summon item ~ ~ ~ {Item:{Count:1b,id:"minecraft:stone"},Tags:["this"],PickupDelay:0}
$data modify entity @e[tag=this,sort=nearest,limit=1] Item set from entity @s Inventory[{Slot:$(slot)b}]
tag @e[tag=this,sort=nearest,limit=1] remove this

function system:players/pots/sync/start
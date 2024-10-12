advancement revoke @s only npc:village/potion/next

tag @e[tag=npc.village.potion] add npc.this
function endsky_npc:common/next
tag @e[tag=npc.this] remove npc.this

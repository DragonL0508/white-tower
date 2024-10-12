advancement revoke @s only npc:village/pioneer/next

tag @e[tag=npc.village.pioneer] add npc.this
function endsky_npc:common/next
tag @e[tag=npc.this] remove npc.this

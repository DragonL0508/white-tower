advancement revoke @s only npc:village/magic/next

tag @e[tag=npc.village.magic] add npc.this
function endsky_npc:common/next
tag @e[tag=npc.this] remove npc.this

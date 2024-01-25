advancement revoke @s only npc:village/lottery/next

tag @e[tag=npc.village.lottery] add npc.this
function endsky_npc:common/next
tag @e[tag=npc.this] remove npc.this

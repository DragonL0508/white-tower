advancement revoke @s only npc:village/blacksmith/next

tag @e[tag=npc.village.blacksmith] add npc.this
function endsky_npc:common/next
tag @e[tag=npc.this] remove npc.this

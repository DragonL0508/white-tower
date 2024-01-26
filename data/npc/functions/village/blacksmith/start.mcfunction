advancement revoke @s only npc:village/blacksmith/start

tag @e[tag=npc.village.blacksmith] add npc.this
function endsky_npc:common/start
tag @e[tag=npc.this] remove npc.this

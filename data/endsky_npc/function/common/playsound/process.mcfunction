$data modify storage endsky_npc:common Sound set value {id:"$(id)"}
$data modify storage endsky_npc:common Sound merge value $(setting)
execute unless data storage endsky_npc:common Sound.volume run data modify storage endsky_npc:common Sound.volume set value 1f
execute unless data storage endsky_npc:common Sound.pitch run data modify storage endsky_npc:common Sound.pitch set value 1f
execute unless data storage endsky_npc:common Sound.minVolume run data modify storage endsky_npc:common Sound.minVolume set value 0f
function endsky_npc:common/playsound/play with storage endsky_npc:common Sound

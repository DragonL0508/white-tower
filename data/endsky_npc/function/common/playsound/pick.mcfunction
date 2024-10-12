$data modify storage endsky_npc:common Sound.temp set from storage endsky_npc:common SoundPool[$(index)]
$data remove storage endsky_npc:common SoundPool[$(index)]
data modify storage endsky_npc:common SoundPool prepend from storage endsky_npc:common Sound.temp

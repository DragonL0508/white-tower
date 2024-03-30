#is wave clear?
execute unless score wave_cd tower matches -2147483648..2147483647 unless entity @e[team=hostile] run function system:tower/command/waves/next
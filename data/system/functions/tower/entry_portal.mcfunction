particle portal ~-0.25 ~3 ~ 0 2.5 2.5 0 20 normal @a[team=prepared]

#The level hasn’t started yet
execute unless score state tower matches -2147483648..2147483647 positioned ~ ~ ~2 as @a[team=prepared,dy=2,dz=4] run function system:tower/command/entry
execute if score state tower matches 1 positioned ~ ~ ~2 as @a[team=prepared,dy=2,dz=4] run function system:tower/command/entry

#The level has started
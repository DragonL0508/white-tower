$function system:tower/floors/$(floor)/tick

#region
$execute as @a[gamemode=spectator] unless data entity @s {Tags:["rs.in_a_region"]} run tp @s @e[type=marker,tag=$(tp)]
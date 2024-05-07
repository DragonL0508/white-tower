#Made By Fan_Fan_tom
#設鄧怪物最大血量
#Default
scoreboard players set @s[nbt={PortalCooldown:0}] maxhp 20
#custom Define PortalCooldown Max Hp
execute unless entity @s[nbt={PortalCooldown:0}] store result score @s maxhp run data get entity @s PortalCooldown 1
#reset PortalCooldown to default
execute unless entity @s[nbt={PortalCooldown:0}] run data modify entity @s PortalCooldown set value 0


#設定滿血
scoreboard players operation @s hp = @s maxhp
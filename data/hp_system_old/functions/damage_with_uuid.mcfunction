#addon by DragonL
#使用方式 :
#/function hp_system:damage_with_uuid {uuid:[I;XXXXXX,XXXXXX,XXXXXX,XXXXXX],type:"damage",damage:10,limit:99,distance:"..10"}
#會自動設定攻擊者為指定uuid的玩家

$execute as @a if data entity @s {UUID:$(uuid)} run function hp_system:damage {type:$(type),damage:$(damage),limit:$(limit),distance:$(distance)}
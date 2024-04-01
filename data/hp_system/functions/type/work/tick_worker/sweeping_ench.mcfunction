#Made By Fan_Fan_tom
#橫掃傷害運算公式
#  1 + 武器基礎傷害 x (等級 / 等級+1) = 擴散傷害

#擴散傷害衰減
#檢測是否是玩家瞄準的怪物
$scoreboard players set is_looking hit_amount $(is_looking)


#儲存玩家手上的橫掃之刃等級
execute if score @s hit_amount matches 2.. if data entity @s SelectedItem.tag.Enchantments[{id:"minecraft:sweeping"}] store result score sweeping.level hit_amount run data get entity @s SelectedItem.tag.Enchantments[{id:"minecraft:sweeping"}].lvl 1

#==========================================
#   Aim
#==========================================
#橫掃之刃 0
#確定擊中 2 隻生物 並且是玩家正在瞄準的怪物 並且玩家手上武器不帶有橫掃之刃 減少疊加傷害
execute if score @s hit_amount matches 2.. unless data entity @s SelectedItem.tag.Enchantments[{id:"minecraft:sweeping"}] if score is_looking hit_amount matches 1 run scoreboard players remove @e[tag=find_looking.result,sort=nearest,limit=1] damage 10
#加入統計傷害
execute unless data entity @s SelectedItem.tag.Enchantments[{id:"minecraft:sweeping"}] if score is_looking hit_amount matches 1 run function hp_system:type/work/tick_worker/operation/add_score_to_final_damage {who:"@e[tag=find_looking.result,sort=nearest,limit=1]"}

#橫掃之刃 1
#減去基礎橫掃傷害 1
execute if score @s hit_amount matches 2.. if data entity @s SelectedItem.tag.Enchantments[{id:"minecraft:sweeping"}] if score is_looking hit_amount matches 1 run function hp_system:type/work/tick_worker/operation/sweeping_level_1 {who:"@e[tag=find_looking.result,sort=nearest,limit=1]",operation:"-"}






#==========================================
#  NOT Aim
#==========================================
#橫掃之刃 0
#確定擊中 2 隻生物 並且是不在玩家的瞄準範圍內 並且玩家手上武器不帶有橫掃之刃 減少疊加傷害
execute if score @s hit_amount matches 2.. unless data entity @s SelectedItem.tag.Enchantments[{id:"minecraft:sweeping"}] if score is_looking hit_amount matches 0 run scoreboard players set @e[tag=Fan.gotHurt,sort=nearest,limit=1] damage 10
#加入統計傷害
execute if score @s hit_amount matches 2.. unless data entity @s SelectedItem.tag.Enchantments[{id:"minecraft:sweeping"}] if score is_looking hit_amount matches 0 run function hp_system:type/work/tick_worker/operation/add_score_to_final_damage {who:"@e[tag=Fan.gotHurt,sort=nearest,limit=1]"}

#橫掃之刃 1
#減去基礎橫掃傷害 1
execute if score @s hit_amount matches 2.. if data entity @s SelectedItem.tag.Enchantments[{id:"minecraft:sweeping"}] if score is_looking hit_amount matches 0 run function hp_system:type/work/tick_worker/operation/sweeping_level_1 {who:"@e[tag=Fan.gotHurt,sort=nearest,limit=1]",operation:"+"}

#重置暫時存取的橫掃之刃等級
scoreboard players reset sweeping.level hit_amount

#say sweeping_ench
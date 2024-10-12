#some commands
function system:players/meditation/info/message/get_roman_num with storage meditation:message

#get this level attributes
scoreboard players set att.text_type command 1
function system:players/meditation/info/message/get_attribute_text with storage meditation:message

#send messages
playsound block.enchantment_table.use master @s ~ ~ ~ 1 1 1

tellraw @s {"text": ""}
$tellraw @s {"text": "                   $(title)", "color": "$(color)", "bold": true}
tellraw @s {"text": "-----------------------------------", "color": "gray", "strikethrough": true}

$tellraw @s {"text": "       §7當前: §e$(level_text)      §7->      下一階: §e$(level_next)"}
tellraw @s {"text": ""}

#get all attributes and send
tellraw @s {"text": "       §7當前屬性:"}
function system:players/meditation/info/message/send_att_this with storage meditation:message

tellraw @s {"text": ""}
#operate next attribute and send
tellraw @s {"text": "       §7下一階段:"}

#add 1 level to get next level attributes
execute store result score meditation.level command run data get storage meditation:message level 1
scoreboard players add meditation.level command 1
execute store result storage meditation:message next_level int 1 run scoreboard players get meditation.level command

scoreboard players set att.text_type command 2
function system:players/meditation/info/message/get_attribute_text with storage meditation:message
function system:players/meditation/info/message/send_att_this with storage meditation:message


tellraw @s {"text": ""}
tellraw @s [{"text": "       §7你有 "},{"score": {"name": "@s", "objective": "skill_points"}, "color": "yellow"}, {"text": " §7點技能點   "}, {"text": "§a§l[升級]"}]

tellraw @s {"text": "-----------------------------------", "color": "gray", "strikethrough": true}
tellraw @s {"text": ""}
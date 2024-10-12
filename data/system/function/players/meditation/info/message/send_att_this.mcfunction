execute unless data storage meditation:message this_att_strings[0] run return 0

tellraw @s [{"text": "          "},{"storage":"meditation:message","nbt":"this_att_strings[0]"}]

data remove storage meditation:message this_att_strings[0]
function system:players/meditation/info/message/send_att_this
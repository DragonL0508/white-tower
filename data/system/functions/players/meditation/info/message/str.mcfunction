data modify storage meditation:message title set value "力量"
data modify storage meditation:message color set value "#FFD37A"
data modify storage meditation:message id set value "STR"
data modify storage meditation:message trigger_num set value 4
function system:players/meditation/info/message/get_roman_num with storage meditation:message

#attributes text
function system:players/meditation/info/message/get_attribute_text with storage meditation:message

function system:players/meditation/info/message/send with storage meditation:message
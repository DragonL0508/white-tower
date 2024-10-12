data modify entity @s data.Dialogue.Texts set from entity @s data.Exit.Texts
data modify entity @s data.Dialogue.End set value 1b
data modify entity @s data.Exit.Extra.Hidden set value {}
data modify entity @s data.Exit.Extra.Hidden set from entity @s data.Dialogue.Extra
data modify entity @s data.Dialogue.Extra set from entity @s data.Exit.Extra
data remove entity @s data.Exit.Extra.Hidden

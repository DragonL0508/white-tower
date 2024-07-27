$execute if data storage attribute:config $(id).$(level).atk \
    run function system:players/meditation/info/message/string_bind {type:"atk", des1:"§a+ ", des2:" §7近戰攻擊傷害", id:"$(id)", level:"$(level)"}

$execute if data storage attribute:config $(id).$(level).concussive \
    run function system:players/meditation/info/message/string_bind {type:"concussive", des1:"§a+ ", des2:"§a% §7近戰攻擊震盪", id:"$(id)", level:"$(level)"}
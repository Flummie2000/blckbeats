execute unless score @s menu.blbt matches 1.. run tellraw @s [{"text":"┌▪Track 4 ╗","color":"blue","bold":"true"},{"text":" ۩","clickEvent":{"action":"run_command","value":"/trigger menu.blbt"},"hoverEvent":{"action":"show_text","value":"return to menu"}}]
tellraw @s [{"text":"│Title: ","color":"green"},{"translate":"Track4 - Title","color":"yellow","bold":"true"},{"translate":"Track4 - Titleinfo","color":"green","bold":"false"}]
tellraw @s [{"text":"│Composer: ","color":"green"},{"translate":"Track4 - Composer","color":"yellow","bold":"true"}]
execute unless score @s menu.blbt matches 1.. run tellraw @s [{"text":"└","color":"blue"}]

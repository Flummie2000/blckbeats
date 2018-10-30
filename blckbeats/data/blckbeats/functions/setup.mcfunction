tellraw @s [{"text":"Thank you for using blckbeats!","color":"blue","underlined":"true"}]
tellraw @s [{"text":""}]
tellraw @s [{"text":"Tipp: Use /trigger menu.blbt to get started","color":"gold"}]
tellraw @s [{"text":"Remember to set your tracktimes via the \"Adjust track times\" button in the menu.","color":"gold"}]
tellraw @s [{"text":""}]
tellraw @s ["",{"text":"Visit ","color":"green"},{"text":"MapLabs","color":"red","clickEvent":{"action":"open_url","value":"https://discord.gg/vqmm6TT"},"hoverEvent":{"action":"show_text","value":"Visit us!"}},{"text":" to learn more!","color":"green"}]

scoreboard players set @s current.blbt 1
scoreboard players set @s dloop.blbt 1
tag @s add tracknames.blbt
tag @s add aBarPT.blbt
tag @s add blbt.use

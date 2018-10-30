execute if entity @s[tag=blbt.tracknames] run tellraw @s [{"text":"⌛ Track finished","color":"red"}]
scoreboard players reset @s playtime.blbt

execute as @s[scores={loop.blbt=1..,dloop.blbt=1}] unless score @s track.blbt matches 1.. run function blckbeats:next
execute as @s[scores={loop.blbt=1..,dloop.blbt=-1}] unless score @s track.blbt matches 1.. run function blckbeats:prev
execute as @s[scores={loop.blbt=1..,dloop.blbt=0}] unless score @s track.blbt matches 1.. run function blckbeats:shuffl

scoreboard players add @s[scores={loop.blbt=1..}] play.blbt 1

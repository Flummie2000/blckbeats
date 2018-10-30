scoreboard players remove @s current.blbt 1
execute if entity @s[scores={current.blbt=..0}] run scoreboard players set @s current.blbt 20

execute if entity @s[tag=song1.blbt,scores={current.blbt=1}] run tag @s add play.blbt
execute if entity @s[tag=song2.blbt,scores={current.blbt=2}] run tag @s add play.blbt
execute if entity @s[tag=song3.blbt,scores={current.blbt=3}] run tag @s add play.blbt
execute if entity @s[tag=song4.blbt,scores={current.blbt=4}] run tag @s add play.blbt
execute if entity @s[tag=song5.blbt,scores={current.blbt=5}] run tag @s add play.blbt
execute if entity @s[tag=song6.blbt,scores={current.blbt=6}] run tag @s add play.blbt
execute if entity @s[tag=song7.blbt,scores={current.blbt=7}] run tag @s add play.blbt
execute if entity @s[tag=song8.blbt,scores={current.blbt=8}] run tag @s add play.blbt
execute if entity @s[tag=song9.blbt,scores={current.blbt=9}] run tag @s add play.blbt
execute if entity @s[tag=song10.blbt,scores={current.blbt=10}] run tag @s add play.blbt
execute if entity @s[tag=song11.blbt,scores={current.blbt=11}] run tag @s add play.blbt
execute if entity @s[tag=song12.blbt,scores={current.blbt=12}] run tag @s add play.blbt
execute if entity @s[tag=song13.blbt,scores={current.blbt=13}] run tag @s add play.blbt
execute if entity @s[tag=song14.blbt,scores={current.blbt=14}] run tag @s add play.blbt
execute if entity @s[tag=song15.blbt,scores={current.blbt=15}] run tag @s add play.blbt
execute if entity @s[tag=song16.blbt,scores={current.blbt=16}] run tag @s add play.blbt
execute if entity @s[tag=song17.blbt,scores={current.blbt=17}] run tag @s add play.blbt
execute if entity @s[tag=song18.blbt,scores={current.blbt=18}] run tag @s add play.blbt
execute if entity @s[tag=song19.blbt,scores={current.blbt=19}] run tag @s add play.blbt
execute if entity @s[tag=song20.blbt,scores={current.blbt=20}] run tag @s add play.blbt

execute unless entity @s[tag=play.blbt] run function blckbeats:loop/findprev

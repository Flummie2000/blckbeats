summon minecraft:area_effect_cloud ~ ~ ~ {Tags:["rand.blbt"]}
execute store result score tmp rand.blbt run data get entity @e[tag=rand.blbt,limit=1] UUIDMost 0.00000000023283064365386962890625
kill @e[tag=rand.blbt]
execute if score tmp rand.blbt matches ..-1 run scoreboard players operation tmp rand.blbt *= #calc rand.blbt
scoreboard players operation tmp rand.blbt /= #max/10 rand.blbt

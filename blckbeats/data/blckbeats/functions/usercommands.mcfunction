execute if score @s usercomms.blbt matches 1 run function blckbeats:stop
execute if score @s usercomms.blbt matches 2 run function blckbeats:end
execute if score @s usercomms.blbt matches 3 run scoreboard players set @s dloop.blbt -1
execute if score @s usercomms.blbt matches 4 run scoreboard players set @s dloop.blbt 1
execute if score @s usercomms.blbt matches 5 run function blckbeats:visuals/loop
execute if score @s usercomms.blbt matches 6 run scoreboard players set @s loop.blbt 0
execute if score @s usercomms.blbt matches 7 run scoreboard players set @s loop.blbt 1048575
execute if score @s usercomms.blbt matches 8 run function blckbeats:songs/info
execute if score @s usercomms.blbt matches 10 run tag @s add aBarPT.blbt
execute if score @s usercomms.blbt matches 11 run tag @s remove aBarPT.blbt
execute if score @s usercomms.blbt matches 12 run tag @s add blbt.tracknames
execute if score @s usercomms.blbt matches 13 run tag @s remove blbt.tracknames
execute if score @s usercomms.blbt matches 14 run scoreboard players add @s play.blbt 1
execute if score @s usercomms.blbt matches 15 run scoreboard players set @s dloop.blbt 0
execute if score @s usercomms.blbt matches 16 run tag @s add menu+.blbt
execute if score @s usercomms.blbt matches 17 run tag @s remove menu+.blbt
execute if score @s usercomms.blbt matches 18 run function blckbeats:settimes/settimes
execute if score @s usercomms.blbt matches 19 run function blckbeats:settimes/custom
execute if score @s usercomms.blbt matches 20 run function blckbeats:settimes/official
execute if score @s usercomms.blbt matches 21 run function blckbeats:settimes/global1
execute if score @s usercomms.blbt matches 22 run function blckbeats:settimes/global2
execute if score @s usercomms.blbt matches 23 run function blckbeats:settimes/global3

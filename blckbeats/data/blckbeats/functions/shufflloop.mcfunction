execute unless score tmp rand.blbt matches 0 run function blckbeats:next
execute unless score tmp rand.blbt matches 0 run scoreboard players remove tmp rand.blbt 1
execute unless score tmp rand.blbt matches 0 run function blckbeats:shufflloop

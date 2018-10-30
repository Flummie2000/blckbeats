#calls the songs

execute if score @s current.blbt matches 1 run function blckbeats:songs/song1
execute if score @s current.blbt matches 2 run function blckbeats:songs/song2
execute if score @s current.blbt matches 3 run function blckbeats:songs/song3
execute if score @s current.blbt matches 4 run function blckbeats:songs/song4
execute if score @s current.blbt matches 5 run function blckbeats:songs/song5
execute if score @s current.blbt matches 6 run function blckbeats:songs/song6
execute if score @s current.blbt matches 7 run function blckbeats:songs/song7
execute if score @s current.blbt matches 8 run function blckbeats:songs/song8
execute if score @s current.blbt matches 9 run function blckbeats:songs/song9
execute if score @s current.blbt matches 10 run function blckbeats:songs/song10
execute if score @s current.blbt matches 11 run function blckbeats:songs/song11
execute if score @s current.blbt matches 12 run function blckbeats:songs/song12
execute if score @s current.blbt matches 13 run function blckbeats:songs/song13
execute if score @s current.blbt matches 14 run function blckbeats:songs/song14
execute if score @s current.blbt matches 15 run function blckbeats:songs/song15
execute if score @s current.blbt matches 16 run function blckbeats:songs/song16
execute if score @s current.blbt matches 17 run function blckbeats:songs/song17
execute if score @s current.blbt matches 18 run function blckbeats:songs/song18
execute if score @s current.blbt matches 19 run function blckbeats:songs/song19
execute if score @s current.blbt matches 20 run function blckbeats:songs/song20

execute unless score @s playtime.blbt matches 1.. run scoreboard players operation @s loopsong.blbt = @s current.blbt

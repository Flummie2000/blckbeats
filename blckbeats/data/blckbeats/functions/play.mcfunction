#updates current song
scoreboard players operation @s[scores={track.blbt=1..}] current.blbt = @s track.blbt
scoreboard players reset @s track.blbt

#displays song info
execute if entity @s[tag=blbt.tracknames] run function blckbeats:songs/info

#plays the song from the song library
function blckbeats:songs/song

#calculates full tracktime
scoreboard players operation @s fullmin.blbt = @s playtime.blbt
scoreboard players operation @s fullmin.blbt /= #min track.blbt

scoreboard players operation @s fullsec.blbt = @s playtime.blbt
scoreboard players operation @s fullsec.blbt /= #sec track.blbt
scoreboard players operation @s fullsec.blbt %= #sec1 track.blbt

scoreboard players set @s[scores={fullsec.blbt=..9}] fullsec0.blbt 0
scoreboard players reset @s[scores={fullsec.blbt=10..}] fullsec0.blbt

#play resets
scoreboard players remove @s[scores={play.blbt=1..}] play.blbt 1

#stops running track and lets next track begin
stopsound @s voice
scoreboard players set @s playtime.blbt 0
scoreboard players remove @s[scores={skip.blbt=1..}] skip.blbt 1
scoreboard players set @s[scores={skip.blbt=21..}] skip.blbt 20

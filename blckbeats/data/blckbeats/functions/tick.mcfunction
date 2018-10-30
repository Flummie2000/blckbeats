#inits auto setup
execute as @a[tag=!blbt.use] run function blckbeats:setup

#runs usercomms
execute as @a[scores={usercomms.blbt=1..}] run function blckbeats:usercommands

#players who trigger play start the song
execute as @a[scores={play.blbt=1..}] unless entity @s[scores={playtime.blbt=1..}] run function blckbeats:play

#playtime finished
execute as @a[scores={playtime.blbt=0}] run function blckbeats:finish

#triggers are enabled for people with permissions
scoreboard players enable @a[tag=blbt.use] play.blbt
scoreboard players enable @a[tag=blbt.use] track.blbt
scoreboard players enable @a[tag=blbt.use] loopsong.blbt
scoreboard players enable @a[tag=blbt.use] skip.blbt
scoreboard players enable @a[tag=blbt.use] menu.blbt
scoreboard players enable @a[tag=blbt.use] usercomms.blbt

#rewrites looped songs on trigger
execute as @a[scores={loopsong.blbt=1..}] run function blckbeats:loop/tag
execute as @a[scores={loopsong.blbt=1..}] run function blckbeats:loop/toggle

#skips song on trigger
execute as @a[scores={skip.blbt=1..}] run function blckbeats:end

#opens menu ui on trigger
execute as @a[scores={menu.blbt=1..}] run function blckbeats:visuals/menu

#displays current playtime
execute as @a[scores={playtime.blbt=1..}] run scoreboard players operation @s nowmin.blbt = @s playtime.blbt
execute as @a[scores={playtime.blbt=1..}] run scoreboard players operation @s nowmin.blbt /= #min track.blbt

execute as @a[scores={playtime.blbt=1..}] run scoreboard players operation @s nowsec.blbt = @s playtime.blbt
execute as @a[scores={playtime.blbt=1..}] run scoreboard players operation @s nowsec.blbt /= #sec track.blbt
execute as @a[scores={playtime.blbt=1..}] run scoreboard players operation @s nowsec.blbt %= #sec1 track.blbt

execute as @a[scores={nowsec.blbt=..9}] run scoreboard players set @s nowsec0.blbt 0

execute as @a[scores={nowsec.blbt=10..}] run scoreboard players reset @s nowsec0.blbt

execute as @a[scores={playtime.blbt=1..},tag=aBarPT.blbt] run title @s actionbar [{"text":"[","color":"dark_blue"},{"score":{"name":"@s","objective":"nowmin.blbt"},"color":"yellow"},{"text":":"},{"score":{"name":"@s","objective":"nowsec0.blbt"},"color":"yellow"},{"score":{"name":"@s","objective":"nowsec.blbt"},"color":"yellow"},{"text":" | ","color":"dark_blue"},{"score":{"name":"@s","objective":"fullmin.blbt"},"color":"gold"},{"text":":"},{"score":{"name":"@s","objective":"fullsec0.blbt"},"color":"gold"},{"score":{"name":"@s","objective":"fullsec.blbt"},"color":"gold"},{"text":"]","color":"dark_blue"}]

#counts down the playtime
scoreboard players remove @a[scores={playtime.blbt=1..}] playtime.blbt 1

#refreshs menu on button press
execute as @a[scores={usercomms.blbt=1..4}] run trigger menu.blbt
execute as @a[scores={usercomms.blbt=14..17}] run trigger menu.blbt

scoreboard players reset @a[scores={usercomms.blbt=1..}] usercomms.blbt

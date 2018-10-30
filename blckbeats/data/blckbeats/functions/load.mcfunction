#tracks how long songs have been playing
scoreboard objectives add playtime.blbt dummy "play time"
#trigger objective to start playing
scoreboard objectives add play.blbt trigger
#trigger objective to select a track
scoreboard objectives add track.blbt trigger "selected track"
#dummy objective to store current track
scoreboard objectives add current.blbt dummy "listening to track"
#stores songs to loop
scoreboard objectives add loop.blbt dummy
#trigger objective to add/remove looping songs
scoreboard objectives add loopsong.blbt trigger
#trigger objective to skip current song
scoreboard objectives add skip.blbt trigger
#trigger objective to open menu
scoreboard objectives add menu.blbt trigger
#stores full playtime of the current track for visual
scoreboard objectives add fullmin.blbt dummy
#stores full playtime of the current track for visual
scoreboard objectives add fullsec.blbt dummy
#stores current playtime of the current track for visual
scoreboard objectives add nowmin.blbt dummy
#stores current playtime of the current track for visual
scoreboard objectives add nowsec.blbt dummy
#defines direction of loop
scoreboard objectives add dloop.blbt dummy
#optional 0 for visuals
scoreboard objectives add nowsec0.blbt dummy
scoreboard objectives add fullsec0.blbt dummy
#usercommands trigger
scoreboard objectives add usercomms.blbt trigger
#shufflerandomizer
scoreboard objectives add rand.blbt dummy

#tracktimes
scoreboard objectives add track1.blbt trigger
scoreboard objectives add track2.blbt trigger
scoreboard objectives add track3.blbt trigger
scoreboard objectives add track4.blbt trigger
scoreboard objectives add track5.blbt trigger
scoreboard objectives add track6.blbt trigger
scoreboard objectives add track7.blbt trigger
scoreboard objectives add track8.blbt trigger
scoreboard objectives add track9.blbt trigger
scoreboard objectives add track10.blbt trigger
scoreboard objectives add track11.blbt trigger
scoreboard objectives add track12.blbt trigger
scoreboard objectives add track13.blbt trigger
scoreboard objectives add track14.blbt trigger
scoreboard objectives add track15.blbt trigger
scoreboard objectives add track16.blbt trigger
scoreboard objectives add track17.blbt trigger
scoreboard objectives add track18.blbt trigger
scoreboard objectives add track19.blbt trigger
scoreboard objectives add track20.blbt trigger

#calc score
scoreboard players set #min track.blbt 1200
#calc score
scoreboard players set #sec track.blbt 20
#calc score
scoreboard players set #sec1 track.blbt 60
#calc score
scoreboard players set #calc rand.blbt -1
scoreboard players set #max/10 rand.blbt 214748364

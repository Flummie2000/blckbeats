#makes a chat UI to control blckbeats
tellraw @s [{"text":""}]
tellraw @s [{"text":"┌───[","color":"dark_blue"},{"text":"blckbeats is playing track: ","color":"green","clickEvent":{"action":"run_command","value":"/trigger menu.blbt"},"hoverEvent":{"action":"show_text","value":"reload menu"},"bold":"true"},{"score":{"name":"@s","objective":"current.blbt"},"color":"yellow","hoverEvent":{"action":"show_text","value":"info"},"clickEvent":{"action":"run_command","value":"/trigger usercomms.blbt set 8"}},{"text":"]--[","color":"dark_blue"},{"score":{"name":"@s","objective":"fullmin.blbt"},"color":"yellow"},{"text":"min","color":"gold"},{"text":" | ","color":"dark_blue"},{"score":{"name":"@s","objective":"fullsec0.blbt"},"color":"yellow"},{"score":{"name":"@s","objective":"fullsec.blbt"},"color":"yellow"},{"text":"sec","color":"gold"},{"text":"]--","color":"dark_blue"}]
tellraw @s [{"text":"│","color":"dark_blue"},{"text":"                 ","color":"blue"},{"text":"[≣]","color":"green","clickEvent":{"action":"run_command","value":"/trigger usercomms.blbt set 5"},"hoverEvent":{"action":"show_text","value":"show track list"}},{"text":" --- ","color":"blue"},{"text":"■ ","color":"red","clickEvent":{"action":"run_command","value":"/trigger usercomms.blbt set 1"},"hoverEvent":{"action":"show_text","value":"Stop"}},{"text":"▶","color":"green","clickEvent":{"action":"run_command","value":"/trigger usercomms.blbt set 14"},"hoverEvent":{"action":"show_text","value":"Play"}},{"text":" ⋙","color":"gold","clickEvent":{"action":"run_command","value":"/trigger usercomms.blbt set 2"},"hoverEvent":{"action":"show_text","value":"Skip"}},{"text":" --- ","color":"blue"},{"text":"[≚]","color":"green","clickEvent":{"action":"suggest_command","value":"/trigger track.blbt set "},"hoverEvent":{"action":"show_text","value":"select next track"}}]
tellraw @s [{"text":"│","color":"dark_blue"},{"text":"               ","color":"blue"},{"text":"[≣-⍉]","color":"green","clickEvent":{"action":"run_command","value":"/trigger usercomms.blbt set 6"},"hoverEvent":{"action":"show_text","value":"loop none"}},{"text":" --- ","color":"blue"},{"text":"↩ ","color":"blue","clickEvent":{"action":"run_command","value":"/trigger usercomms.blbt set 3"},"hoverEvent":{"action":"show_text","value":"loop backward"}},{"text":"♋","color":"blue","clickEvent":{"action":"run_command","value":"/trigger usercomms.blbt set 15"},"hoverEvent":{"action":"show_text","value":"shuffle"}},{"text":" ↪","color":"blue","clickEvent":{"action":"run_command","value":"/trigger usercomms.blbt set 4"},"hoverEvent":{"action":"show_text","value":"loop forward"}},{"text":" --- ","color":"blue"},{"text":"[≣-↺]","color":"green","clickEvent":{"action":"run_command","value":"/trigger usercomms.blbt set 7"},"hoverEvent":{"action":"show_text","value":"loop all"}},{"text":" "},{"text":"[↺]","color":"green","clickEvent":{"action":"suggest_command","value":"/trigger loopsong.blbt set "},"hoverEvent":{"action":"show_text","value":"toggle loop for track"}}]
tellraw @s[tag=!menu+.blbt] [{"text":"└───── ","color":"dark_blue"},{"text":"˅","color":"green","clickEvent":{"action":"run_command","value":"/trigger usercomms.blbt set 16"},"hoverEvent":{"action":"show_text","value":"show advanced"}}]
tellraw @s[tag=menu+.blbt] [{"text":"│","color":"dark_blue"}]
execute as @s[tag=menu+.blbt] run function blckbeats:songs/info
tellraw @s[tag=menu+.blbt] [{"text":"│","color":"dark_blue"}]
tellraw @s[tag=menu+.blbt] [{"text":"│Display ❁:    ","color":"green"},{"text":"[on]","color":"green","clickEvent":{"action":"run_command","value":"/trigger usercomms.blbt set 10"},"hoverEvent":{"action":"show_text","value":"actionbar"}},{"text":"/[off]","color":"red","clickEvent":{"action":"run_command","value":"/trigger usercomms.blbt set 11"},"hoverEvent":{"action":"show_text","value":"actionbar"}},{"text":"  "},{"text":"[on]","color":"green","clickEvent":{"action":"run_command","value":"/trigger usercomms.blbt set 12"},"hoverEvent":{"action":"show_text","value":"tracknames"}},{"text":"/[off]","color":"red","clickEvent":{"action":"run_command","value":"/trigger usercomms.blbt set 13"},"hoverEvent":{"action":"show_text","value":"tracknames"}}]
tellraw @s[tag=menu+.blbt] [{"text":"│","color":"dark_blue"}]
tellraw @s[tag=menu+.blbt] [{"text":"│Pack    ❁:    ","color":"green"},{"translate":"none","color":"gold","hoverEvent":{"action":"show_text","value":"installed soundpack"}},{"text":" | ","color":"blue"},{"text":"[ ✍ ]","hoverEvent":{"action":"show_text","value":"Set custom times from soundpack"},"color":"gold","clickEvent":{"action":"run_command","value":"/trigger usercomms.blbt set 19"}}]
tellraw @s[tag=menu+.blbt] [{"text":"│              ","color":"green"},{"translate":"[Official]","color":"green","clickEvent":{"action":"run_command","value":"/trigger usercomms.blbt set 20"},"hoverEvent":{"action":"show_text","value":"load times for official soundpack"}},{"translate":" [ L1/","color":"gold","clickEvent":{"action":"run_command","value":"/trigger usercomms.blbt set 21"},"hoverEvent":{"action":"show_text","value":"load global1"}},{"translate":"S1 ] ","color":"green","clickEvent":{"action":"run_command","value":"/function blckbeats:settimes/global1save"},"hoverEvent":{"action":"show_text","value":"save to global1"}},{"translate":"[ L2/","color":"gold","clickEvent":{"action":"run_command","value":"/trigger usercomms.blbt set 22"},"hoverEvent":{"action":"show_text","value":"load global2"}},{"translate":"S2 ] ","color":"green","clickEvent":{"action":"run_command","value":"/function blckbeats:settimes/global2save"},"hoverEvent":{"action":"show_text","value":"save to global2"}},{"translate":"[ L3/","color":"gold","clickEvent":{"action":"run_command","value":"/trigger usercomms.blbt set 23"},"hoverEvent":{"action":"show_text","value":"load global3"}},{"translate":"S3 ] ","color":"green","clickEvent":{"action":"run_command","value":"/function blckbeats:settimes/global3save"},"hoverEvent":{"action":"show_text","value":"save to global3"}}]
tellraw @s[tag=menu+.blbt] [{"text":"│ ","color":"dark_blue"},{"text":"[Uninstall]","color":"dark_red","clickEvent":{"action":"run_command","value":"/function blckbeats:uninstall"}}]
tellraw @s[tag=menu+.blbt] [{"text":"└───── ","color":"dark_blue"},{"text":"˄","color":"green","clickEvent":{"action":"run_command","value":"/trigger usercomms.blbt set 17"},"hoverEvent":{"action":"show_text","value":"hide"}}]


scoreboard players remove @s menu.blbt 1
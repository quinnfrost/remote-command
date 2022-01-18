# execute unless entity @s[distance=..20] positioned ^ ^ ^2 run function nuke:nuke
execute if entity @s[distance=..256] unless block ~ ~ ~ #block-ray:get_through run function block-ray:execute
execute if entity @s[distance=..256] if block ~ ~ ~ #block-ray:get_through positioned ^ ^ ^0.1 run function block-ray:ray
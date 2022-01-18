execute unless entity @s[predicate=something-on-a-stick-used:hold_dragon_stick_offhand] run effect give @e[predicate=!entity-ray:trigger,dx=0,dy=0,dz=0] minecraft:glowing 5 0 true 
execute as @s[predicate=something-on-a-stick-used:hold_dragon_stick] run function xayah:call-dragon
execute as @s[predicate=something-on-a-stick-used:hold_dragon_stick_offhand] run function xayah:call-dragon

execute as @s[predicate=something-on-a-stick-used:hold_evoker_wand] run function xayah:summon-evoker-fang

execute as @s[predicate=something-on-a-stick-used:hold_data_stick] run function xayah:get-entity-data

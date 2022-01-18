execute as @s[predicate=something-on-a-stick-used:hold_evoker_wand] if entity @s[tag=!sneaking] anchored feet positioned ^ ^ ^-0.3 align y run function xayah:tp-wand
execute as @s[predicate=something-on-a-stick-used:hold_evoker_wand] if entity @s[tag=sneaking] anchored feet positioned ^ ^ ^-0.3 align y run function xayah:summon-evoker-fang

execute as @s[predicate=something-on-a-stick-used:hold_evoker_wand_offhand] if entity @s[tag=!sneaking] anchored feet positioned ^ ^ ^-0.3 align y run function xayah:tp-wand
execute as @s[predicate=something-on-a-stick-used:hold_evoker_wand_offhand] if entity @s[tag=sneaking] anchored feet positioned ^ ^ ^-0.3 align y run function xayah:summon-lightning

execute at @e[type=minecraft:area_effect_cloud,tag=fallbackMarker] as @a[tag=sneaking,predicate=something-on-a-stick-used:hold_evoker_wand_offhand] if score @s fallbackUUID_0 = @e[type=minecraft:area_effect_cloud,tag=fallbackMarker,limit=1,sort=nearest,distance=..1] fallbackUUID_0 run effect give @s minecraft:blindness 1 1 true
execute at @e[type=minecraft:area_effect_cloud,tag=fallbackMarker] as @a[tag=sneaking,predicate=something-on-a-stick-used:hold_evoker_wand_offhand] if score @s fallbackUUID_0 = @e[type=minecraft:area_effect_cloud,tag=fallbackMarker,limit=1,sort=nearest,distance=..1] fallbackUUID_0 run tp @s ~ ~ ~
execute at @e[type=minecraft:area_effect_cloud,tag=fallbackMarker] as @a[tag=sneaking,predicate=something-on-a-stick-used:hold_evoker_wand_offhand] if score @s fallbackUUID_0 = @e[type=minecraft:area_effect_cloud,tag=fallbackMarker,limit=1,sort=nearest,distance=..1] fallbackUUID_0 run particle minecraft:witch ~ ~ ~ 1 0.3 1 1 100 force
execute at @e[type=minecraft:area_effect_cloud,tag=fallbackMarker] as @a[tag=sneaking,predicate=something-on-a-stick-used:hold_evoker_wand_offhand] if score @s fallbackUUID_0 = @e[type=minecraft:area_effect_cloud,tag=fallbackMarker,limit=1,sort=nearest,distance=..1] fallbackUUID_0 run data modify entity @e[type=minecraft:area_effect_cloud,tag=fallbackMarker,limit=1,sort=nearest,distance=..1] Duration set value 0

execute as @e[type=minecraft:area_effect_cloud,tag=fallbackMarker] at @a[predicate=!something-on-a-stick-used:hold_evoker_wand,predicate=!something-on-a-stick-used:hold_evoker_wand_offhand] if score @s fallbackUUID_0 = @p[limit=1,sort=nearest,distance=..1] fallbackUUID_0 run data modify entity @s Duration set value 0

# execute if entity @s[scores={fallbackCd=1..},predicate=sneak-test:sneaking] run tp @s ~ ~ ~
# execute if entity @s[scores={fallbackCd=1..},predicate=sneak-test:sneaking] run scoreboard players reset @s fallbackCd
# execute if entity @s[scores={fallbackCd=1..},predicate=!sneak-test:sneaking] run scoreboard players remove @s fallbackCd 1
# execute if entity @s[scores={fallbackCd=1..},predicate=!sneak-test:sneaking] run execute as @s run schedule function xayah:wand-fallback 2

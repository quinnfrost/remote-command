execute at @e[type=minecraft:area_effect_cloud,tag=fallbackMarker] if score @s fallbackUUID_0 = @e[type=minecraft:area_effect_cloud,tag=fallbackMarker,limit=1,sort=nearest,distance=..1] fallbackUUID_0 run data modify entity @e[type=minecraft:area_effect_cloud,tag=fallbackMarker,limit=1,sort=nearest,distance=..1] Duration set value 0
execute at @s run summon minecraft:area_effect_cloud ~ ~ ~ {Tags:["fallbackMarker"],Duration:600}

execute at @s as @e[type=minecraft:area_effect_cloud,tag=fallbackMarker,sort=nearest,limit=1,distance=..1] run execute store result score @s fallbackUUID_0 run data get entity @s UUID[0]
execute at @s store result score @s fallbackUUID_0 run data get entity @e[type=minecraft:area_effect_cloud,tag=fallbackMarker,sort=nearest,limit=1,distance=..1] UUID[0]

effect give @s minecraft:blindness 1 1 true
tp @s ~ ~ ~
execute at @s anchored eyes run particle minecraft:portal ~ ~ ~ 2 1 2 0.1 800 force

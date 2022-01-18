summon minecraft:lightning_bolt ~ ~-0.3 ~ {Warmup:-5,Tags:["summonedLightning"],Owner:[I; 298894762,-273925114,-2093001854,-509963302]}
execute store result entity @e[sort=nearest,limit=1,type=minecraft:lightning_bolt,tag=summonedLightning] Owner[0] long 1 run data get entity @s UUID[0]
execute store result entity @e[sort=nearest,limit=1,type=minecraft:lightning_bolt,tag=summonedLightning] Owner[1] long 1 run data get entity @s UUID[1]
execute store result entity @e[sort=nearest,limit=1,type=minecraft:lightning_bolt,tag=summonedLightning] Owner[2] long 1 run data get entity @s UUID[2]
execute store result entity @e[sort=nearest,limit=1,type=minecraft:lightning_bolt,tag=summonedLightning] Owner[3] long 1 run data get entity @s UUID[3]
data modify entity @e[sort=nearest,limit=1,type=minecraft:lightning_bolt,tag=summonedLightning] Owner set from entity @s UUID
tag @e[sort=nearest,limit=1,type=minecraft:lightning_bolt,tag=summonedLightning] remove summonedLightning

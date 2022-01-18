summon minecraft:evoker_fangs ~ ~-0.3 ~ {Warmup:-5,Tags:["summonedFang"],Owner:[I; 298894762,-273925114,-2093001854,-509963302]}
# execute store result entity @e[sort=nearest,limit=1,type=minecraft:evoker_fangs,tag=summonedFang] Owner[0] long 1 run data get entity @s UUID[0]
# execute store result entity @e[sort=nearest,limit=1,type=minecraft:evoker_fangs,tag=summonedFang] Owner[1] long 1 run data get entity @s UUID[1]
# execute store result entity @e[sort=nearest,limit=1,type=minecraft:evoker_fangs,tag=summonedFang] Owner[2] long 1 run data get entity @s UUID[2]
# execute store result entity @e[sort=nearest,limit=1,type=minecraft:evoker_fangs,tag=summonedFang] Owner[3] long 1 run data get entity @s UUID[3]
data modify entity @e[sort=nearest,limit=1,type=minecraft:evoker_fangs,tag=summonedFang] Owner set from entity @s UUID
tag @e[sort=nearest,limit=1,type=minecraft:evoker_fangs,tag=summonedFang] remove summonedFang

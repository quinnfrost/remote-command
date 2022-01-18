execute as @e[limit=1,sort=nearest,predicate=!entity-ray:trigger,dx=0,dy=0,dz=0] at @e[limit=1,sort=nearest,predicate=!entity-ray:trigger,dx=0,dy=0,dz=0] anchored eyes positioned ^ ^ ^ run summon arrow ~ ~1.0 ~ {Silent:1b,Tags:["commandArrow","summonArrow"],damage:0d,NoGravity:1b,Owner:[I; 298894700,-273925100,-2093001800,-509963300],Motion:[0d,-10d,0d]}

# execute store result entity @e[sort=nearest,limit=1,type=minecraft:arrow,tag=summonArrow] Owner[0] long 1 run data get entity @s UUID[0]
# execute store result entity @e[sort=nearest,limit=1,type=minecraft:arrow,tag=summonArrow] Owner[1] long 1 run data get entity @s UUID[1]
# execute store result entity @e[sort=nearest,limit=1,type=minecraft:arrow,tag=summonArrow] Owner[2] long 1 run data get entity @s UUID[2]
# execute store result entity @e[sort=nearest,limit=1,type=minecraft:arrow,tag=summonArrow] Owner[3] long 1 run data get entity @s UUID[3]
data modify entity @e[sort=nearest,limit=1,type=minecraft:arrow,tag=summonArrow] Owner set from entity @s UUID

tag @e[sort=nearest,limit=1,type=minecraft:arrow,tag=summonArrow] remove summonArrow

schedule function xayah:remove-command-arrow 40t

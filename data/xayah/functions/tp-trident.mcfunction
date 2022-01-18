tag @a[predicate=xayah:hold_tp_trident] add tridentReady
tag @a[predicate=xayah:hold_tp_trident_offhand] add tridentReady

# tag @a[predicate=xayah:hold_tp_trident,predicate=sneak-test:sneaking] add noTeleport 
# tag @a[predicate=xayah:hold_tp_trident,predicate=!sneak-test:sneaking] remove noTeleport 
# tag @a[predicate=xayah:hold_tp_trident_offhand,predicate=sneak-test:sneaking] add noTeleport 
# tag @a[predicate=xayah:hold_tp_trident_offhand,predicate=!sneak-test:sneaking] remove noTeleport 

execute as @e[type=minecraft:trident] run execute store result score @s ownerUUID_0 run data get entity @s Owner[0]
execute as @a[tag=tridentReady] run execute store result score @s targetUUID_0 run data get entity @s UUID[0]

execute as @e[type=minecraft:trident,nbt={inGround:1b}] run scoreboard players operation @a[tag=tridentReady,predicate=sneak-test:sneaking] targetUUID_0 -= @s ownerUUID_0
# execute as @e[type=minecraft:trident,nbt={inGround:1b}] run scoreboard players operation @a[tag=tridentReady,predicate=sneak-test:sneaking,tag=noTeleport] targetUUID_0 -= @s ownerUUID_0
# execute as @e[type=minecraft:trident,nbt={inGround:0b}] run scoreboard players operation @a[tag=tridentReady,predicate=sneak-test:sneaking,tag=!noTeleport] targetUUID_0 -= @s ownerUUID_0

execute as @a[scores={targetUUID_0=0}] run effect give @s minecraft:blindness 1 1 true

execute as @e[type=minecraft:trident] at @s positioned ~ ~0.5 ~ align y run tp @a[scores={targetUUID_0=0}] ~ ~ ~

execute as @a[scores={targetUUID_0=0}] at @s anchored eyes run particle minecraft:portal ~ ~ ~ 2 1 2 0 500 force

tag @a[scores={targetUUID_0=0}] remove tridentReady
execute as @a[scores={targetUUID_0=0}] run scoreboard players reset @s targetUUID_0 

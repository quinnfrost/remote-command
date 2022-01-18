execute as @e[type=minecraft:item,predicate=item-break-blocks:axe_items] at @s align xyz if block ~ ~ ~ #item-break-blocks:axe_breaks run tag @s add breaking_block
# execute as @e[tag=breaking_block] at @s align xyz run data modify entity @s PickupDelay set value 20
execute as @e[tag=breaking_block] at @s align xyz if block ~ ~ ~ #item-break-blocks:axe_breaks run setblock ~ ~ ~ minecraft:air destroy

execute as @e[tag=breaking_block] at @s align xyz positioned ~1 ~ ~ if block ~ ~ ~ minecraft:dispenser run data modify block ~ ~ ~ Items append from entity @e[tag=breaking_block,type=item,limit=1,sort=nearest] Item
execute as @e[tag=breaking_block] at @s align xyz positioned ~1 ~ ~ if block ~ ~ ~ minecraft:dispenser run tag @s add dispenser_set

execute as @e[tag=breaking_block,tag=!dispenser_set] at @s align xyz positioned ~-1 ~ ~ if block ~ ~ ~ minecraft:dispenser run data modify block ~ ~ ~ Items append from entity @e[tag=breaking_block,type=item,limit=1,sort=nearest] Item
execute as @e[tag=breaking_block,tag=!dispenser_set] at @s align xyz positioned ~-1 ~ ~ if block ~ ~ ~ minecraft:dispenser run tag @s add dispenser_set

execute as @e[tag=breaking_block,tag=!dispenser_set] at @s align xyz positioned ~ ~ ~1 if block ~ ~ ~ minecraft:dispenser run data modify block ~ ~ ~ Items append from entity @e[tag=breaking_block,type=item,limit=1,sort=nearest] Item
execute as @e[tag=breaking_block,tag=!dispenser_set] at @s align xyz positioned ~ ~ ~1 if block ~ ~ ~ minecraft:dispenser run tag @s add dispenser_set

execute as @e[tag=breaking_block,tag=!dispenser_set] at @s align xyz positioned ~ ~ ~-1 if block ~ ~ ~ minecraft:dispenser run data modify block ~ ~ ~ Items append from entity @e[tag=breaking_block,type=item,limit=1,sort=nearest] Item
execute as @e[tag=breaking_block,tag=!dispenser_set] at @s align xyz positioned ~ ~ ~-1 if block ~ ~ ~ minecraft:dispenser run tag @s add dispenser_set

execute as @e[tag=breaking_block,tag=!dispenser_set] at @s align xyz positioned ~ ~1 ~ if block ~ ~ ~ minecraft:dispenser run data modify block ~ ~ ~ Items append from entity @e[tag=breaking_block,type=item,limit=1,sort=nearest] Item
execute as @e[tag=breaking_block,tag=!dispenser_set] at @s align xyz positioned ~ ~1 ~ if block ~ ~ ~ minecraft:dispenser run tag @s add dispenser_set

execute as @e[tag=breaking_block,tag=!dispenser_set] at @s align xyz positioned ~ ~-1 ~ if block ~ ~ ~ minecraft:dispenser run data modify block ~ ~ ~ Items append from entity @e[tag=breaking_block,type=item,limit=1,sort=nearest] Item
execute as @e[tag=breaking_block,tag=!dispenser_set] at @s align xyz positioned ~ ~-1 ~ if block ~ ~ ~ minecraft:dispenser run tag @s add dispenser_set

execute as @e[tag=breaking_block,tag=dispenser_set,type=minecraft:item,limit=1] run kill @s

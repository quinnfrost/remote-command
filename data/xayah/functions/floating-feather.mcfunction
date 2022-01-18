execute as @a[predicate=something-on-a-stick-used:hold_floating_feather,tag=!usingFeather] run tag @s add startingFeather
execute as @a[predicate=something-on-a-stick-used:hold_floating_feather,tag=!usingFeather] run tag @s add usingFeather
execute as @a[predicate=something-on-a-stick-used:hold_floating_feather_offhand,tag=!usingFeather] run tag @s add startingFeather
execute as @a[predicate=something-on-a-stick-used:hold_floating_feather_offhand,tag=!usingFeather] run tag @s add usingFeather

execute as @a[predicate=something-on-a-stick-used:hold_floating_feather,tag=usingFeather,tag=!startingFeather] run tag @s remove usingFeather
execute as @a[predicate=something-on-a-stick-used:hold_floating_feather_offhand,tag=usingFeather,tag=!startingFeather] run tag @s remove usingFeather
execute as @a run tag @s remove startingFeather

# execute as @a[predicate=something-on-a-stick-used:hold_floating_feather,tag=wstickUsed] run effect give @s minecraft:levitation 1
# execute as @a[predicate=something-on-a-stick-used:hold_floating_feather,tag=wstickUsed] run effect give @s minecraft:slow_falling 1

# execute as @a[predicate=something-on-a-stick-used:hold_floating_feather_offhand,tag=wstickUsed] run effect give @s minecraft:levitation 1 1
# execute as @a[predicate=something-on-a-stick-used:hold_floating_feather_offhand,tag=wstickUsed] run effect give @s minecraft:slow_falling 1 1

# execute as @a[predicate=!something-on-a-stick-used:hold_floating_feather,predicate=!something-on-a-stick-used:hold_floating_feather_offhand,nbt={ActiveEffects:[{Id:25b}]},nbt={ActiveEffects:[{Id:28b}]}] run effect clear @s minecraft:levitation
# execute as @a[predicate=!something-on-a-stick-used:hold_floating_feather,predicate=!something-on-a-stick-used:hold_floating_feather_offhand,nbt={ActiveEffects:[{Id:28b}]}] run effect clear @s minecraft:slow_falling

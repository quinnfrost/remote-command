execute as @a[predicate=something-on-a-stick-used:hold_floating_feather,tag=usingFeather,tag=!sneaking] run effect give @s minecraft:levitation 1 255 true
execute as @a[predicate=something-on-a-stick-used:hold_floating_feather_offhand,tag=usingFeather,tag=!sneaking] run effect give @s minecraft:levitation 1 255 true

execute as @a[predicate=something-on-a-stick-used:hold_floating_feather,tag=usingFeather,tag=sneaking,nbt={ActiveEffects:[{Id:25b,Amplifier:-1b}]}] run effect clear @s minecraft:levitation
execute as @a[predicate=something-on-a-stick-used:hold_floating_feather,tag=usingFeather,tag=sneaking] run effect give @s minecraft:levitation 1 3 true
execute as @a[predicate=something-on-a-stick-used:hold_floating_feather,tag=usingFeather,tag=sneaking,nbt={ActiveEffects:[{Id:28b}]}] run effect clear @s minecraft:slow_falling

execute as @a[predicate=something-on-a-stick-used:hold_floating_feather_offhand,tag=usingFeather,tag=sneaking] run effect give @s minecraft:slow_falling 1 1 true
execute as @a[predicate=something-on-a-stick-used:hold_floating_feather_offhand,tag=usingFeather,tag=sneaking,nbt={ActiveEffects:[{Id:25b}]}] run effect clear @s minecraft:levitation

execute as @a[predicate=!something-on-a-stick-used:hold_floating_feather,predicate=!something-on-a-stick-used:hold_floating_feather_offhand,tag=usingFeather,nbt={ActiveEffects:[{Id:25b,Amplifier:-1b}]}] run effect give @s minecraft:jump_boost 2 255 false
execute as @a[predicate=!something-on-a-stick-used:hold_floating_feather,predicate=!something-on-a-stick-used:hold_floating_feather_offhand,tag=usingFeather,nbt={ActiveEffects:[{Id:25b}]}] run effect clear @s minecraft:levitation
execute as @a[predicate=!something-on-a-stick-used:hold_floating_feather,predicate=!something-on-a-stick-used:hold_floating_feather_offhand,tag=usingFeather,nbt={ActiveEffects:[{Id:28b}]}] run effect clear @s minecraft:slow_falling
execute as @a[predicate=!something-on-a-stick-used:hold_floating_feather,predicate=!something-on-a-stick-used:hold_floating_feather_offhand] run tag @s remove usingFeather

execute as @a[predicate=something-on-a-stick-used:hold_floating_feather,tag=!usingFeather,nbt={ActiveEffects:[{Id:25b,Amplifier:-1b}]}] run effect give @s minecraft:jump_boost 2 255 false
execute as @a[predicate=something-on-a-stick-used:hold_floating_feather,tag=!usingFeather,nbt={ActiveEffects:[{Id:25b}]}] run effect clear @s minecraft:levitation
execute as @a[predicate=something-on-a-stick-used:hold_floating_feather,tag=!usingFeather,nbt={ActiveEffects:[{Id:28b}]}] run effect clear @s minecraft:slow_falling
execute as @a[predicate=something-on-a-stick-used:hold_floating_feather_offhand,tag=!usingFeather,nbt={ActiveEffects:[{Id:25b,Amplifier:-1b}]}] run effect give @s minecraft:jump_boost 2 255 false
execute as @a[predicate=something-on-a-stick-used:hold_floating_feather_offhand,tag=!usingFeather,nbt={ActiveEffects:[{Id:25b}]}] run effect clear @s minecraft:levitation
execute as @a[predicate=something-on-a-stick-used:hold_floating_feather_offhand,tag=!usingFeather,nbt={ActiveEffects:[{Id:28b}]}] run effect clear @s minecraft:slow_falling

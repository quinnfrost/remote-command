execute as @e[limit=1,predicate=feeding-animal:seeds] at @s if entity @e[type=#feeding-animal:love_seed,limit=1,sort=nearest,distance=..1.5,nbt={InLove:0,Age:0}] run tag @s add seedEaten
execute as @e[predicate=feeding-animal:seeds,tag=seedEaten] at @s run data modify entity @e[type=#feeding-animal:love_seed,limit=1,sort=nearest,distance=..1.5,nbt={InLove:0,Age:0}] LoveCause set from entity @s Thrower
execute as @e[predicate=feeding-animal:seeds,tag=seedEaten] at @s run data modify entity @e[type=#feeding-animal:love_seed,limit=1,sort=nearest,distance=..1.5,nbt={InLove:0,Age:0}] InLove set value 200
execute as @e[predicate=feeding-animal:seeds,tag=seedEaten] store result score @s itemCount run data get entity @s Item.Count
execute as @e[predicate=feeding-animal:seeds,tag=seedEaten] run scoreboard players remove @s itemCount 1
execute as @e[predicate=feeding-animal:seeds,tag=seedEaten] store result entity @s Item.Count byte 1 run scoreboard players get @s itemCount
execute as @e[predicate=feeding-animal:seeds,tag=seedEaten] run tag @s remove seedEaten
# execute at @e[predicate=feeding-animal:seeds,tag=seedEaten] run data modify entity @e[type=#feeding-animal:love_seed,limit=1,sort=nearest,distance=..1.5,nbt={InLove:0}] LoveCause set value [I; 298894700,-273925100,-2093001800,-509963300]
# execute as @e[predicate=feeding-animal:seeds,tag=seedEaten] run kill @s

execute as @e[limit=1,predicate=feeding-animal:wheats] at @s if entity @e[type=#feeding-animal:love_wheat,limit=1,sort=nearest,distance=..1.5,nbt={InLove:0,Age:0}] run tag @s add wheatEaten
execute as @e[predicate=feeding-animal:wheats,tag=wheatEaten] at @s run data modify entity @e[type=#feeding-animal:love_wheat,limit=1,sort=nearest,distance=..1.5,nbt={InLove:0,Age:0}] LoveCause set from entity @s Thrower
execute as @e[predicate=feeding-animal:wheats,tag=wheatEaten] at @s run data modify entity @e[type=#feeding-animal:love_wheat,limit=1,sort=nearest,distance=..1.5,nbt={InLove:0,Age:0}] InLove set value 200
execute as @e[predicate=feeding-animal:wheats,tag=wheatEaten] store result score @s itemCount run data get entity @s Item.Count
execute as @e[predicate=feeding-animal:wheats,tag=wheatEaten] run scoreboard players remove @s itemCount 1
execute as @e[predicate=feeding-animal:wheats,tag=wheatEaten] store result entity @s Item.Count byte 1 run scoreboard players get @s itemCount
execute as @e[predicate=feeding-animal:wheats,tag=wheatEaten] run tag @s remove wheatEaten

execute as @e[limit=1,predicate=feeding-animal:carrots] at @s if entity @e[type=#feeding-animal:love_carrot,limit=1,sort=nearest,distance=..1.5,nbt={InLove:0,Age:0}] run tag @s add carrotEaten
execute as @e[predicate=feeding-animal:carrots,tag=carrotEaten] at @s run data modify entity @e[type=#feeding-animal:love_carrot,limit=1,sort=nearest,distance=..1.5,nbt={InLove:0,Age:0}] LoveCause set from entity @s Thrower
execute as @e[predicate=feeding-animal:carrots,tag=carrotEaten] at @s run data modify entity @e[type=#feeding-animal:love_carrot,limit=1,sort=nearest,distance=..1.5,nbt={InLove:0,Age:0}] InLove set value 200
execute as @e[predicate=feeding-animal:carrots,tag=carrotEaten] store result score @s itemCount run data get entity @s Item.Count
execute as @e[predicate=feeding-animal:carrots,tag=carrotEaten] run scoreboard players remove @s itemCount 1
execute as @e[predicate=feeding-animal:carrots,tag=carrotEaten] store result entity @s Item.Count byte 1 run scoreboard players get @s itemCount
execute as @e[predicate=feeding-animal:carrots,tag=carrotEaten] run tag @s remove carrotEaten



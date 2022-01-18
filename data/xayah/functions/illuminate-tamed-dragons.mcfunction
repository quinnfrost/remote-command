execute store result score @s ownerUUID_0 run data get entity @s UUID[0]
execute at @e[type=#xayah:dragons,nbt={TamedDragon:1b}] store result score @e[limit=1,sort=nearest,distance=..1,type=#xayah:dragons,nbt={TamedDragon:1b}] targetUUID_0 run data get entity @e[limit=1,sort=nearest,distance=..1,type=#xayah:dragons,nbt={TamedDragon:1b}] Owner[0]

execute if entity @s at @e[type=#xayah:dragons,nbt={TamedDragon:1b}] if score @s ownerUUID_0 = @e[limit=1,sort=nearest,distance=..1,type=#xayah:dragons,nbt={TamedDragon:1b}] targetUUID_0 run tag @e[limit=1,sort=nearest,distance=..1,type=#xayah:dragons,nbt={TamedDragon:1b}] add illuminating
execute store result score @s successCount run effect give @e[tag=illuminating,type=#xayah:dragons,nbt={TamedDragon:1b}] minecraft:glowing 10 0 true
tag @e[tag=illuminating,type=#xayah:dragons,nbt={TamedDragon:1b}] remove illuminating
execute if entity @s run title @s actionbar ["",{"text":"点亮 ","color":"aqua"},{"score":{"name":"*","objective":"successCount","color":"aqua"}},{"text":" 条龙","color":"aqua"}]

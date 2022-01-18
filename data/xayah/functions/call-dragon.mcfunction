# execute if entity @s[tag=sneaking] as @s run say 11
effect give @e[predicate=!entity-ray:trigger,dx=0,dy=0,dz=0] minecraft:glowing 5 0 true 
execute store result score @s ownerUUID_0 run data get entity @s UUID[0]
execute store result score @e[limit=1,sort=nearest,predicate=!entity-ray:trigger,dx=0,dy=0,dz=0] targetUUID_0 run data get entity @e[limit=1,sort=nearest,predicate=!entity-ray:trigger,dx=0,dy=0,dz=0] Owner[0]
# scoreboard players operation @s resultUUID -= @s ownerUUID

# execute if entity @s[tag=!sneaking] if score @s ownerUUID_0 = @e[limit=1,sort=nearest,predicate=!entity-ray:trigger,dx=0,dy=0,dz=0] targetUUID_0 run data modify entity @e[limit=1,sort=nearest,predicate=!entity-ray:trigger,dx=0,dy=0,dz=0,nbt={Hovering:0b}] Hovering set value 1
# execute if entity @s[tag=!sneaking] if score @s ownerUUID_0 = @e[limit=1,sort=nearest,predicate=!entity-ray:trigger,dx=0,dy=0,dz=0] targetUUID_0 run data modify entity @e[limit=1,sort=nearest,predicate=!entity-ray:trigger,dx=0,dy=0,dz=0,nbt={Hovering:1b}] Hovering set value 0

# execute if entity @s[tag=!sneaking] if score @s ownerUUID_0 = @e[limit=1,sort=nearest,predicate=!entity-ray:trigger,dx=0,dy=0,dz=0] targetUUID_0 run data modify entity @e[limit=1,sort=nearest,predicate=!entity-ray:trigger,dx=0,dy=0,dz=0,nbt={Flying:0b}] Flying set value 1
# execute if entity @s[tag=!sneaking] if score @s ownerUUID_0 = @e[limit=1,sort=nearest,predicate=!entity-ray:trigger,dx=0,dy=0,dz=0] targetUUID_0 run data modify entity @e[limit=1,sort=nearest,predicate=!entity-ray:trigger,dx=0,dy=0,dz=0,nbt={Flying:1b}] Flying set value 0

#region
execute if entity @s[predicate=something-on-a-stick-used:hold_dragon_stick,tag=!sneaking] if score @s ownerUUID_0 = @e[limit=1,sort=nearest,predicate=!entity-ray:trigger,dx=0,dy=0,dz=0] targetUUID_0 run tag @e[limit=1,sort=nearest,predicate=!entity-ray:trigger,dx=0,dy=0,dz=0,nbt={TamedDragon:1b,Flying:1b,Command:0}] add hoveringToggled
execute if entity @s[predicate=something-on-a-stick-used:hold_dragon_stick,tag=!sneaking] if score @s ownerUUID_0 = @e[limit=1,sort=nearest,predicate=!entity-ray:trigger,dx=0,dy=0,dz=0] targetUUID_0 run tag @e[limit=1,sort=nearest,predicate=!entity-ray:trigger,dx=0,dy=0,dz=0,nbt={TamedDragon:1b,Flying:1b,Command:0}] add lastWonder
execute if entity @s[predicate=something-on-a-stick-used:hold_dragon_stick,tag=!sneaking] if score @s ownerUUID_0 = @e[limit=1,sort=nearest,predicate=!entity-ray:trigger,dx=0,dy=0,dz=0] targetUUID_0 run data modify entity @e[limit=1,sort=nearest,predicate=!entity-ray:trigger,dx=0,dy=0,dz=0,nbt={TamedDragon:1b,Flying:1b,Command:0}] Command set value 1

execute if entity @s[predicate=something-on-a-stick-used:hold_dragon_stick,tag=!sneaking] if score @s ownerUUID_0 = @e[limit=1,sort=nearest,predicate=!entity-ray:trigger,dx=0,dy=0,dz=0] targetUUID_0 run tag @e[limit=1,sort=nearest,predicate=!entity-ray:trigger,dx=0,dy=0,dz=0,nbt={TamedDragon:1b,Flying:1b,Command:2}] add hoveringToggled
execute if entity @s[predicate=something-on-a-stick-used:hold_dragon_stick,tag=!sneaking] if score @s ownerUUID_0 = @e[limit=1,sort=nearest,predicate=!entity-ray:trigger,dx=0,dy=0,dz=0] targetUUID_0 run tag @e[limit=1,sort=nearest,predicate=!entity-ray:trigger,dx=0,dy=0,dz=0,nbt={TamedDragon:1b,Command:2}] add lastFollow
execute if entity @s[predicate=something-on-a-stick-used:hold_dragon_stick,tag=!sneaking] if score @s ownerUUID_0 = @e[limit=1,sort=nearest,predicate=!entity-ray:trigger,dx=0,dy=0,dz=0] targetUUID_0 run data modify entity @e[limit=1,sort=nearest,predicate=!entity-ray:trigger,dx=0,dy=0,dz=0,nbt={TamedDragon:1b,Flying:1b,Command:2}] Command set value 1

execute if entity @s[predicate=something-on-a-stick-used:hold_dragon_stick,tag=!sneaking] if score @s ownerUUID_0 = @e[limit=1,sort=nearest,predicate=!entity-ray:trigger,dx=0,dy=0,dz=0] targetUUID_0 run data modify entity @e[limit=1,sort=nearest,predicate=!entity-ray:trigger,dx=0,dy=0,dz=0,nbt={TamedDragon:1b,Flying:1b,Command:1},tag=!lastFollow,tag=!hoveringToggled] Command set value 0
execute if entity @s[predicate=something-on-a-stick-used:hold_dragon_stick,tag=!sneaking] if score @s ownerUUID_0 = @e[limit=1,sort=nearest,predicate=!entity-ray:trigger,dx=0,dy=0,dz=0] targetUUID_0 run data modify entity @e[limit=1,sort=nearest,predicate=!entity-ray:trigger,dx=0,dy=0,dz=0,nbt={TamedDragon:1b,Flying:1b,Command:1},tag=lastFollow,tag=!hoveringToggled] Command set value 2
execute if entity @s[predicate=something-on-a-stick-used:hold_dragon_stick,tag=!sneaking] if score @s ownerUUID_0 = @e[limit=1,sort=nearest,predicate=!entity-ray:trigger,dx=0,dy=0,dz=0] targetUUID_0 run tag @e[limit=1,sort=nearest,predicate=!entity-ray:trigger,dx=0,dy=0,dz=0,nbt={TamedDragon:1b,Flying:1b},tag=!hoveringToggled] remove lastWonder
execute if entity @s[predicate=something-on-a-stick-used:hold_dragon_stick,tag=!sneaking] if score @s ownerUUID_0 = @e[limit=1,sort=nearest,predicate=!entity-ray:trigger,dx=0,dy=0,dz=0] targetUUID_0 run tag @e[limit=1,sort=nearest,predicate=!entity-ray:trigger,dx=0,dy=0,dz=0,nbt={TamedDragon:1b,Flying:1b},tag=!hoveringToggled] remove lastFollow

execute if entity @s[predicate=something-on-a-stick-used:hold_dragon_stick,tag=!sneaking] if score @s ownerUUID_0 = @e[limit=1,sort=nearest,predicate=!entity-ray:trigger,dx=0,dy=0,dz=0] targetUUID_0 run tag @e[limit=1,sort=nearest,predicate=!entity-ray:trigger,dx=0,dy=0,dz=0,nbt={TamedDragon:1b}] remove hoveringToggled
#endregion

execute if entity @s[predicate=something-on-a-stick-used:hold_dragon_stick,tag=sneaking] if score @s ownerUUID_0 = @e[limit=1,sort=nearest,predicate=!entity-ray:trigger,dx=0,dy=0,dz=0] targetUUID_0 run data modify entity @e[limit=1,sort=nearest,predicate=!entity-ray:trigger,dx=0,dy=0,dz=0] Hovering set value 0

execute if entity @s[predicate=something-on-a-stick-used:hold_dragon_stick,tag=sneaking] if score @s ownerUUID_0 = @e[limit=1,sort=nearest,predicate=!entity-ray:trigger,dx=0,dy=0,dz=0] targetUUID_0 run data modify entity @e[limit=1,sort=nearest,predicate=!entity-ray:trigger,dx=0,dy=0,dz=0] Flying set value 0
execute if entity @s[predicate=something-on-a-stick-used:hold_dragon_stick,tag=sneaking] if score @s ownerUUID_0 = @e[limit=1,sort=nearest,predicate=!entity-ray:trigger,dx=0,dy=0,dz=0,nbt={TamedDragon:1b}] targetUUID_0 run data modify entity @e[limit=1,sort=nearest,predicate=!entity-ray:trigger,dx=0,dy=0,dz=0,nbt={TamedDragon:1b}] Command set value 2

# execute if entity @s[tag=sneaking] if score @s ownerUUID_0 = @e[limit=1,sort=nearest,predicate=!entity-ray:trigger,dx=0,dy=0,dz=0] targetUUID_0 run data modify entity @e[type=!#xayah:dragons,limit=1,sort=nearest,predicate=!entity-ray:trigger,dx=0,dy=0,dz=0,nbt={Sitting:0b}] Sitting set value 1b
execute if entity @s[predicate=something-on-a-stick-used:hold_dragon_stick,tag=sneaking] if score @s ownerUUID_0 = @e[limit=1,sort=nearest,predicate=!entity-ray:trigger,dx=0,dy=0,dz=0] targetUUID_0 run data modify entity @e[type=!#xayah:dragons,limit=1,sort=nearest,predicate=!entity-ray:trigger,dx=0,dy=0,dz=0,nbt={Sitting:1b}] Sitting set value 0b

execute if entity @s[predicate=something-on-a-stick-used:hold_dragon_stick,tag=sneaking] unless score @s ownerUUID_0 = @e[limit=1,sort=nearest,predicate=!entity-ray:trigger,dx=0,dy=0,dz=0] targetUUID_0 run function xayah:command-arrow

execute if entity @s[predicate=something-on-a-stick-used:hold_dragon_stick_offhand,tag=!sneaking] if score @s ownerUUID_0 = @e[limit=1,sort=nearest,predicate=!entity-ray:trigger,dx=0,dy=0,dz=0] targetUUID_0 run data modify entity @e[limit=1,sort=nearest,predicate=!entity-ray:trigger,dx=0,dy=0,dz=0,nbt={TamedDragon:1b}] Command set value 0

execute if entity @s[predicate=something-on-a-stick-used:hold_dragon_stick_offhand,tag=sneaking] if score @s ownerUUID_0 = @e[limit=1,sort=nearest,predicate=!entity-ray:trigger,dx=0,dy=0,dz=0] targetUUID_0 run data modify entity @e[limit=1,sort=nearest,predicate=!entity-ray:trigger,dx=0,dy=0,dz=0,nbt={TamedDragon:1b}] Command set value 1
execute if entity @s[predicate=something-on-a-stick-used:hold_dragon_stick_offhand,tag=sneaking] if score @s ownerUUID_0 = @e[limit=1,sort=nearest,predicate=!entity-ray:trigger,dx=0,dy=0,dz=0] targetUUID_0 run data modify entity @e[limit=1,sort=nearest,predicate=!entity-ray:trigger,dx=0,dy=0,dz=0,nbt={TamedDragon:1b}] Flying set value 0b
execute if entity @s[predicate=something-on-a-stick-used:hold_dragon_stick_offhand,tag=sneaking] if score @s ownerUUID_0 = @e[limit=1,sort=nearest,predicate=!entity-ray:trigger,dx=0,dy=0,dz=0] targetUUID_0 run data modify entity @e[limit=1,sort=nearest,predicate=!entity-ray:trigger,dx=0,dy=0,dz=0,nbt={Sitting:0b}] Sitting set value 1b

scoreboard players reset @e[limit=1,sort=nearest,predicate=!entity-ray:trigger,dx=0,dy=0,dz=0] targetUUID_0
scoreboard players reset @s ownerUUID_0

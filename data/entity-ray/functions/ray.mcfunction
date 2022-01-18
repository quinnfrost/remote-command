execute unless entity @s[distance=..298] run function entity-ray:failed
execute if entity @s[distance=..298] if entity @e[dx=0,dy=0,dz=0] unless entity @s[dx=0,dy=0,dz=0] unless entity @e[type=#entity-ray:ignore,dx=0,dy=0,dz=0] as @s run function entity-ray:execute
execute if entity @s[distance=..298] unless entity @e[dx=0,dy=0,dz=0] positioned ^ ^ ^0.1 run function entity-ray:ray
execute if entity @s[distance=..298] if entity @s[dx=0,dy=0,dz=0] positioned ^ ^ ^0.1 run function entity-ray:ray
execute if entity @s[distance=..298] if entity @e[type=#entity-ray:ignore,dx=0,dy=0,dz=0] positioned ^ ^ ^0.1 run function entity-ray:ray

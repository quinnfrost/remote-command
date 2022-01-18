# execute if entity @a[scores={c_on_stick_used=1..}] as @a[scores={c_on_stick_used=1..}] run function something-on-a-stick-used:execute
# execute if entity @a[scores={c_on_stick_used=1..}] run scoreboard players set @a[scores={c_on_stick_used=1..}] c_on_stick_used 0
tag @a[scores={w_on_stick_used=1..}] add wstickUsed
# tag @a[scores={w_on_stick_used=1..}] add cstickUsed

execute if entity @a[scores={w_on_stick_used=1..}] as @a[scores={w_on_stick_used=1..}] run function something-on-a-stick-used:execute

tag @a[scores={w_on_stick_used=0}] remove wstickUsed
# tag @a[scores={w_on_stick_used=1..}] remove cstickUsed
execute if entity @a[scores={w_on_stick_used=1..}] run scoreboard players set @a[scores={w_on_stick_used=1..}] w_on_stick_used 0

# execute as @a[tag=wstickUsed] run say 111
# execute as @a[tag=!wstickUsed] run say 000

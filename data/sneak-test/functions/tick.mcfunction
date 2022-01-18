tag @a[scores={sneakTest=1..}] add sneaking
# execute as @a[tag=sneaking] run say 1

tag @a[scores={sneakTest=0}] remove sneaking
scoreboard players set @e[scores={sneakTest=1..}] sneakTest 0
# execute as @a[tag=!sneaking] run say 0

# schedule function sneak-test:recurse 2t replace

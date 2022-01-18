tag @a[scores={sprintTest=1..}] add sprinting
# execute as @a[tag=sprinting] run say 1

tag @a[scores={sprintTest=0}] remove sprinting
scoreboard players set @e[scores={sprintTest=1..}] sprintTest 0
# execute as @a[tag=!sprinting] run say 0

# schedule function sprint-test:recurse 2t replace

effect give @e[predicate=sprint-test:sprinting] glowing 1

tag @a[scores={spyglassUsed=1..}] add spyglassUsed

execute if entity @a[scores={spyglassUsed=1..}] as @a[scores={spyglassUsed=1..}] run function spyglass-used:execute

tag @a[scores={spyglassUsed=0},predicate=!spyglass-used:hold_spyglass] remove spyglassUsed

execute if entity @a[scores={spyglassUsed=1..}] run scoreboard players set @a[scores={spyglassUsed=1..},predicate=!spyglass-used:hold_spyglass] spyglassUsed 0


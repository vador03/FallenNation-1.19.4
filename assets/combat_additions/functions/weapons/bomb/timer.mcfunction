scoreboard players add @s gth.age 1
execute as @s[scores={gth.age=1}] run playsound minecraft:item.bomb.fuse player @a[distance=..16] ~ ~ ~ 1 1 0.1
execute as @s[scores={gth.age=10}] run particle flame ~ ~0.65 ~-0.2
execute as @s[scores={gth.age=20}] run particle flame ~ ~0.65 ~-0.2
execute as @s[scores={gth.age=30}] run particle flame ~ ~0.65 ~-0.2
execute as @s[scores={gth.age=40}] run particle flame ~ ~0.65 ~-0.2
execute as @s[scores={gth.age=50}] run particle flame ~ ~0.65 ~-0.2
execute as @s[scores={gth.age=50}] run particle flame ~ ~0.65 ~-0.2
execute as @s[scores={gth.age=60..}] run function combat_additions:weapons/bomb/explode
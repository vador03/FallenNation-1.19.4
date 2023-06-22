kill @s
execute as @e[type=!#non_living,distance=..2] run function combat_additions:weapons/bomb/damage/max
execute as @e[type=!#non_living,distance=2..4] run function combat_additions:weapons/bomb/damage/medium
execute as @e[type=!#non_living,distance=4..6] run function combat_additions:weapons/bomb/damage/min
playsound entity.generic.explode player @a[distance=..32] ~ ~ ~ 2 1 0.1
particle explosion_emitter ~ ~0.25 ~ 0.2 0.2 0.2 1 1 normal
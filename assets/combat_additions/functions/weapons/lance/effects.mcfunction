effect give @s luck 3 1 true
playsound minecraft:block.bone_block.hit player @a[distance=..16] ~ ~ ~ 1 1 0.1
effect give @s[type=!player] slowness 3 2 true
attribute @s[type=player] generic.movement_speed base set 0.05
attribute @s[type=player] generic.attack_speed base set 3
tag @s add gth.disorientation_added
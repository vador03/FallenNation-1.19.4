effect give @s unluck 30 0 true
playsound minecraft:item.armor.shattered player @a[distance=..16] ~ ~ ~ 1 1 0.1
attribute @s generic.armor base set -2
tag @s add gth.shattered_added
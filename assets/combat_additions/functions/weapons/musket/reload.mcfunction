execute unless entity @s[scores={gth.sneaking=1..}] run scoreboard players set @s gth.musket_reload 0
execute as @s[scores={gth.musket_reload=60}] at @s run playsound minecraft:item.armor.equip_iron player @a[distance=..16] ~ ~ ~ 1 1.25 0.1
execute as @s[scores={gth.musket_reload=20}] at @s run playsound minecraft:item.flintandsteel.use player @a[distance=..16] ~ ~ ~ 1 1 0.1
execute as @s[scores={gth.musket_reload=1}] at @s run playsound minecraft:block.lever.click player @a[distance=..16] ~ ~ ~ 0.5 1.5 0.1
execute as @s[scores={gth.musket_reload=1}] at @s run playsound minecraft:block.iron_trapdoor.open player @a[distance=..16] ~ ~ ~ 1 1.5 0.1
item modify entity @s[predicate=combat_additions:has_multishot,scores={gth.musket_reload=1}] weapon.mainhand combat_additions:musket_reload_multishot
item modify entity @s[predicate=!combat_additions:has_multishot,scores={gth.musket_reload=1}] weapon.mainhand combat_additions:musket_reload
clear @s[scores={gth.musket_reload=1}] gunpowder{gth:{musket_charge:1b}} 1
scoreboard players remove @s[scores={gth.musket_reload=1..}] gth.musket_reload 1
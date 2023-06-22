execute as @s[predicate=combat_additions:has_rifled] run execute as @e[type=arrow,sort=nearest,limit=1,tag=!gth.motion_added] at @s rotated as @p run function combat_additions:weapons/musket/enchantments/rifled
execute as @s[predicate=combat_additions:has_piercing,predicate=!combat_additions:has_rifled] run execute as @e[type=arrow,sort=nearest,limit=1,tag=!gth.motion_added] at @s rotated as @p run function combat_additions:weapons/musket/enchantments/piercing
execute as @s[predicate=combat_additions:has_multishot,predicate=!combat_additions:has_rifled] run function combat_additions:weapons/musket/enchantments/multishot/main
execute as @s[predicate=!combat_additions:has_piercing,predicate=!combat_additions:has_multishot] run execute as @e[type=arrow,sort=nearest,limit=1,tag=!gth.motion_added] at @s rotated as @p run function combat_additions:weapons/musket/enchantments/normal
item modify entity @s[predicate=combat_additions:has_rifled] weapon.mainhand combat_additions:musket_shoot_rifled
item modify entity @s[predicate=!combat_additions:has_rifled] weapon.mainhand combat_additions:musket_shoot
advancement grant @s only minecraft:adventure/sore_shoulders
execute anchored eyes rotated as @s run particle minecraft:campfire_signal_smoke ^ ^ ^1 0.2 0.2 0.2 0.01 50 normal
playsound minecraft:item.musket.shoot player @a[distance=..64] ~ ~ ~ 1 1 0.1
tp @s[predicate=!combat_additions:riding_entity] ~ ~ ~ ~30 ~-30
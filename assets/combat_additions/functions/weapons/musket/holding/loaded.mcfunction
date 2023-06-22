item modify entity @s[predicate=combat_additions:has_rifled] weapon.mainhand combat_additions:musket_reload_rifled
item modify entity @s[predicate=combat_additions:has_multishot,predicate=!combat_additions:has_rifled] weapon.mainhand combat_additions:musket_reload_multishot
item modify entity @s[predicate=!combat_additions:has_multishot,predicate=!combat_additions:has_rifled] weapon.mainhand combat_additions:musket_reload
execute as @s[predicate=combat_additions:has_rifled,scores={gth.sneaking=1..},tag=!gth.scoping] run function combat_additions:weapons/musket/scope
execute as @s[scores={gth.shoot_musket=1..}] run function combat_additions:weapons/musket/shoot
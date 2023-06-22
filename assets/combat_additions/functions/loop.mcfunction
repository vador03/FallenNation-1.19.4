#Effects
execute as @e[type=!#non_living,predicate=combat_additions:disoriented,predicate=!combat_additions:disoriented_effect] run function combat_additions:weapons/mace/remove_effects
execute as @e[type=!#non_living,predicate=combat_additions:shattered,predicate=!combat_additions:shattered_effect] run function combat_additions:weapons/remove_effects

#Items
execute as @a store result score @s gth.held_item run data get entity @s SelectedItem.tag.gth.item
effect give @a[scores={gth.held_item=2},predicate=!combat_additions:free_offhand] mining_fatigue 1 6 true
execute as @a[scores={gth.held_item=1}] at @s run function combat_additions:weapons/lance/holding
execute as @a[scores={gth.held_item=3}] at @s run function combat_additions:weapons/musket/holding/loaded
execute as @a[scores={gth.held_item=4}] at @s run function combat_additions:weapons/musket/holding/unloaded
execute as @a[scores={gth.held_item=5,gth.shoot_longbow=1..}] at @s run function combat_additions:weapons/longbow/shoot
execute as @a[scores={gth.held_item=6,gth.use_partisan=1..,gth.partisan_cooldown=0}] at @s run function combat_additions:weapons/partisan/thrust
execute as @a[scores={gth.shoot_longbow=1..},nbt={Inventory:[{Slot:-106b,tag:{gth:{longbow:1b}}}]}] at @s run function combat_additions:weapons/longbow/shoot
execute as @a unless entity @s[predicate=combat_additions:has_rifled,scores={gth.sneaking=1..}] run function combat_additions:weapons/musket/unscope
execute as @e[type=armor_stand,tag=gth.bomb] at @s run function combat_additions:weapons/bomb/timer
execute as @e[type=#arrows,tag=gth.longbow_arrow,nbt={inGround:false}] at @s run function combat_additions:weapons/longbow/arrow_range
execute as @a[scores={gth.longbow_cooldown=1..}] run function combat_additions:weapons/longbow/remove_effects
execute as @a[scores={gth.buckler_cooldown=1..}] run function combat_additions:weapons/buckler/stop_using
execute as @a[scores={gth.use_shield=1..,gth.hold_buckler=1..10}] at @s run function combat_additions:weapons/buckler/parry
execute as @a[scores={gth.use_shield=1..,gth.hold_buckler=11..}] at @s run function combat_additions:weapons/buckler/fail_parry
scoreboard players remove @a[scores={gth.partisan_cooldown=1..}] gth.partisan_cooldown 1
item modify entity @a[nbt={Inventory:[{Slot:-106b,tag:{gth:{musket:1b}}}]}] weapon.offhand combat_additions:block_arrow
scoreboard players set @a gth.horse_speed 0
scoreboard players set @a gth.shoot_musket 0
scoreboard players set @a gth.shoot_longbow 0
scoreboard players set @a gth.sneaking 0
scoreboard players set @a gth.use_shield 0
scoreboard players set @a gth.use_partisan 0
scoreboard players add @a gth.longbow_cooldown 0
scoreboard players add @a gth.partisan_cooldown 0
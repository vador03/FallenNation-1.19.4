scoreboard players set @s gth.partisan_cooldown 40
playsound minecraft:item.partisan.thrust player @a[distance=..64] ^ ^ ^1 1 1 0.1
execute positioned ^ ^ ^1 unless entity @s[tag=gth.partisan_hit] run function combat_additions:weapons/partisan/raycast_check/normal
execute positioned ^ ^ ^2 unless entity @s[tag=gth.partisan_hit] run function combat_additions:weapons/partisan/raycast_check/normal
execute positioned ^ ^ ^3 unless entity @s[tag=gth.partisan_hit] run function combat_additions:weapons/partisan/raycast_check/normal
execute positioned ^ ^ ^4 unless entity @s[tag=gth.partisan_hit] run function combat_additions:weapons/partisan/raycast_check/normal
execute positioned ^ ^ ^5 unless entity @s[tag=gth.partisan_hit] run function combat_additions:weapons/partisan/raycast_check/normal
execute positioned ^ ^ ^6 unless entity @s[tag=gth.partisan_hit] run function combat_additions:weapons/partisan/raycast_check/normal
effect give @s mining_fatigue 2 4 true
tag @s remove gth.partisan_hit
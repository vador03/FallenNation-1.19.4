scoreboard players set @s gth.partisan_cooldown 40
playsound minecraft:item.partisan.thrust player @a[distance=..64] ^ ^ ^1 1 1 0.1
execute positioned ^ ^ ^1 run function combat_additions:weapons/partisan/raycast_check/ghost_thrust
execute positioned ^ ^ ^2 run function combat_additions:weapons/partisan/raycast_check/ghost_thrust
execute positioned ^ ^ ^3 run function combat_additions:weapons/partisan/raycast_check/ghost_thrust
execute positioned ^ ^ ^4 unless entity @s[tag=gth.partisan_hit] run function combat_additions:weapons/partisan/raycast_check/ghost_thrust
execute positioned ^ ^ ^5 unless entity @s[tag=gth.partisan_hit] run function combat_additions:weapons/partisan/raycast_check/ghost_thrust
execute positioned ^ ^ ^6 unless entity @s[tag=gth.partisan_hit] run function combat_additions:weapons/partisan/raycast_check/ghost_thrust
effect give @s mining_fatigue 2 4 true
tag @s remove gth.partisan_hit
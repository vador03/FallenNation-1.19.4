playsound item.flintandsteel.use player @a[distance=..16] ~ ~ ~ 0.5 1 0.1
execute at @p anchored eyes run summon armor_stand ^ ^-1.5 ^0.5 {Small:1b,Invulnerable:1b,Invisible:1b,Tags:["gth.bomb"],DisabledSlots:16,ArmorItems:[{},{},{},{id:"minecraft:ender_eye",Count:1b,tag:{CustomModelData:7770}}]}
execute as @e[type=armor_stand,tag=!gth.motion_added,tag=gth.bomb] at @s rotated as @p run function combat_additions:weapons/bomb/set_motion
kill @e[type=eye_of_ender,sort=nearest,limit=1,nbt={Item:{tag:{gth:{bomb:1b}}}}]
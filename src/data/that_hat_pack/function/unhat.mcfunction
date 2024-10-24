item modify entity @s weapon.mainhand that_hat_pack:un_hat

playsound minecraft:ui.cartography_table.take_result player @s

tellraw @s {"text":"[Unmade hat]","color":"yellow"}

scoreboard players set @s unhat 0
scoreboard players enable @s unhat

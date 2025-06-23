tellraw @s {"text":"[Created new hat!]","color":"green"}

# item modifiers!
item modify entity @s weapon.mainhand that_hat_pack:make_hat

playsound minecraft:ui.loom.take_result player @s

scoreboard players set @s makehat 0
scoreboard players enable @s makehat

schedule function that_hat_pack:tick 5t

# Check for triggers to make hat and unhat
execute as @a[scores={makehat=1}] if items entity @s weapon.mainhand * unless items entity @s weapon.mainhand #minecraft:head_armor run function that_hat_pack:confirm_makehat

# Check for confirmation status, if needed
execute as @a[scores={makehat=3..}] if items entity @s weapon.mainhand * unless items entity @s weapon.mainhand #minecraft:head_armor run function that_hat_pack:makehat
execute as @a[scores={unhat=1..}] if items entity @s weapon.mainhand *[custom_data~{isHat:1}] run function that_hat_pack:unhat

# If those scores still are present, then the operation failed.
execute as @a[scores={makehat=3..}] run tellraw @s {"text":"[Failed to create hat!]","color":"red"}
execute as @a[scores={unhat=1..}] run tellraw @s {"text":"[Failed to remove hat!]","color":"red"}

# Reset for next tick (also allows new player to use triggers)
execute as @a[scores={makehat=3..}] run scoreboard players set @a makehat 0
execute as @a[scores={unhat=1..}] run scoreboard players set @a unhat 0

scoreboard players enable @a makehat
scoreboard players enable @a unhat

schedule function that_hat_pack:tick 5t

# Allow HMWBTE to migrate his singleplayer world, which used an older scoreboard system
execute as HMWBTE if score @s update matches 1.. run function that_hat_pack:update

# Check for triggers to make hat and unhat
execute as @a[scores={makehat=1..}] if items entity @s weapon.mainhand * unless items entity @s weapon.mainhand #minecraft:head_armor run function that_hat_pack:makehat
execute as @a[scores={unhat=1..}] if items entity @s weapon.mainhand *[custom_data~{isHat:1}] run function that_hat_pack:unhat

# If those scores still are present, then the operation failed.
execute as @a[scores={makehat=1..}] run tellraw @s {"text":"[Failed to create hat!]","color":"red"}
execute as @a[scores={unhat=1..}] run tellraw @s {"text":"[Failed to remove hat!]","color":"red"}

# Reset for next tick (also allows new player to use triggers)
scoreboard players set @a makehat 0
scoreboard players set @a unhat 0

scoreboard players enable @a makehat
scoreboard players enable @a unhat
scoreboard players enable HMWBTE update

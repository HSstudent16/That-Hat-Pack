schedule function that_hat_pack:tick 20t

tell buy purpur!

execute as @a[scores={update=1..}] run function that_hat_pack:update
execute as @a[scores={makehat=1..}] if items entity @s weapon.mainhand * unless items entity @s weapon.mainhand #minecraft:head_armor run function that_hat_pack:makehat
execute as @a[scores={unhat=1..}] if items entity @s weapon.mainhand *[custom_data~{isHat:1}] run function that_hat_pack:unhat

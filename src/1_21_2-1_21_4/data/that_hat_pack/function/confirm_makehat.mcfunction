execute unless items entity @s weapon.mainhand *[lore=[],!custom_data] run tellraw @s [{"text":"\nThe item held has custom data or lore! Making it a hat will remove this data.\n\n", "color": "yellow"}, {"text": "[Repeat the command or click here to continue]\n", "color": "white", "bold": true, "clickEvent":{"action":"run_command","value":"/trigger makehat"}}]

execute if items entity @s weapon.mainhand *[lore=[],!custom_data] run scoreboard players set @s makehat 3

execute unless items entity @s weapon.mainhand *[lore=[],!custom_data] run scoreboard players set @s makehat 2


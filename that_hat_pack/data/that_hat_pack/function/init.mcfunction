scoreboard objectives add makehat trigger "MakeHat"
scoreboard objectives add unhat trigger "UnHat"
scoreboard objectives add update trigger "Update"

scoreboard players enable @a makehat
scoreboard players enable @a unhat
scoreboard players enable @a update

schedule function that_hat_pack:tick 20t

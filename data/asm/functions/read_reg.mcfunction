execute if score Debug Registers matches 2.. run say Reading reg

scoreboard players set input Registers 0

scoreboard players set bits Registers 32
execute at @s positioned ~1 ~ ~ run function asm:bin_in_step
scoreboard players reset bits Registers
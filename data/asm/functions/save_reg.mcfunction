execute if score Debug Registers matches 2.. run say Saving reg

scoreboard players set bits Registers 32
execute at @s positioned ~32 ~ ~ run function asm:save_reg_step
scoreboard players reset bits Registers
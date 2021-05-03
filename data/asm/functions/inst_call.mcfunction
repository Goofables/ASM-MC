execute if score Debug Registers matches 1.. run say Command Call

execute as @e[tag=eip] run function asm:read_reg

scoreboard players operation output Registers = input Registers

scoreboard players set bits Registers 32
execute as @e[tag=esp2] at @s positioned ~8 ~1 ~ run function asm:push_step
scoreboard players reset bits Registers

# esp -= 4
execute as @e[tag=esp] run function asm:read_reg
scoreboard players operation output Registers = input Registers
scoreboard players remove output Registers 4
execute as @e[tag=esp] at @s positioned ~32 ~ ~ run function asm:save_reg

function asm:inst_jmp
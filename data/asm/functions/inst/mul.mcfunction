execute if score Debug Registers matches 1.. run say Command Mul

execute as @e[tag=eax] run function asm:read_reg
scoreboard players operation output Registers = input Registers

execute if block ~ ~ ~ #asm:hex run function asm:hex_in

execute if block ~ ~ ~ #asm:reg run function asm:set_target
execute if block ~ ~ ~ #asm:reg as @e[tag=Target] run function asm:read_reg

scoreboard players operation output Registers *= input Registers
execute as @e[tag=eax] run function asm:save_reg

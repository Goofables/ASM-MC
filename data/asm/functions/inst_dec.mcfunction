execute if score Debug Registers matches 1.. run say Command Dec

function asm:set_target

execute as @e[tag=Target] run function asm:read_reg
scoreboard players operation output Registers = input Registers

scoreboard players remove output Registers 1

execute as @e[tag=Target] run function asm:save_reg

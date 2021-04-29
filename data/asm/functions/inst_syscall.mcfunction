execute if score Debug Registers matches 1.. run say Command Syscall

execute as @e[tag=eax] run function asm:read_reg
scoreboard players operation tmp Registers = input Registers

execute if score tmp Registers matches 2 run function asm:syscalls/random
execute if score tmp Registers matches 0 run function asm:syscalls/read
execute if score tmp Registers matches 1 run function asm:syscalls/print

execute as @e[tag=eax] run function asm:save_reg

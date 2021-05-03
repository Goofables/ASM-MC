execute if score Debug Registers matches 1.. run say Syscall Read

scoreboard players set Hang Registers 0
execute as @e[tag=ebx] run function asm:read_reg
scoreboard players enable @a input


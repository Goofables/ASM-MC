execute if score Debug Registers matches 1.. run say Syscall Random


execute as @e[tag=ebx] run function asm:read_reg

tellraw @a ["",{"score":{"name":"input","objective":"Registers"}}]
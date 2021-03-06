execute if score Debug Registers matches 1.. run say Command Ret

scoreboard players set bits Registers 32
execute as @e[tag=esp2] at @s positioned ~1 ~ ~ run function asm:inst/pop_step
scoreboard players reset bits Registers
scoreboard players operation output Registers = input Registers
tellraw @a ["",{"score":{"name":"output","objective":"Registers"}}]
tellraw @a ["",{"score":{"name":"input","objective":"Registers"}}]

execute as @e[tag=eip] run function asm:save_reg


# esp += 4
execute as @e[tag=esp] run function asm:read_reg
scoreboard players operation output Registers = input Registers
scoreboard players add output Registers 4
execute as @e[tag=esp] run function asm:save_reg

#function asm:stack_reset

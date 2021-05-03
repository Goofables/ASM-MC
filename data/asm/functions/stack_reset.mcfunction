execute if score Debug Registers matches 2.. run say Stack Reset

# top of stack
tp @e[tag=esp2] 45 67 -20
tp @e[tag=ebp2] 45 67 -20

execute as @e[tag=esp] at @s run function asm:read_reg
execute as @e[tag=esp2] at @s run function asm:stack_reset_step
execute as @e[tag=ebp] at @s run function asm:read_reg
execute as @e[tag=ebp2] at @s run function asm:stack_reset_step

tp @e[tag=Pointer] @e[tag=top,limit=1]
execute as @e[tag=eip] at @s run function asm:read_reg
execute as @e[tag=Pointer] at @s run function asm:stack_reset_step

execute if score Debug Registers matches 1.. run say Reset ESI

scoreboard players set output Registers 0

execute as @e[tag=eip] run function asm:save_reg

function asm:stack_reset

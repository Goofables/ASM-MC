execute if score Debug Registers matches 3.. run say Syscall Random Step


scoreboard players operation output Registers *= #2 Registers
execute as @e[type=minecraft:armor_stand,tag=random,limit=1,sort=random] at @s[tag=1] run scoreboard players add output Registers 1

scoreboard players remove bits Registers 1
execute if score bits Registers matches 1.. run function asm:syscalls/random_step

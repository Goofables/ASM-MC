execute if score Debug Registers matches 1.. run say Setting target

execute if block ~ ~ ~ #asm:reg run clone ~ ~ ~ ~ ~ ~ 0 28 -20
execute if block ~ ~ ~ #asm:reg run execute as @e[tag=Register] at @s if blocks ~-1 ~ ~ ~-1 ~ ~ 0 28 -20 all run tag @s add Target

execute if score Debug Registers matches 2.. as @e[tag=Register,tag=Target] run say I am targeted
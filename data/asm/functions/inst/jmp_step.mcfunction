execute if score Debug Registers matches 3.. run say Jmp search Step

execute if block ~ ~ ~ end_stone if blocks ~2 ~ ~ ~2 ~ ~ 0 29 -20 all run tag @s add JMP
execute if entity @s[tag=JMP] run tp @s ~-2 ~ ~2

execute if score Debug Registers matches 1.. if entity @s[tag=JMP] run say jumping
#clone ~ ~ ~ ~ ~ ~ ~ ~ ~2
execute unless entity @s[tag=JMP] positioned ~ ~ ~1 unless block ~ ~ ~ shulker_box run function asm:inst/jmp_step


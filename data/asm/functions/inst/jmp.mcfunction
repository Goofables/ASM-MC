execute if score Debug Registers matches 1.. run say Command JMP

scoreboard players set input Registers -1

execute if block ~ ~ ~ #asm:reg run function asm:set_target
execute if block ~ ~ ~ #asm:reg as @e[tag=Target] run function asm:read_reg

execute if block ~ ~ ~ #asm:hex run function asm:hex_in

execute unless score input Registers matches -1 run tag @s add JMP2
execute if entity @e[tag=JMP2] run scoreboard players operation output Registers = input Registers
#execute if entity @e[tag=JMP] as @e[tag=eip] run function asm:read_reg
#execute if entity @e[tag=JMP] run scoreboard players operation output Registers += input Registers

execute unless entity @s[tag=JMP2] run clone ~ ~ ~ ~ ~ ~ 0 29 -20
execute unless entity @s[tag=JMP2] at @e[tag=top,limit=1] positioned ~2 ~ ~ run function asm:inst/jmp_step
execute unless entity @s[tag=JMP2] as @e[tag=top,limit=1] store result score input Registers run data get entity @s Pos[2]
execute unless entity @s[tag=JMP2] store result score output Registers run data get entity @s Pos[2]
execute unless entity @s[tag=JMP2] run scoreboard players operation output Registers -= input Registers

execute as @e[tag=eip] run function asm:save_reg
tag @s remove JMP2

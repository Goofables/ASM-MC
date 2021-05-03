execute if score Debug Registers matches 1.. run say Command ADD

execute if block ~ ~ ~ #asm:reg run function asm:set_target
execute if block ~ ~ ~ #asm:reg as @e[tag=Target] run function asm:read_reg
tag @e remove Target

execute if block ~ ~ ~ #asm:hex run function asm:hex_in

scoreboard players operation output Registers = input Registers

execute if block ~2 ~ ~ #asm:reg positioned ~2 ~ ~ run function asm:set_target
execute if block ~2 ~ ~ #asm:reg as @e[tag=Target] run function asm:read_reg

execute if block ~2 ~ ~ #asm:hex positioned ~2 ~ ~ run function asm:hex_in

#scoreboard players operation tmp Registers = output Registers

#execute if score input Registers < output Registers run scoreboard players set #G Registers 1
#execute if score input Registers = output Registers run scoreboard players set #E Registers 1

setblock 7 29 -20 black_concrete
execute if score output Registers > input Registers run setblock 7 29 -20 white_concrete
setblock 10 29 -20 black_concrete
execute if score output Registers = input Registers run setblock 10 29 -20 white_concrete

#scoreboard players operation output Registers -= input Registers

## Carry
#setblock 3 26 -20 quartz_pillar
#execute if score output Registers matches 0 run setblock 3 26 -20 polished_basalt

## Parity
#setblock 6 26 -20 quartz_pillar
#execute if score output Registers matches 0 run setblock 6 26 -20 polished_basalt

## Auxiliary
#setblock 9 26 -20 quartz_pillar
#execute if score output Registers matches 0 run setblock 9 26 -20 polished_basalt

## Zero
#setblock 12 26 -20 quartz_pillar
#execute if score output Registers matches 0 run setblock 12 26 -20 polished_basalt

## Sign
#setblock 15 26 -20 quartz_pillar
#execute if score output Registers matches 0.. run setblock 15 26 -20 polished_basalt

## Overflow
#setblock 27 26 -20 quartz_pillar
#execute if score output Registers matches 0.. if score tmp Registers matches ..-1 run setblock 27 26 -20 polished_basalt
#execute if score output Registers matches ..-1 if score tmp Registers matches 0.. run setblock 27 26 -20 polished_basalt

#scoreboard players reset tmp Registers

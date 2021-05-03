scoreboard objectives add Registers dummy
scoreboard objectives add Registers dummy
scoreboard players set #16 Registers 16
scoreboard players set #10 Registers 10
scoreboard players set #2 Registers 2
scoreboard players set #-1 Registers -1
scoreboard players add Active Registers 0
scoreboard players add Debug Registers 0
scoreboard players add Hang Registers 0
scoreboard objectives setdisplay sidebar Registers
scoreboard objectives add input trigger

#kill @e[tag=asm]

execute unless entity @e[tag=top] run summon cat -16 67 -20 {Tags:["top","asm"],CustomName:'{"text":"Top"}'}
execute unless entity @e[tag=Pointer] run summon cat -16 67 -20 {Tags:["Pointer","asm"],CustomName:'{"text":"EIP"}'}
execute unless entity @e[tag=eax] run summon cat 1 26 -20 {Tags:["Register","eax","asm"],CustomName:'{"text":"EAX"}'}
execute unless entity @e[tag=ebx] run summon cat 1 24 -20 {Tags:["Register","ebx","asm"],CustomName:'{"text":"EBX"}'}
execute unless entity @e[tag=ecx] run summon cat 1 22 -20 {Tags:["Register","ecx","asm"],CustomName:'{"text":"ECX"}'}
execute unless entity @e[tag=edx] run summon cat 1 20 -20 {Tags:["Register","edx","asm"],CustomName:'{"text":"EDX"}'}
execute unless entity @e[tag=esi] run summon cat 1 18 -20 {Tags:["Register","esi","asm"],CustomName:'{"text":"ESI"}'}
execute unless entity @e[tag=edi] run summon cat 1 16 -20 {Tags:["Register","edi","asm"],CustomName:'{"text":"EDI"}'}
execute unless entity @e[tag=esp] run summon cat 1 14 -20 {Tags:["Register","esp","asm"],CustomName:'{"text":"ESP"}'}	
execute unless entity @e[tag=ebp] run summon cat 1 12 -20 {Tags:["Register","ebp","asm"],CustomName:'{"text":"EBP"}'}
execute unless entity @e[tag=eip] run summon cat 1 10 -20 {Tags:["Register","eip","asm"],CustomName:'{"text":"EIP"}'}
execute unless entity @e[tag=idk1] run summon cat 1 8 -20 {Tags:["Register","idk1","asm"],CustomName:'{"text":"IDK1"}'}
execute unless entity @e[tag=idk2] run summon cat 1 6 -20 {Tags:["Register","idk2","asm"],CustomName:'{"text":"IDK2"}'}

execute unless entity @e[tag=esp2] run summon cat 45 67 -20 {Tags:["Ram","esp2","asm"],CustomName:'{"text":"ESP"}'}
execute unless entity @e[tag=ebp2] run summon cat 45 67 -20 {Tags:["Ram","ebp2","asm"],CustomName:'{"text":"EBP"}'}
execute unless entity @e[tag=ram] run summon cat 45 67 -20 {Tags:["Ram","ram","asm"],CustomName:'{"text":"Ram"}'}

execute as @e[tag=asm] run data merge entity @s {NoGravity:1b,Silent:1b,Invulnerable:1b,DeathLootTable:"minecraft:empty",PersistenceRequired:1b,NoAI:1b,CatType:9,Rotation:[-90F,0F]}

say ASM Loaded
# ASM-MC

x86 interpreter in a Minecraft datapack

![Image of machine](https://github.com/Goofables/ASM-MC/blob/main/machine.png?raw=true)

There is a resource pack which retextures the blocks to show their instruction.

### Implemented instructions

| Instruction | Args      | Block                 | Description                                                   |
|:------------|:----------|:----------------------|---------------------------------------------------------------|
| add         | R1 R2/HEX | warped_planks         | Add value to R1, save to R1                                   |
| call        | LBL/HEX   | prismarine_bricks     | Push EIP to stack, Jump to LBL or HEX                         |
| cmp         | R1 R2/HEX | spruce_planks         | Compare values and update the greater and equal flags         |
| dec         | R1        | dark_oak_planks       | Decrement value of R1 by 1                                    |
| div         | R1/HEX    | birch_planks          | Divide EAX by value. Store result in EAD and remainder in EDX |
| inc         | R1        | acacia_planks         | Increment value of R1 by 1                                    |
| int3        |           | packed_ice            | Switch program to singlestep mode (Breakpoint)                |
| je          | LBL/HEX   | smooth_stone          | Jump if the equal flag is set                                 |
| jg          | LBL/HEX   | stone_bricks          | Jump if the greater flag is set                               |
| jge         | LBL/HEX   | chiseled_stone_bricks | Jump if the greater flag or the equal flag is set             |
| jl          | LBL/HEX   | mossy_stone_bricks    | Jump if neither greater flag or equal flag is set             |
| jle         | LBL/HEX   | cracked_stone_bricks  | Jump if the greater flag is not set                           |
| jmp         | LBL/HEX   | slime_block           | Jump to LBL or to HEX                                         |
| jne         | LBL/HEX   | bricks                | Jump if the equal flag is not set                             |
| load        | R1 R2     | andesite              | Read to R1 from ram[R2]                                       |
| mov         | R1 R2/HEX | oak_planks            | Set the value of R1 to value                                  |
| mul         | R1/HEX    | jungle_planks         | Multiply EAX by value and save truncated result to EAX        |
| pop         | R1        | sponge                | Read 32 bit value from stack and save to R1                   |
| push        | R1/HEX    | wet_sponge            | Write 32 bit value to top of stack                            |
| ret         |           | prismarine            | POP EIP                                                       |
| store       | R1 R2/HEX | cobblestone           | Write value to R1 in ram                                      |
| sub         | R1 R2/HEX | crimson_planks        | Subtract value to R1, save to R1                              |
| syscall     |           | chain_command_block   | Execute a [syscall](#syscalls)                                |

### Registers

| Register | Block           | Common uses         |
|:---------|:----------------|---------------------|
| EAX      | netherite       | Return value        |
| EBX      | diamond_block   |                     |
| ECX      | iron_block      |                     |
| EDX      | gold_block      |                     |
| ESI      | redstone_block  |                     |
| EDI      | coal_block      |                     |
| ESP      | emerald_block   | Stack Pointer       |
| EBP      | lapis_block     |                     |
| EIP      | dark_prismarine | Instruction Pointer |
| IDK1     | quartz_block    |                     |
| IDK2     | blue_ice        |                     |

### Syscalls

| Syscall | EAX | Desc                                        |
|:--------|:----|:--------------------------------------------|
| read    | 0   | Read from player to EAX. (Hangs until read) |
| print   | 1   | Prints integer value from EBX               |
| random  | 2   | Reads random 32 bit value to EAX            |

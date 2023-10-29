    .section .text.entry #
    .globl _start
_start:
    la sp, boot_stack_top #加载boot_stack_top指向的地址到 sp 中
    call rust_main

    .section .bss.stack
    .globl boot_stack_lower_bound
boot_stack_lower_bound:
    .space 4096 * 16
    .globl boot_stack_top
boot_stack_top:
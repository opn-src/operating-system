gdt_start:

gdt_null: ; the mandatory null descriptor
dd 0x0 ; ’ dd ’ means define double word ( i.e. 4 bytes )
dd 0x0
gdt_code: ; the code segment descriptor

dw 0xffff
dw 0x0
db 0x0
db 10011010b ; 1 st flags , type flags
db 11001111b ; 2 nd flags , Limit ( bits 16 -19)
db 0x0

gdt_data: ; the data segment descriptor

dw 0xffff
dw 0x0
db 0x0
db 10010010b ; 1 st flags , type flags
db 11001111b ; 2 nd flags , Limit ( bits 16 -19)
db 0x0

gdt_end:

gdt_descriptor:
dw gdt_end - gdt_start - 1
dd gdt_start

CODE_SEG equ gdt_code - gdt_start
DATA_SEG equ gdt_data - gdt_start

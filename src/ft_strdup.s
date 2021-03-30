	section .text
	global	_ft_strdup
	extern	_ft_strlen
	extern	_ft_strcpy
	extern	_malloc

_ft_strdup:
 	call _ft_strlen 	; get src len
    inc rax 			; increase len
    push rdi 			; push rdi to stack
    mov rdi, rax 		; copy len to rdi
    call _malloc 		; malloc len space
    pop rsi 			; get rsi value from stack
    mov rdi, rax 		; set rax to rdi
    call _ft_strcpy 	; copy rsi to rdi
    mov rax, rdi 		; set rdi to rax
    ret 				;

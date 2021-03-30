	section .text
	global	_ft_read
	extern  ___error
_ft_read:
	mov rax, 0x2000003		; set rax to read signal
	syscall					; make syscall
	jc error_read			; if syscall returns carry, jump to error
	ret						; else return

error_read:
	push rax 				; push rax to stack
	call ___error 			; call error to fetch error to rax
	mov rdx, rax 			; copy rax to rdx
	pop rax 				; push rax to stack
	mov [rdx], rax 			; copy rax to previous rdx address
	mov rax, -1				; set rax to -1
	ret						; return if error

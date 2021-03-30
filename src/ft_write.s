	section .text
	global	_ft_write
	extern  ___error

_ft_write:
	mov rax, 0x2000004		; set rax to write signal
	syscall					; make syscall
	jc error_write			; if syscall returns carry, jump to error
	ret						; else return

error_write:
	push rax 				; push rax to stack
	call ___error 			; call error to fetch error to rax
	mov rdx, rax 			; copy rax to rdx
	pop rax 				; push rax to stack
	mov [rdx], rax 			; copy rax to previous rdx address
	mov rax, -1				; set rax to -1
	ret						; return if error

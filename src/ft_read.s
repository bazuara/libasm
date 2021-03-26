	section .text
	global	_ft_read

_ft_read:
	mov rax, 0x2000004		; set rax to write signal
	syscall					; make syscall
	jc error_read			; if syscall returns carry, jump to error
	ret						; else return

error_read:
	mov rax, -1				; set rax to -1
	ret						; return if error

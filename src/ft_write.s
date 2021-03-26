	section .text
	global	_ft_write

_ft_write:
	mov rax, 0x2000004		; set rax to write signal
	syscall					; make syscall
	jc error_write			; if syscall returns carry, jump to error
	ret						; else return

error_write:
	mov rax, -1				; set rax to -1
	ret						; return if error

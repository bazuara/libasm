	section .text
	global	_ft_strcmp

_ft_strcmp:
	mov rax, 0

loop:
	mov al, [rdi]		; copy rdi to al (small reg)
	cmp al, 0			; compare al to 0
	je end				; if 0 end of d string
	cmp al, [rsi]		; compare al to rsi
	jne end				; if different, end
	inc rdi				; increase rdi
	inc rsi				; increase rsi
	jmp loop			; loop

end:
	mov r8, 0			; set r8 to 0
	mov r8b, [rsi]		; copy small reg string s to r8b
	sub rax, r8			; substract
	ret					; return rax

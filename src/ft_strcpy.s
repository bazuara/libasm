	section	.text
	global	_ft_strcpy

_ft_strcpy:
	mov rcx, 0					;set rcx to 0
	mov	rdx, 0					;set rdx to 0
	cmp	rsi, 0					;check that source exists
	jz	return					;if previous compair is 0, return

copy:
	mov	dl, BYTE [rsi + rcx]	;saves first of source to dl
	cmp	dl, 0					;check if dl is 0
	je	return
	mov	BYTE [rdi + rcx], dl	;places dl onto dest
	jmp	increment				;if prev compair is not 0, increment

increment:
	inc	rcx						;rcx++
	jmp copy					;jump to copy for loop

return:
	mov [rdi + rcx], BYTE 0 	;set \0 at the end of dst
	mov	rax,rdi					;moves rdi into rax
	ret

	section	.text
	global	_ft_strlen

_ft_strlen:
	mov	rax, 0				;set rax = 0
	jmp	count				;run count

count:
	cmp	BYTE [rdi + rax], 0	;check input at rax position
	je	done				;Jump to end if previous condition is met
	inc	rax					;increments rax
	jmp	count				;jumps to count for loop

done:
	ret							;returns rax

include irvine32.inc
.386
.model flat, stdcall
.stack 4096
ExitProcess proto, dwExitCode:dword
.data
.code
main proc
	mov al, 20h
	mov ecx, 10
for1:
	or al,al
	jz endfor1
	call writechar
	push eax
	mov al, ' '
	call writechar
	pop eax
	inc al
	dec ecx
	or ecx, ecx
	jnz khongin
	push eax
	call crlf
	mov ecx, 10
	pop eax
khongin:
	jmp for1
endfor1:
	call crlf
	invoke ExitProcess, 0
main endp
end main
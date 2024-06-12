include irvine32.inc

.386
.model flat, stdcall
.stack 4096
ExitProcess proto, dwExitCode:dword
.data
.code
main proc
	mov al,'A'
for1:
	cmp al,'Z'
	ja endfor1
	call writechar
	push eax
	mov al,' '
	call writechar
	pop eax
	inc al
	jmp for1
endfor1:
	
	call crlf
	invoke ExitProcess, 0
main endp
end main
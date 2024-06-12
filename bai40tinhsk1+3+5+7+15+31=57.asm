include irvine32.inc

.386
.model flat, stdcall
.stack 4096
ExitProcess proto, dwExitCode:dword
.data
	k dword 5
	S dword ? ;1+3+5+7+15+31=57
.code
main proc
	push k
	call TinhSk
	mov S, eax
	call writedec
	call crlf
	invoke ExitProcess, 0
main endp
TinhSk proc
	push ebp
	mov ebp, esp
	push ebx
	push ecx

	xor eax, eax
	xor ebx, ebx
	xor ecx, ecx
	mov ecx, [ebp+8]
TinhSk_lap:
	shl ebx, 1
	inc ebx
	add eax, ebx
	loop TinhSk_lap

	pop ecx
	pop ebx
	pop ebp
	ret 4
TinhSk endp
end main
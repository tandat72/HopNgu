include irvine32.inc
.386
.model flat, stdcall
.stack 4096
ExitProcess proto, dwExitCode:dword
.data
	a dword 10
	b dword 50
	k dword 5
.code
main proc
	mov eax, 3
	mul a
	mov eax, 2
	mul b
	sub eax, ebx
	mov k, eax
	call writedec
	call crlf
	invoke ExitProcess,0
main endp
end main
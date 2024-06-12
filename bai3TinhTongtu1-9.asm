include irvine32.inc
.386
.model flat,stdcall
.stack 4096
ExitProcess proto,dwExitCode:dword
.data
	n dword 99
	s dword ?
.code
main proc
	mov ecx,n
	xor eax,eax
lap:
	add eax,ecx
	loop lap
	mov s, eax

	call writedec
	call crlf
	invoke ExitProcess,0
main endp
end main

include irvine32.inc
.386
.model flat, stdcall
.stack 4096
ExitProcess proto, dwExitCode:dword
.data 
a dword 10
b dword 50
.code
main proc
mov	eax, b
sub	eax, a
dec eax
mov b, eax
call writedec
call crlf

invoke ExitProcess, 0
main endp
end main
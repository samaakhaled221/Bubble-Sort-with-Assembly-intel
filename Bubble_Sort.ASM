format pe; console
 entry start
 include 'win32ax.inc'
 section '.code' code readable executable


start:

 firstloop:

 mov eax,[sz]
 sub eax,1
 cmp [i],eax
 jge endofloops
   mov [j],0

 innerloop:
   mov ecx,[tem]
  mov eax,[sz]
  dec eax
  mov ebx,[j]
  sub eax,[i]
  cmp ebx,eax

  jge endofsecloop

   mov edx,[arr+ebx*4]
   mov ebx,[arr+ebx*4+4]
   mov ecx,[j]
   cmp ebx,edx
   jge endif

   mov [arr+ecx*4], ebx
   mov [arr+ecx*4+4],edx
 
   endif:
 
 
 
add [j],1
jmp innerloop
endofsecloop:
 
add [i],1
jmp firstloop
endofloops:


mov ecx,[sz]
mov eax , 0
printloop:
push ecx
push eax
cinvoke printf, f6 , [arr+eax*4] ;
pop eax
pop ecx
add eax,1
loop printloop ; if ecx = 0 endloop else dec ecx jmp startloop
cinvoke scanf,f5,vard


exit:

   invoke ExitProcess, 0;

section '.data' data readable writeable
f5 db '%d',0
f6 db ' %d ',0
newline db ''  ; newline string
vard dd ?

arr dd  5,8,7,4,1,9
sz  dd 6
i dd 0
j dd 0


section '.idata' import data readable writeable
library msvcrt, 'msvcrt.dll', kernel32, 'kernel32.dll'
import msvcrt, printf, 'printf', getchar,'getchar', scanf,'scanf'
import kernel32, ExitProcess,'ExitProcess'







#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.
SetBatchLines -1
ListLines Off

Suspend On

; window 10 select the right virtual desktop (out of 4)
a::
{
    SendInput ^#{Left}
    SendInput ^#{Left}
    SendInput ^#{Left}
    SendInput ^#{Left}
    return
}
s::
{
    SendInput ^#{Left}
    SendInput ^#{Left}
    SendInput ^#{Left}
    SendInput ^#{Left}
    SendInput ^#{Right}
    return
}
!a::
{
    SendInput ^#{Right}
    SendInput ^#{Right}
    SendInput ^#{Right}
    SendInput ^#{Right}
    SendInput ^#{Left}
    return
}
!s::
{
    SendInput ^#{Right}
    SendInput ^#{Right}
    SendInput ^#{Right}
    SendInput ^#{Right}
    return
}

; cursor movements
h:: 
{
    SendInput {Left}
    return
}
j:: 
{
    SendInput {Down}
    return
}
k:: 
{
    SendInput {Up}
    return
}
l:: 
{
    SendInput {Right}
    return
}
g:: 
{
    SendInput ^{Home}
    return
}
+g:: 
{
    SendInput ^{End}
    return
}
b:: 
{
    SendInput {PgUp}
    return
}
f:: 
{
    SendInput {PgDn}
    return
}
e::
{
    SendInput ^{Up}
    return
}
y::
{
    SendInput ^{Down}
    return
}

; page movements
w:: 
{
    SendInput ^{Right}
    return
}
q:: 
{
    SendInput ^{Left}
    return
}
d:: 
{
    SendInput {Delete}
    return
}
0:: ; Add to the inputNumber if inputNumber != null, otherwise HOME
{
    SendInput {Home}
    return
}
-:: 
{
    SendInput {End}
    return
}
$:: 
{
    SendInput {End}
    return
}

; selection movements with Shift
+h:: 
{
    SendInput +{Left}
    return
}
+j:: 
{
    SendInput +{Down}
    return
}
+k:: 
{
    SendInput +{Up}
    return
}
+l::
{
    SendInput +{Right}
    return
}
+w:: 
{
    SendInput +^{Right}
    return
}
+q:: 
{
    SendInput +^{Left}
    return
}
+d:: 
{
    SendInput +{Delete}
    return
}
):: 
{
    SendInput +{Home}
    return
}
_:: 
{
    SendInput +{End}
    return
}

; Browser back/forward
z:: 
!h:: 
{
    SendInput !{Left}
    return
}
x:: 
!l:: 
{
    SendInput !{Right}
    return
}
+z:: 
+!h:: 
{
    SendInput !^{Left}
    return
}
+x:: 
+!l:: 
{
    SendInput !^{Right}
    return
}
i:: 
{
    SendInput {Up}{Up}{Up}{Up}{Up}
    return
}
u:: 
{
    SendInput {down}{down}{down}{down}{down}
    return
}
!i:: 
{
    SendInput {Up}{Up}{Up}{Up}{Up}{Up}{Up}{Up}{Up}{Up}{Up}{Up}{Up}{Up}{Up}{Up}{Up}{Up}{Up}{Up}
    return
}
!u:: 
{
    SendInput {down}{down}{down}{down}{down}{down}{down}{down}{down}{down}{down}{down}{down}{down}{down}{down}{down}{down}{down}{down}
    return
}

r::F13

+Capslock::
CapsLock::Suspend Off
CapsLock Up::Suspend On
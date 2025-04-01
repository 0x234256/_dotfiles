; Docs:
; https://autohotkey.com/docs/Hotkeys.htm
; https://autohotkey.com/docs/KeyList.htm
; Ref https://autohotkey.com/board/topic/60675-osx-style-command-keys-in-windows/

; Geral
#c::Send ^c
#v::Send ^v
#x::Send ^x
#z::Send ^z
#+z::Send ^y
#f::Send ^f
#s::Send ^s
#a::Send ^a
#+4::Send #+S
#q::Send, !{f4}
#r::Send ^{f5}

; Bloqueia apenas a tecla Windows quando pressionada sozinha
~LWin::Send {Blind}{vkE8}
~RWin::Send {Blind}{vkE8}

; #Space::Send #Space
; #Space::
;     Run, C:\Caminho\Para\Seu\Programa.exe
; return

; (Alt + Tab)
#Tab::
{
  Send {LAlt Down}{Tab}
  KeyWait, LWin  ; Wait to release left Win key
    Send {LAlt Up} ; Close switcher on hotkey release
}
return

; Firefox
#IfWinActive ahk_exe firefox.exe
    #t::Send ^t
    #w::Send ^w
    #+[::Send ^+{Tab}
    #+]::Send ^{Tab}
#IfWinActive

; Discord Mute 
#+m::
{
    If WinExist("ahk_exe Discord.exe") 
    {
        WinActivate
        Send ^+m
    }
    else 
    {
        MsgBox, Discord não está aberto!
    }
}
return


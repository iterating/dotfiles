#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.
DetectHiddenWindows, On
SetTitleMatchMode, 2 ; Title can be part of the full title

;=== GLOBAL OS LEVEL SHORTCUTS ===
	F18::Send #4 
	::;ttt::
		Send, %A_Hour%:%A_Min%
		Return
	;F19::
	;F20:: 
	F13::Send #1 ; sharpkeys::quicklaunch
	#+:: Send #2

	; Common symbols
		::;star::
			Send {U+2730} ;✰
			return
		::;org::
			Send {U+229E} ;⊞
			return
		::;well::
			Send {U+06DE} ;۞
			return
		::;comm::
			Send {U+260F} ;☏
			return
		::;j::John Young
	;

	; One chord characters
		$+#/::Send {U+241}	;	Question mark Ɂ
		$+#up::Send {U+2191}	;	↑
		$+#right::Send {U+2192}	;	→
		$+#down::Send {U+2193}	;	↓
		$+#left::Send {U+2190}	;	←

		$+#;::Send {U+FF1A}	;	full width colon "："
		$+#'::Send {U+2033}	;	Quote ″
	;

	; Logic symbols
		$+#\::Send {U+00AC}	;	¬ ;not
		$+#=::Send {U+2227}	; 	∧
		$+!right::Send {U+21D2}	;	⇒ ;+#! does an msoffice shortcut
		$+!left::Send {U+21D0}	;	⇐
		$+!=::Send {U+21D4}	;	⇔

		::;then::
		Send {U+2937}	; ⤷
		return
		::;bc::
		Send {U+2235}	; ∵
		return
		::;t4::
		Send {U+2234}	; ∴
		return
		::;tr::
		Send {U+22A8}	; ⊨:True
		return
		::;ntr::
		Send {U+22AD}	; ⊭:Not true
		return
		::;pr::
		Send {U+22A2} 	; ⊢:Proves
		return
		::;npr::
		Send {U+22AC}	; ⊬:Does not prove
		return
		::;models::
		Send {U+22A7}	; ⊧:Models
		Return
		::;union::
		Send {U+222A} 	;∪:Union
		Return
		::;intersection::
		Send {U+2229}  ;∩:Intersection
		::;prop::
		Send {U+221D}	;∝:proportional to
		Return
	;

	;Sort anchors
		::;top anchor::
			Send {U+2E17}	; Top anchor "⸗".
			return
		
		 ::;bottom anchor::
		 	Send {U+03B9}	; Bottom anchor "ι".
			return
	;
		Flashtext:  
			SplashTextOn , 200, 0, Autohotkey replaced,
			sleep,500
			SplashTextOff
		return

	; PARA folders
		:*:;today::
			Send -{U+2648} 
			return
		:*:;projects::
			Send -{U+264A} 
			return
		:*:;areas::
			Send -{U+264B}
			return
		:*:;resources::
			Send -{U+264C}
			return
		:*:;archive::
			Send -{U+264D} 
			return
		:*:;reference::
			Send {U+03B9}{U+2754}
			return
	;

	; -[ ] learn to make leader key in AHK
	; -[ ] set a leader key for special characters

	; CapsLock switches to last app
		;	SetCapsLockState, AlwaysOff
		;	$CapsLock::!Tab

	; Tapping Shift copies
		~$LShift::
			KeyWait, LShift
		return
		~$LShift Up::
			If (A_PriorHotKey = "~$LShift" AND A_TimeSincePriorHotkey < 150)
				SendEvent {Ctrl Down}c{Ctrl Up}
		return

	; Keep window on top
	 $#P::Winset, Alwaysontop, , A
	; Toggle Anki adder
 		;	$#`::
 		;   IfWinExist, Add
 		;   {
		;   ; Toggle switch
		;     WinGet, WinState, MinMax
		;     if (WinState = -1)
		;        WinRestore
		;     else
		;     {
		;        WinMinimize
		;     }
		;   }
		;     return


	; Swap Ctrl-Tab and  Alt-Tab
		LCtrl & Tab:: AltTab
		!Tab::
			Send {Ctrl down}{Tab}
		return

	; Block MSOffice shortcuts
		#F1::
		Send #^{F1}
		return
		#^!+W::
		Send #^+W
		return
		#^!+T::
		Send #^+T
		return
		#^!+Y::
		Send #^+Y
		return
		#^!+O::
		Send #^+O
		return
		#^!+P::
		Send #^+P
		return
		#^!+L::
		Send #^+L
		return
		#^!+X::
		Send #^+X
		return
		#^!+Space::
		Send #^+Space
		return
	; [Open Keybinds]:
		; #ASF QR ZXCV F1234 Shift F13 Esc 
		; #JKL N/ UIO HBY F9 10 11 12 Bksp [] \ Enter PgU PgD ` End Ins Del
;=== APP LEVEL SHORTCUTS ===
	; Windows Fileexplorer [
		::;flat::
		Send System.Kind:<>folder
		Gosub, Flashtext	
		return
	
	; Onenote UWP
		#If WinActive("- OneNote ahk_class ApplicationFrameWindow", "OneNote")
			; -[ ] Fold up the ribbon at start
			;Send, {alt}{enter}{alt}

		; Onenote shared
			;#Fold
				$^F4:: Send, !+=
				$F4:: Send, !+-
				$^+[:: Send, !+-
				$^+]:: Send, !+=
			; Ctrl Shift P becomes command palette
				$^+p:: Send, {F1}

			;#Indent
				$^]:: Send, `t
				$^[:: Send, +`t

			;#Headers
				$^+0:: Send, ^!0
				$^+1:: Send, ^!1
				$^+2:: Send, ^!2
				$^+3:: Send, ^!3
				$^+4:: Send, ^!4
				$^+5:: Send, ^!5
				$^+6:: Send, ^!6
				; Ordered and unordered List
				^+7:: Send, ^/
				^+8:: Send, ^.

			; Group drawing into anchorable object
			$^d::
				Send, {Ctrl Down}w{Ctrl Up}
				sleep, 100
				Send, {Ctrl Down}x{Ctrl Up}
				sleep, 100
				Send, {Ctrl Down}v{Ctrl Up}
				sleep, 80
				Send, {Enter}
				sleep, 100
				Send, {Ctrl Down}a{Ctrl Up}
				sleep, 80
				Send, {Ctrl Down}a{Ctrl Up}
				sleep, 100
				Send, {Ctrl Down}x{Ctrl Up}
			Return

		#If

	; Onenote 2016
		#IfWinActive, ahk_exe ONENOTE.EXE

		; - [ ] Change color with one keystroke
		;^w::Send, !5{Tab}5{Tab}0{Enter} ; red

		; Onenote shared
			;#Fold
				^F4:: Send, !+=
				F4:: Send, !+-
				^+[:: Send, !+-
				^+]:: Send, !+=
			; Ctrl Shift P becomes command palette
				^+p:: Send, {F1}

			;#Indent
				^]:: Send, `t
				^[:: Send, +`t

			;#Headers
				^+0:: Send, ^!0
				^+1:: Send, ^!1
				^+2:: Send, ^!2
				^+3:: Send, ^!3
				^+4:: Send, ^!4
				^+5:: Send, ^!5
				^+6:: Send, ^!6
				; Ordered and unordered List
				^+7:: Send, ^/
				^+8:: Send, ^.

			; Group drawing into anchorable object
			^d::
				Send, {Ctrl Down}w{Ctrl Up}
				sleep, 100
				Send, {Ctrl Down}x{Ctrl Up}
				sleep, 100
				Send, {Ctrl Down}v{Ctrl Up}
				sleep, 80
				Send, {Enter}
				sleep, 100
				Send, {Ctrl Down}a{Ctrl Up}
				sleep, 80
				Send, {Ctrl Down}a{Ctrl Up}
				sleep, 100
				Send, {Ctrl Down}x{Ctrl Up}
			Return
		#If

	; Notion
		#IfWinActive, ahk_exe Notion.exe
			;#Navigation
				!Right:: Send, ^]
				!Left:: Send, ^[
			; Indent
				^[:: Send, +`t
				^]:: Send, `t
			; Fold
				F4:: Send, ^`n

			; Swapping lines
				!+Up:: Send, ^+{Up}
				!+Down:: Send, ^+{Down}
				^+Up:: Send, !+{Up}
				^+Down:: Send, !+{Down}
			;#Checklist
				^0:: Send, ^+0
				^1:: Send, ^+4
				^2:: Send, ^+0 ;unassigned
				^3:: Send, ^+0	;unassigned
				^4:: Send, ^+7
				^5:: Send, ^+9
				^+7:: Send, ^+6
				^+8:: Send, ^+5
				^`:: Send, ^+8
				F2:: Send, ^+r

		#If    ; turn off context sensitivity
; [Notes] can map: +# and #+
; can map f6 f7 f8 f9 f10 f12

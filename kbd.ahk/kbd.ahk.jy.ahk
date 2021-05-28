#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.
DetectHiddenWindows, On
SetTitleMatchMode, 2 ; Title can be part of the full title

;// == GLOBAL OS LEVEL SHORTCUTS ==
	F13::Send #1 ; sharpkeys::quicklaunch ; CapsL→F13→quicklaunch.#1
	+F13:: Send #2
	#F13:: Send #3
	F18::Send #4 	; Foot pedals{1 2 3}→{F18 F19 F20}
	F19::Send #5
	F20::Send #6
	#/::Winset, Alwaysontop, , A ; keep window on top
		
	::;ttt:: ;// timestamp
		Send, %A_Hour%:%A_Min%
		return
		::;ddd:: ;// datestamp
		Send, %A_MM%.%A_DD%-%A_DDD%
		return

	;//characters.singlechord
	 	$+#/::Send {U+241}	;	Question mark Ɂ
		;//characters.arrows
			$+#right::Send {U+21D2}		;	⇒
			$+#down::Send {U+21D3}	;		⇓
			$+#left::Send {U+21D0}	; ⇐
			$+#up::Send {U+21D1}	;	⇑
			$+#l::Send {U+2192}	;	→
			$+#k::Send {U+2193}	;	↓
			$+#j::Send {U+2190}	;	←
			$+#i::Send {U+2191}	;	↑
		
			::;jl::			; ⇄
				Send {U+21C4}	
				return
			::;ik::			; ⇅
				Send {U+21C5}	
				return
			::;inc::		;	↗
				Send {U+2197}
				return
				::;il::			; ↗
					Send {U+2197}	
					return
				::;li::			; ↗
					Send {U+2197}	
					return
			::;dec::		;	↘
				Send {U+2198}
				return
				::;kl::			;		↘
					Send {U+2198}
					return
				::;lk::			;		↘
					Send {U+2198}
					return
			::;kj::			;		↙
				Send {U+2199}
				return
				::;jk::			;		↙
					Send {U+2199}
					return
			::;turnl::		;	 	↱
				Send {U+21B1}
				return
			::;turnj:: 		;		↰
				Send {U+21B0}
				return
			::;retl::		;		↳ 
				Send {U+21B3}
				return
			::;retj:: 		;		↲
				Send {U+21B2}
				return
			$+!=::Send {U+21D4}			;		⇔ 
			::;=l::		 ;  	⇒ : implies
				Send {U+21D2}
				return
			::;=k::	 	; 	⇓
				Send {U+21D3}
				return
			::;=j:: 		;	 ⇐
				Send {U+21D0}
				return
			::;=i:: 		; 	⇑ 
				Send {U+21D1}
				return


		$+#;::Send {U+FF1A}	;	full width colon "："
		$+#'::Send {U+2033}	;	Quote ″

	;//symbols.logic
		$+#\::Send {U+00AC}		;	¬	:	not 
		::;n::		; ¬	: not
			Send {U+00AC}
			return
		::;then::		; ⤷ : then
			Send {U+2937}
			return
		::;bc::			; ∵ : because
			Send {U+2235}
			return
		::;t4::				; ∴ : therefore
			Send {U+2234}
			return
		::;tr::				; ⊨ : True
			Send {U+22A8}
			return
		::;ntr::		; ⊭ : Not true
			Send {U+22AD}	
			return
		::;pr::		; ⊢ : Proves
			Send {U+22A2} 
			return
		::;npr::	; ⊬ : Does not prove
			Send {U+22AC}	
			return
		::;models::		; ⊧ : Models
			Send {U+22A7}	
			return
		::;map::			; ⊡ : Maps to
			Send {U+22A1}
			return
		::;it::			; ↬ : iterate
			Send {U+21AC}
			return
		$+#=::Send {U+2227}		; ∧ : And
		::;and::	 ; ∧ : And
			Send {U+2227}
			return
		::;or::		; ∨ : Or
			Send {U+2228} 
			return
		::;union::	; ∪ : Union
			Send {U+222A} 
			return
		::;intersect::	  ;∩ : Intersection
			Send {U+2229}
			return
		::;prop::		; ∝ : proportional to
			Send {U+221D}	
			return
		::;||::			 ; ∥ : parrelels
			Send {U+2225}
			return
		::;n||::		 ; ∦ ; does not parrelel
			Send {U+2226}
			return
		::;[::			 ; ⊂ : subset of
			Send {U+2282}
			return
		::;]::			 ; ⊃ : superset of
			Send {U+2283}
			return
		::;-::		 ; ⋈ : Relation
			Send {U+22C8}
			return
		::;=::		 ;≈ : almost equal
			Send {U+2248}
			return
		::;==::		 ; ≘ : corresponds to
			Send {U+2258}
			return
		::;bwn:: 		; ≬ : between
			Send {U+226C} 
			return
		::;sine:: 		 ; ∿: sine wave
			Send {U+223F}
			return
		::;cg::			 ; Δ : change
			Send {U+0394}
			return
		;  ⨹ U+2A39 ⨺U+2A3A
		::;dt::			 ; Δ : delta
			Send {U+0394}
			return
		::;-p1::			
			Send {U+2387}  	; 	⎇	 :	 path1
			return
		::;-p2::
			Send {U+2325}	 ;	⌥	:	path2
			return
		::;req::
			Send {U+22C9}	;	⋉	:	requires
			return
		::;opens::
			Send {U+22CA}	;	⋊	:	opens up
			return
		::;reqf::
			Send {U+29D4}	;	⧔	:	requirement(fulfilled)
			return
		::;opened::
			Send {U+29D5}	;	⧕	:	opened up
			return
		::;depends::
			Send {U+2A7C}	;	⩼	:	depends?
			return

	;//symbols.stats
	::;std::			;		σ
			Send {U+03C3}
		return
	::;mean::		;		μ
			Send {U+03BC}
		return
	;//symbols.tech
		::;android::		;		ൠ
			Send {U+0D60}
			return
	;//symbols.dent.dat.chem
		::;e-:: ; electron
			Send e<sup>-</sup>
			return
	::;benzene::
		Send {U+232C}
		return
	;//⊞.anchors
		::;topanc:: 	;  ⸗ : Top anchor
			Send {U+2E17}
			return
	 	::;botanc:: 		; ι : Bottom anchor
			Send {U+03B9}
			return

		Flashtext:  
			SplashTextOn , 200, 0, Autohotkey replaced,
			sleep,500
			SplashTextOff
			return

	;//⊞.para
		:*:;today::		;		!ⰰToday
			Send +1{U+2C30} 
			return
		:*:;projects::		;		!ⰱ		
			Send +1{U+2C31} 
			return

			::;y::
				Send {U+25BD}	;	▽	:	;wy?
				return
			::;hw::
				Send {U+21F4}	;	⇴	:	;how?
				return
			::;wr::
				Send {U+2BD0}	;	⯐	:	where?
				return
			::;wn::
				Send {U+25F7}	;	◷	:	when?
				return

			::;focus::
				Send {U+2A15}	;	⨕	:	focus
				return
			::;see::
				Send {U+2222}	;	∢	:	see
				return
			::;hear::
				Send {U+2996}	;	⦖	:	hear
				return
			::;feel::
				Send {U+2ADA}	;	⫚	:	feel
				return

		:*:;areas::		;		!ⰲ
			Send +1{U+2C32}
			return

			::;well::		;		۞		: 	 wellness
				Send {U+06DE} 
				return
			::;star::		;		✰		: 		study
				Send {U+2730} 
				return
			::;org::		;		⊞		:		organize
				Send {U+229E}
				return
			::;ing::	;	୭	: 	ing
				Send {U+0B6D}
				return
			::;meditate::	; 	୭	:	meditation
				Send {U+0B6D}
				return
			::;quest::	;		꡵	:	quest
				Send {U+A875}
				return
			::;intent::	
				Send {U+A874}	;	꡴	:	intent
				return
			::;reward::
				Send {U+058E}	;	֎	:	reward 
				return
			::;distraction::
				Send {U+0F05}	;	༅	:	distraction
				return
			::;intense::	;	ꣶ
				Send {U+A8F6}
				return
			::;cardio::	;	ꣵ ; look for a more differentiated symbol
				Send {U+A8F5}
				return
			::;stretch::	;	ꣷ ; look for a more differentiated 
				Send {U+A8F7}
				return
			::;fin::		; 	¤		:		2.3	: 	finanical
				Send {U+00A4}
				return
			::;comm::		;		☏		:		 communication
				Send {U+260F}
				return
			::;tea::
				Send {U+2740}		;	❀	:	tea
				return

		:*:;resources::			; 	!ⰳ		
			Send +1{U+2C33}
			return

			::;disc:: 	;		Ꙫ		:		3.3		:		 discover
				Send {U+A66A}
				return
		:*:;archive::			; !ⰴ
			Send +1{U+2C34}
			return
		:*:;reference::		;		ι❔
			Send {U+03B9}{U+2754} 
			return


	;//OFF CapsLock switches to last app
		;OFF	SetCapsLockState, AlwaysOff
		;OFF	$CapsLock::!Tab

	;// Tapping Shift copies
		~$LShift::
			KeyWait, LShift
		return
		~$LShift Up::
			If (A_PriorHotKey = "~$LShift" AND A_TimeSincePriorHotkey < 150)
				SendEvent {Ctrl Down}c{Ctrl Up}
		return

	;// Keep window on top
	 $#P::Winset, Alwaysontop, , A
	;//OFF Toggle Anki adder
 		;OFF	$#`::
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


	;// Swap Ctrl-Tab and  Alt-Tab
		LCtrl & Tab:: AltTab
		!Tab::
			Send {Ctrl down}{Tab}
		return

	;// Block MSOffice shortcuts
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
	;// ι❔Open Keybinds:
		; #ASF QR ZXCV F1234 Shift F13 Esc 
		; #JKL N/ UIO HBY F9 10 11 12 Bksp [] \ Enter PgU PgD ` End Ins Del
;// == APP LEVEL SHORTCUTS ==
	;// Windows Fileexplorer [
		::;flat::
		Send System.Kind:<>folder
		Gosub, Flashtext	
		return
	
	;// Onenote.UWP
		#If WinActive("- OneNote ahk_class ApplicationFrameWindow", "OneNote")
			;// - [ ] Fold up the ribbon at start
				;	Send, {alt}{enter}{alt}
		;// Onenote.shared
			;// Folding
				$^F4:: Send, !+=
				$F4:: Send, !+-
				$^+[:: Send, !+-
				$^+]:: Send, !+=
			;// Ctrl+Shift+P→ command palette
				$^+p:: Send, {F1}
			;// Indent
				$^]:: Send, `t
				$^[:: Send, +`t
			;// Headers
				$^+0:: Send, ^!0
				$^+1:: Send, ^!1
				$^+2:: Send, ^!2
				$^+3:: Send, ^!3
				$^+4:: Send, ^!4
				$^+5:: Send, ^!5
				$^+6:: Send, ^!6
			;// Ordered and unordered List
				^+7:: Send, ^/
				^+8:: Send, ^.
			;// Group drawing into anchorable object
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
					return
			;// End Onenote.shared
		#If
		;// End Onenote.UWP

	;// Onenote.2016
		#IfWinActive, ahk_exe ONENOTE.EXE
		; - [ ] Change color with one keystroke
			; ^w::Send, !5{Tab}5{Tab}0{Enter} ; red
		;// Onenote.shared
			;// Fold
				^F4:: Send, !+=
				F4:: Send, !+-
				^+[:: Send, !+-
				^+]:: Send, !+=
			;// Ctrl+Shift+P→ command palette
				^+p:: Send, {F1}

			;// Indent
				^]:: Send, `t
				^[:: Send, +`t

			;// Headers
				^+0:: Send, ^!0
				^+1:: Send, ^!1
				^+2:: Send, ^!2
				^+3:: Send, ^!3
				^+4:: Send, ^!4
				^+5:: Send, ^!5
				^+6:: Send, ^!6
			;// Ordered and unordered List
				^+7:: Send, ^/
				^+8:: Send, ^.
			;// Group drawing into anchorable object
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
				return
			;// End Onenote.shared
		#If
		;// End Onenote.2016

	;// Notion
		#IfWinActive, ahk_exe Notion.exe
		;// Navigation
			!Right:: Send, ^]
			!Left:: Send, ^[
		;// Indent
			^[:: Send, +`t
			^]:: Send, `t
		;// Fold
			F4:: Send, ^`n
		;// Swapping lines
			!+Up:: Send, ^+{Up}
			!+Down:: Send, ^+{Down}
			^+Up:: Send, !+{Up}
			^+Down:: Send, !+{Down}
		;// Checklist
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
		;// End Notion


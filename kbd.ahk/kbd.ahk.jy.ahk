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
			::;nl::
				Send {U+219B}	;	↛	
				return
			::;nj::
				Send {U+219A}	;	↚
				return
			::;jl::			; ⇄
				Send {U+21C4}	
				return
			::;ik::			; ⇅
				Send {U+21C5}	
				return
			::;more::
				Send {U+1416}	;	ᐖ :	more
				return
			::;less::
				Send {U+141B}	;	ᐛ	:	less
				return
			::;inc::		;	⊲	:	increase
				Send {U+22B2}
				return
			::;dec::		;	⊳	: decrease
				Send {U+22B3}
				return
			::;ninc::		;	⋪	:	not increase
				Send {U+22EA}
				return
			::;high::
				Send {U+154B}	;	ᕋ	:	high
				return
			::;low::
				Send {U+154D}	;	ᕍ	:	low
				return
			::;il::			; ↗
				Send {U+2197}	
				return
				::;li::			; ↗
					Send {U+2197}	
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
			::;ij::			;		↖
				Send {U+2196}
				return
				::;ji::			;		↖
					Send {U+2196}
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
			::;=l::		 ;  	⇒ 	:	 implies
				Send {U+21D2}
				return
			::;nimply::		;	⇎	: does not imply
				Send {U+21CE}
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
			::;n::
				Send {U+00AC}	;	¬	:	not
				return
		::;then::
			Send {U+2937}	;	⤷	:	then
			return
		::;bc::
			Send {U+2235}	;	∵	:	because
			return
		::;t4::
			Send {U+2234}	;	∴	:	therefore
			return
		::;tr::
			Send {U+22A8}	;	⊨ 	:	True
			return
		::;ntr::
			Send {U+22AD}	;	⊭	:	Not true
			return
		::;pr::	
			Send {U+22A2}		;	⊢	:	Proves
			return
		::;npr::
			Send {U+22AC}		;	⊬	:	Does not prove
			return
		::;models::
			Send {U+22A7}		;	⊧	:	Models
			return
		::;map::
			Send {U+22A1}	;	⊡	:	Maps to
			return
		::;it::
			Send {U+21AC}	;	↬	:	iterate
			return
		$+#=::Send {U+2227}		;	∧	:	And
			::;and::
				Send {U+2227}	;	∧	:	And
				return
		::;or::
			Send {U+2228}	;	∨	:	Or
			return
		::;union::
			Send {U+222A}	; 	∪	:	Union
			return
		::;intersect::
			Send {U+2229}	 ;	∩	:	Intersection
			return
		::;prop::
			Send {U+221D}		; 	∝	 	 proportional to
			return
		::;||::
			Send {U+2225}	; 	∥	 :	parrelels
			return
		::;n||::		
			Send {U+2226}	;	∦	;	does not parrelel
			return
		::;[::
			Send {U+2282}	;	⊂	:	subset of
			return
		::;]::		
			Send {U+2283}		 ;	⊃	:	superset of
			return
		::;precedes::
			Send {U+227A}	;	≺	:	precedes
			return
		::;suceeds::
			Send {U+227B}	;	≻	:	suceeds
			return
		::;=::		 
			Send {U+2248}	;	≈	:	almost equal
			return
		::;==::		
			Send {U+2258}	 ;	≘	:	corresponds to
			return
		::;bwn:: 	
			Send {U+226C}		;	≬	:	between
			return
		::;sine:: 		
			Send {U+223F}	 ;	∿	:	sine wave
			return
		::;cg::			
			Send {U+0394}	 ;	Δ	:	change
			return
			::;dt::
				Send {U+0394}	 ;	Δ	:	delta
				return
		;  ⨹ U+2A39 ⨺U+2A3A
		::;-p1::			
			Send {U+2387}  	; 	⎇	 :	 path1
			return
		::;-p2::
			Send {U+2325}	 ;	⌥	:	path2
			return
		::;-::
			Send {U+22C8}	;	⋈	:	Relation
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
			Send {U+2A7C}	;	⩼	:	depends
			return
		::;wrong::
			Send {U+A555}	;	ꕕ	:	wrong
			return
		::;unlock::
			Send {U+A5C3}	;	ꗃ	;	unlock
			return
		::;key::
			Send {U+A5FF}	;	ꗿ	:	key
			return

	;//symbols.stats
	  ::;std::
		Send {U+03C3}	;		σ
		return
	  ::;mean::	
		Send {U+03BC}		;		μ
		return
	;//symbols.math
	  ::;rightangle::
	  	Send {U+22BF}	;	⊿	:	right angle
		return
	;//symbols.tech
		::;android::
			Send {U+0D60}	;	android	:	ൠ
			return
	;//symbols.dent.dat.chem
		::;e-::
			Send e<sup>-</sup>	;	 electron
			return
	::;benzene::
		Send {U+23E3}
		return
	;//⊞.anchors
		::;topanc::
			Send {U+2E17}	;	⸗	:	Top anchor
			return
	 	::;botanc::
			Send {U+03B9}		;	ι	:	Bottom anchor
			return

		Flashtext:  
			SplashTextOn , 200, 0, Autohotkey replaced,
			sleep,500
			SplashTextOff
			return

	;//⊞.para
		:*:;today::
			Send +1{U+2C30}		;		!ⰰToday
			return
		:*:;projects::
			Send +1{U+2C31}			;		!ⰱ		
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
				Send {U+25D4}	;	◔ 	:	whn?
				return

			::;focus::
				Send {U+2295}	;	⊕	:	focus
				return
			::;wander::
				Send {U+00A4}	;	¤	: wander
				return
			::;see::
				Send {U+2222}	;	∢	:	see
				return
			::;hear::
				Send {U+2996}	;	⦖	:	hear
				return
			::;feel::
				Send {U+09FC}	;	ৼ	:	feel
				return

		:*:;areas::
			Send +1{U+2C32}		;		!ⰲ
			return

			::;well::
				Send {U+06DE}	;	۞	:	 wellness
				return
			::;star::
				Send {U+2730} 	;	✰	: 	study
				return
			::;org::
				Send {U+229E}		;	⊞	:	organize
				return
			::;meditate::
				Send {U+0FD3}	; 	࿓	:	meditation
				return
				::;ing::
					Send {U+0FD3}	;	࿓	: 	aing
					return
			::;patient::
				Send {U+0B6D}	;	୭	:	patience
				return
				::;pt::
					Send {U+0B6D}	;	୭	:	patience
					return
			::;tf::
				Send {U+A598}	;	ꖘ	:	thankful
				return
				::;thankful::
					Send {U+A598}	;	ꖘ	:	thankful
					return
				::;grateful::
					Send {U+A598}	;	ꖘ	:	grateful
					return
			::;jy::
				Send {U+0F13}	;	༓	;	jon young
				return
			::;quest::	
				Send {U+A875}	;	꡵	:	quest
				return
			::;intent::	
				Send {U+A874}	;	꡴	:	intent
				return
			::;reward::
				Send {U+058E}	;	֎	:	reward 
				return
			::;distraction::
				Send {U+0F6A}	;	ཪ	:	distraction
				return
			::;dc::
				Send {U+0F6A}	;	ཪ	:	distraction
				return
			::;intense::
				Send {U+A8F6}		;	ꣶ	:	intense workout
				return
			::;cardio::
				Send {U+A8F5}	;	ꣵ	;	moderate workout, cardio
				return
			::;stretch::
				Send {U+A8F7}	;	ꣷ	; 	stretch
				return
			::;fin::		
				Send {U+00A4}	; 	¤	:	2.3	: 	finanical
				return
			::;comm::		;		☏	:	communication
				Send {U+260F}
				return
			::;music::
				Send {U+266B}	;	♫	:	music
				return
			::;tea::
				Send {U+2740}		;	❀	:	tea
				return
			::;shroom::
				Send {U+237E}	;	⍾	:	mushroom
				return

		:*:;resources::
			Send +1{U+2C33}		; 	!ⰳ
			return

			::;disc:: 
				Send {U+A66A}		;	Ꙫ	:	3.3	discover
				return
		:*:;archive::
			Send +1{U+2C34}		;	!ⰴ
			return
		:*:;reference::	
			Send {U+03B9}{U+2754}	;	ι❔
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
		::;time:: 
			Send, %A_Hour%:%A_Min%	; timestamp
			return
		::;date:: ;// datestamp
			Send, %A_MM%.%A_DD%-%A_DDD%	; date
			return
		::;etime::
			Send {U+25D4}	;	◔	;	estimated time
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


;;
;; LM -- 20210216
;; - versione Keychron K6 -
;;

;; NB: Dato che la K6 manca il tasto backtick/tilde (il tasto sotto l'Esc è sacrificato)
;; ho deciso di mappare backtick e tilde sul TASTO DUPLICATO DI DESTRA (quello sotto il Return)
;; il resto e' tutto uguale: tastiera US con accentate LM Intranational (sic)

;; quindi prima si configura il tasto con e senza shift
SC02B::Send {U+007E} 		;; ~ Tilde
+SC02B::Send {U+0060}  		;; ` Grave Accent  (i.e. backtick)

;; poi si configura la versione AltGr e AltGr+SHIFT
<^>!SC02B::Send {U+00B0} 	;; ° Degree Sign U+00B0
<^>!+SC02B::Send {U+00A7}  	;; § Section Sign U+00A7


;; ----- ––– ———— ;;

;; IF keyboard layout is US International (ISO layout, PC style), THEN

;;;; LM - rimozione dead keys

;; il tasto sotto l'Esc
SC029::Send {U+0060} 		;; backtick `
+SC029::Send {U+007E}  	;; (ma)tilde ~

;; il tasto 6, i.e. "Bond, James Bond"
+SC007::Send {U+005E} 	;; caret ^  ;;;; FUNZIONA!
;; LMNB: NON FUNZIONA 		;;!+6::Send {U+005E}

;; il tasto sotto l'Esc
SC028::Send {U+0027} 		;; quote \'
+SC028::Send {U+0022}		;; doublequote \"


^!SC029::Send {U+00AC}	;; ¬ Not Sign, angled dash (in typography) U+00AC
^!+SC029::Send {U+00A6}	;; ¦ Broken Bar, broken vertical bar, parted rule (in typography) U+00A6

;;;;  [ N O N   F U N Z I O N A !!!
;; LM - IL TASTO SOTTO l'ESC (` ~) - SC029
;; Qui aggiungo il not logico e il broken pipe sullo SHIFT
;; per retroconpatibilita' alla UK ISO
;; (...o meglio al keycaps di questa)

;; ¬ Not Sign, angled dash (in typography) U+00AC
;;<^>!`::Send {U+00AC}
;; ¦ Broken Bar, broken vertical bar, parted rule (in typography) U+00A6
;;<^>!+`::Send {U+00A6}
;;;;   N O N   F U N Z I O N A !!!]

;; spiegazione: per attivare l'AltGr e AltGr-Shift sul tasto sotto l'ESC (Scan code 029)
;; bisogna invece attivare Ctrl-Alt e Ctrl-Alt-Shift... e poi AltGr funziona!





;; LM - il tasto Windows di destra
;; decido che due tasti Windows sono troppi
;; e rimappo quello di destra alla sua antica funzione: <right-click>

;; NB: # sta per il tasto LWin e ~ per RWin

;; Right Windows key as "RightClick"
RWin::AppsKey

;; cfr. https://superuser.com/questions/280005/how-to-make-and-non-dead-keys-on-windows-7-with-german-keyboard-layout
;; refernce: http://www.farah.cl/Keyboardery/A-Visual-Comparison-of-Different-National-Layouts/

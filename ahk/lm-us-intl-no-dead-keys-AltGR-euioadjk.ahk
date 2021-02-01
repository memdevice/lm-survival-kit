;;
;; LM -- 20210129
;;

;; if keyboard layout is US International (ISO layout, PC style)

;; LM - rimozione dead keys

;; il tasto sotto l'Esc
SC029::Send {U+0060} ;; backtick ` 
+SC029::Send {U+007E}  ;; ~

;; --- NON FUNZIONA ;;!+6::Send {U+005E} 		

;; il tasto 6, i.e. "Bond, James Bond"
+SC007::Send {U+005E} ;; caret ^  ;;;; FUNZIONA!


;; il tasto sotto l'Esc
SC028::Send {U+0027} ;; quote '
+SC028::Send {U+0022}           ;; doublequote "

;;;; LM - modifica dei tasti AltGr aeioud

;; NMB: o usi i codici UTF-8 estesi {U+NNN}, 
;; oppure salvi il file come UTF-8-BOM e allora puoi usare il glifo direttamente (e.g. 'è')

;;<^>!i::send ì  ;; funziona solo salvando il file in UTF-8-BOM

;; e minuscole accentate (è, é)
<^>!e::send {U+00E8}
<^>!d::send {U+00E9}

;; e maiuscole accentate (È, É)
<^>!+e::send {U+00C8}
<^>!+d::send {U+00C9}

;; a maiuscole e minuscole  (à, À)
<^>!a::send {U+00E0}
<^>!+a::send {U+00C0}

;; i maiuscole e minuscole  accentate (í Í)
;;<^>!i::send {U+00F2}
;;<^>!+i::send {U+00D2}

;; o maiuscole e minuscole  accentate (ò)
<^>!o::send {U+00F2}
<^>!+o::send {U+00D2}

;; u maiuscole e minuscole accentate (ù)
<^>!u::send {U+00F9}
<^>!+u::send {U+00D9}

;; o maiuscole e minuscole  accentate (ó)
<^>!k::send {U+00F3}
<^>!+k::send {U+00D3}

;;	...e per i piu'capziosii 
<^>!j::send {U+00EE}
<^>!+j::send {U+00CE}



;; IL TASTO DUPLICATO
;; nella US International c'e' un tasto duplicato (\|)
;; corrisponde agli Scan Code SC056 e SC02B

;; decido di rimappare quello di destra, SC02B, sotto il return

;; il tasto sotto l'Esc
SC02B::Send {U+002D} ;; hyphen-minus -
+SC02B::Send {U+002A}  ;; star *

;; Right Windows key as "RightClick"
RWin::AppsKey   







;;;;;;; APPUNTI


;;;;   SCAN CODE ;;;;

;; LeftShift +1 (\|) è: SC056
;; Tasto sotto l'Esc (`~): SC029
;; Tasto a sx del Return, riga sotto (\|): SC02B
;; Il tasto 6^ e': SC007
;; l tasto '", due a sx del Return, riga sotto e' : SC028


;; Alternativa possibile e' SendRaw, ma non funziona
;
;;SC029::SendRaw % "^ "
;;SC00D::SendRaw % "´ "
;;+SC00D::SendRaw % "`` "


;; cfr. https://superuser.com/questions/280005/how-to-make-and-non-dead-keys-on-windows-7-with-german-keyboard-layout
;; refernce: http://www.farah.cl/Keyboardery/A-Visual-Comparison-of-Different-National-Layouts/
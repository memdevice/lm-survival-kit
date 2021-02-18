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

;; TO DO LIST

;; aggiungere la o col cicrconflesso e altre francesi


;; IF keyboard layout is US International (ISO layout, PC style), THEN

;;;; LM - rimozione dead keys

;; il tasto sotto l'Esc
SC029::Send {U+0060} 		;; backtick ` 
+SC029::Send {U+007E}  	;; (ma)tilde ~
	
;; il tasto 6, i.e. "Bond, James Bond"
+SC007::Send {U+005E} 	;; caret ^  ;;;; FUNZIONA!
;; LMNB: NON FUNZIONA 		;;!+6::Send {U+005E} 

;; il tasto sotto l'Esc
SC028::Send {U+0027} 		;; quote '
+SC028::Send {U+0022}		;; doublequote "

;;;; LM - modifica dei tasti AltGr (aeiou zdhkl)

;; NMB: o usi i codici UTF-8 estesi {U+NNN}, 
;; oppure salvi il file come UTF-8-BOM e allora puoi usare il glifo direttamente (e.g. 'è')
;;NMB: <^>!i::send ì  ;; funziona solo salvando il file in UTF-8-BOM

;; MEMO: acuto (´) dx o grave (`) sx

;; ACCENTO G. NEL FRIULI O G. NEL CHIANTI (aeiou)

;; a con accento grave (ààà, ÀÀÀ)
<^>!a::send {U+00E0}
<^>!+a::send {U+00C0}

;; e con accento grave (èèè, ÈÈÈ)
<^>!e::send {U+00E8}
<^>!+e::send {U+00C8}

;; i con accento grave (ììì, ÌÌÌ)
<^>!i::send {U+00EC}
<^>!+i::send {U+00CC}

;; o con accento grave (òòò, ÒÒÒ)
<^>!o::send {U+00F2}
<^>!+o::send {U+00D2}

;; u con accento grave (ùùù, ÙÙÙ)
<^>!u::send {U+00F9}
<^>!+u::send {U+00D9}

;; ACCENTO ACUTO (zdhkl)

;; a con accento acuto (á, Á) - lettera Z
<^>!z::send {U+00E1}
<^>!+z::send {U+00C1}

;; e con accentato acuto,(é, É) - lettera D
<^>!d::send {U+00E9}
<^>!+d::send {U+00C9}

;; i con accento acuto (í, Í) - lettera K
<^>!k::send {U+00ED}
<^>!+k::send {U+00CD}

;; o con accento acuto (ó, Ó) - lettera L
<^>!l::send {U+00F3}
<^>!+l::send {U+00D3}

;; u con accento acuto (ú, Ú) - lettera H
<^>!h::send {U+00FA}
<^>!+h::send {U+00DA}

;;	e, per i piu'capziosii, 
;; ii = j = î
<^>!j::send {U+00EE}
<^>!+j::send {U+00CE}

;; DIACRITICI FRANCESI

;; o circonflesso (ô, Ô) - lettera <P>
;; U+00F4
;; U+00D4

;; c cum cedilla (ç, Ç)
;; ç Latin Small Letter C with Cedilla 
;; U+00E7
;; Ç Latin Capital Letter C with Cedilla 
;; U+00C7

;; LM - IL TASTO DUPLICATO 
;; nella US International c'e' un tasto duplicato (\|)
;; corrisponde agli Scan Code SC056 e SC02B

;; LM - IL TASTO DUPLICATO DI DESTRA
;; tra i due decido di rimappare quello di destra, SC02B, sotto il Return
;; lasciando l'altro come e': e' meglio per simmetria col tasto opposto (/?)

;; vedi sopra
;;SC02B::Send {U+00B0} 		;; ° Degree Sign U+00B0
;;+SC02B::Send {U+00A7}  		;; § Section Sign U+00A7
;;<^>!SC02B::Send {U+00B6} 	;; ¶ Pilcrow Sign paragraph sign U+00B6 ;;;; NB: AltGr di default contiene ancora il not logico ¬
;;<^>!+SC02B::Send {U+00A9} 	;; © Copyright Sign Emoji copy , (c) U+00A9;;;; NB: AltGr SHIFT di default contiene ancora il broken pipe ¦ 

;; LM - IL TASTO DUPLICATO DI SINISTRA
;; L'altro Tasto Duplicato Resta Come È, Ma Ci Aggiungo Due Cose In Altgr/AltGr-Shift
<^>!SC056::Send {U+203B} ;; ※ Reference Mark japanese kome , urdu paragraph separator U+203B
<^>!+SC056::Send {U+205C} ;; [⁜] Dotted Cross U+205C

;; WORKAROUND: Ctrl-Alt e Ctrl-Alt-Shift 

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

;;--------------------------------------------------------------------------------;;

;; CRITERIO: 
;; per le accentate con accento grafico greve, i.e. standard, uso AltGr + la stessa vocale (aeiou)
;; per le accentate con accento grafico acuto, i.e. solo per la e + casi rarii, uso AltGr + lettera immediatamente sotto (zdklh)
;; per le corrispondenti maiuscole SHIFT=AltGr
;; la i col circonflesso (î) e' mappata sulla <J>, con richiamo ottocentesco

;; DOLENTI NOTE
;; La resa nello scritto dell’accento di parola corrisponde all’accento grafico, 
;; che in italiano - purtroppo - può essere acuto (´) o grave (`).

;; si deve usare l’accento grave (`) quando la vocale si pronuncia aperta
;;	è, cioè, tè, caffè, bebè, Noè, karatè 

;; si deve usare l’accento acuto (´)  quando la vocale si pronuncia chiusa, come in né, sé e nei composti di che
;;	perché, affinché, benché
;; nei composti di tre: ventitré, trentatré
;; nella 3a persona del passato remoto di alcuni verbi in -ere
;;	poté, ripeté
;; e in qualche altro caso: viceré, nontiscordardimé 

;; Nel caso in cui la vocale finale sia o, l’accento è sempre grave, 
;; perché in italiano la o finale accentata viene sempre pronunciata aperta.
;;	andò, farò, però, oblò 

;; Nel caso in cui la vocale finale sia a, i, u, 
;; l’accento è per convenzione sempre grave, anche se la pronuncia non è né aperta, né chiusa
;;	libertà, sarà, partì, colibrì, però, menabò, più, tabù. 


;;;;;;; APPUNTI di AHK

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
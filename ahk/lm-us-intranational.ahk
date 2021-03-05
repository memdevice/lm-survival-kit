;;   LM :  2021-064 |

;; lm-us-intranational.ahk -- trasforma i dead keys della US International e aggiunge le accentate
;; (deriva dal vecchio lm-us-intl-no-dead-keys-AltGR-aeiou-zdhkl-j.ahk)

;; IF keyboard layout is US International (ISO layout, PC style), THEN

;; -- Rimozione dei dead keys, sostituiti coi corrispondenti tasti US non-international

;; il tasto sotto l'Esc
SC029::Send {U+0060} 	;; backtick `
+SC029::Send {U+007E}  	;; (ma)tilde ~

;; il tasto 6, i.e. "Bond, James Bond"
+SC007::Send {U+005E} 	;; caret ^  ;;;; FUNZIONA!
;; LMNB: NON FUNZIONA 	;;!+6::Send {U+005E}

;; il tasto accanto a quello sotto il Return (\' \")
SC028::Send {U+0027} 		;; quote \'
+SC028::Send {U+0022}		;; doublequote \"

;; -- Modifica dei tasti AltGr + (aeiou zdhkl j)

;; NMB: o usi i codici UTF-8 estesi {U+NNN},
;; oppure salvi il file come UTF-8-BOM e allora puoi usare il glifo direttamente (e.g. 'è')
;; perchè <^>!i::send ì  ;; funziona solo salvando il file in UTF-8-BOM

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
;;  è, cioè, tè, caffè, bebè, Noè, karatè

;; si deve usare l’accento acuto (´)  quando la vocale si pronuncia chiusa, come in né, sé e nei composti di che
;;   perché, affinché, benché
;; nei composti di tre: ventitré, trentatré
;; nella 3a persona del passato remoto di alcuni verbi in -ere
;;   poté, ripeté
;; e in qualche altro caso: viceré, nontiscordardimé

;; Nel caso in cui la vocale finale sia o, l’accento è sempre grave,
;; perché in italiano la o finale accentata viene sempre pronunciata aperta.
;;   andò, farò, però, oblò

;; Nel caso in cui la vocale finale sia a, i, u,
;; l’accento è per convenzione sempre grave, anche se la pronuncia non è né aperta, né chiusa
;;   libertà, sarà, partì, colibrì, però, menabò, più, tabù.

;;--------------------------------------------------------------------------------;;

;; cfr. https://superuser.com/questions/280005/how-to-make-and-non-dead-keys-on-windows-7-with-german-keyboard-layout
;; refernce: http://www.farah.cl/Keyboardery/A-Visual-Comparison-of-Different-National-Layouts/

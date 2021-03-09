;;   LM :  2021-064 |

;; keychronK8.ahk -- permette di utilizzare una tastiera UK ISO TKL (Keychron K8 UK ISO) come una tastiera US, ottenendo un tasto ulteriore a disposizione.
;; Nel configurare i tasti qui conviene tenere conto anche del diverso layout della K6 (che manca del tasto sotto l'Esc complicando tutto)
;; (lo script deriva dal vecchio lm-us-intl-no-dead-keys-AltGR-aeiou-zdhkl-j.ahk)


;; IF keyboard is UK ISO and keycaps is US International (ISO layout, PC style), THEN

;;;; - Rimozione dead keys (cfr. lm-us-it-intranational.ahk)

;; il tasto sotto l'Esc - SC029 
SC029::Send {U+0060} 		;; backtick `
+SC029::Send {U+007E}  	;; (ma)tilde ~


;; il tasto 6, i.e. "Bond, James Bond" - SC007
+SC007::Send {U+005E} 	;; caret ^  ;;;; FUNZIONA!

;; il tasto sotto il Return, uno a sinistra (' ") - SC028
SC028::Send {U+0027} 		;; quote \'
+SC028::Send {U+0022}		;; doublequote \"

;; LM - Gestione del "tasto duplicato" (cfr. anche keychronK6.ahk)

;; IL "TASTO DUPLICATO"

;; nella US International c'e' un tasto duplicato (\|) perchè presente due volte:
;; a destra del LShift e sotto il Return.
;; Questo corrisponde agli Scan Code SC056 e SC02B - almeno sulle Keychron

;; Sulla K8 decido di rimappare, modirficandolo, quello di destra, sotto il Return (SC02B)
;; lasciando l'altro (SC056) cosi' come e': per simmetria col tasto opposto (/?)
;; In questo modo i due tasti slash sono sulla stessa riga, ad aprire e chiudere, agli estremi opposti.

;; LM - IL TASTO DUPLICATO DI DESTRA - SC02B

;; plain, Shift, AltGr, AltGR+Shift in ordine
SC02B::Send {U+221E} 	;; 	∞ infinito
+SC02B::Send {U+2318} 	;; 	⌘ place of interest 
;; AltGr 
<^>!SC02B::Send {U+00B0} 		;; ° Degree Sign U+00B0
;; NB: AltGr di default contiene ancora il not logico ¬
;; SHIFT+AltGr
<^>!+SC02B::Send {U+00A7}  		;; § Section Sign U+00A7
;; NB: AltGr SHIFT di default contiene ancora il broken pipe ¦

;; LM - IL TASTO DUPLICATO DI SINISTRA - SC056
;;
;; L'altro Tasto Duplicato, a sinistra, (SC056) rimande immutato e produce (\|)
;; \
;; |
;; però aggiungo due caratteri in AltGr e Shift+AltGr:
^!SC056::Send {U+00B6}	;; ¶ Pilcrow Sign paragraph sign U+00B6
^!+SC056::Send {U+00A9}	;; © Copyright Sign Emoji copy , (c) U+00A9

;; il tasto sotto l'Esc - SC029 
;; visto il keycap, rimetto in AltGr i due caratterti della UK 
^!SC029::Send {U+00AC}	;; ¬ Not Sign, angled dash (in typography) U+00AC
^!+SC029::Send {U+00A6}	;; ¦ Broken Bar, broken vertical bar, parted rule (in typography) U+00A6

;; spiegazione: per attivare l'AltGr e AltGr-Shift sul tasto sotto l'ESC (Scan code 029)
;; bisogna invece attivare Ctrl-Alt e Ctrl-Alt-Shift... e poi AltGr funziona!

;; LM - il tasto Windows di destra
;; decido che due tasti Windows sono troppi
;; e rimappo quello di destra alla sua antica funzione: il tasto Menu/App ovvero <right-click>

;; NB: # sta per il tasto LWin e ~ per RWin

;; Right Windows key as "RightClick"
RWin::AppsKey

;;--------------------------------------------------------------------------------;;

;; NMB: o usi i codici UTF-8 estesi {U+NNN},
;; oppure salvi il file come UTF-8-BOM e allora puoi usare il glifo direttamente (e.g. 'è')
;;NMB: <^>!i::send ì  ;; funziona solo salvando il file in UTF-8-BOM

;; cfr. https://superuser.com/questions/280005/how-to-make-and-non-dead-keys-on-windows-7-with-german-keyboard-layout
;; refernce: http://www.farah.cl/Keyboardery/A-Visual-Comparison-of-Different-National-Layouts/

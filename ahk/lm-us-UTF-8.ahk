;; LM: 2021-02-16
;;
;; aggiunte di caratteri UTF-8, sulla tastiera US ("LM Intranational") usando AltGr e Shift+AltGr
;;

;; PREMESSA: 
;; nella tastiera US International standard AltGr produce gia'

;; TASTO SOTTO L'ESC
;; ...
;; da 1 23456789 a 0 poi - =
;; ¡ ² ³ ¤ € ¼ ½ ¾ ‘ ’ poi ¥ ×
;; grafici su altre righe
;; «»
;; ¶  ´ ¬
;; (niente)(niente)ç¿

;; e AltGr+Shift produce gia':

;; ¹ (niente)(niente) etc ÷
;; (niente)(niente)
;; ° ¨ ¦ 
;; (niente) poi Ç (niente)(niente)

;;;; QUINDI:

;; AltGr ;  produce ¶
;; AltGr+Shift ; produce °
;; AltGr e le [quadre] producono i caporali: « »
;; sul tasto duplicato sotto Return, di partenza, ci sono il not e il broken pipe ¬ ¦
;; sul tasto = + ci sono ÷ ×


;; appunti:  ˽ ˽ ‽ ♂ ♀ ⌘ ➀ ⎡ ⌈ 「 」 ※※ ⁜⁜ ∞ |||| ⁂ "Asterism" ❖ "Black Diamond Minus White X" ⁑ 🌕 

;; le conrner bracket per la stampa delle RegExp, mappate sui tasti delle quadre 
;; NB: SHIFT+AltGr perchè su AltGr ci sono i caporali «»
<^>!+[::Send {U+300C} ;; Left Corner Bracket 
<^>!+]::Send {U+300D} ;; Right Corner Bracket 
;;
;; tra le molte alternative ci sarebbero anche le ⦑ Left Angle Bracket with Dot (2991 e 2992)

;; sul tasto meno prolungo la serie dei trattini
;; (e mi resta fuori l'ultimo carattere U+2015 horizontal bar oltre a figure dash e al meno "puro", entrambi poco prima)
<^>!-::Send {U+2013} ;; en dash –
<^>!+-::Send {U+2014} ;; em dash —


[qui vanno le configurazioni da apportare al S.O. e non scriptabili, se necessarie per il funzionamento della baracca]

- Variabili di Ambiente
- tool installati


Appunti con Vinegar

Deprimente lavoro di riconciliazione delle configurazioni. Bel casino. Risolto mistero di Github. La pwd viene cachata da windows! (cfr. Credential Manager, pannello a dx "Windows Credential"; si avvia con Start e iniziando a scrivere il nome).

Per far funzionare flypwd.sh su Windows in Cygwin servono parecchie cose:
- il tool kinit che si trova in 
- il file di configurazione /etc/krb5.conf, preso da OSIRIDE e copiato in locale (su /etc/krb5.conf)
- la variabile HOME definita (deve essere impostata tra quelle utente in Windows)
- la dir .ssh nella propria HOME
- il path dei comandi GNU Cygwin che precede gli altri nella omonima variabile (PATH, v. sopra), altrimenti l'ssh usato sarà quello di Windows!
- lo script flypwd.sh nella directory ~/script

# Introduzione SQL e Git — parte pratica

**Classe 4A SIA 26/27**

L'obiettivo è creare una cartella da terminale e clonare un repository Git per accedere alla verifica su Onlitest. La parte di clonazione si svolge prima di avviare la prova su Onlitest.

## Consegna

1. Apri un terminale nel percorso indicato dal docente e crea una cartella chiamata `verifica_sql_git_COGNOME_NOME`, sostituendo cognome e nome con i tuoi.
2. Clona all'interno di questa cartella il repository [getMyTest](https://github.com/frankox/getMyTest). Puoi usare il terminale oppure GitHub Desktop. Il download ZIP non soddisfa la richiesta di clonazione.
3. Individua la cartella del repository appena clonato e apri il suo `README.md`.
4. Mostra al docente, quando richiesto, il percorso della copia locale e il risultato della clonazione.
5. Apri [`apri-verifica.html`](apri-verifica.html) con un doppio clic: il browser apre il collegamento configurato dal docente dopo 10 secondi, senza richiedere nomi o codici. Il pulsante **Apri la verifica** permette di entrare subito. Non occorre avviare un server.
6. Avvia la prova su Onlitest quando il docente lo indica. Da quel momento rispondi dentro Onlitest: le operazioni con terminale e GitHub Desktop sono già concluse.

## Risultato atteso

La cartella creata deve contenere una copia Git del repository, con il README e la pagina HTML di accesso alla prova. La cartella nascosta `.git` contiene i dati del repository locale: non eliminarla.

## Configurazione per il docente

Il collegamento attuale è un **Rickroll usato come segnaposto**. L'indirizzo è memorizzato in Base64 nella costante `URL_VERIFICA_BASE64` di `apri-verifica.html`: nel sorgente non compare come URL direttamente utilizzabile.

Prima di somministrare la verifica:

1. Converti il link Onlitest in Base64. Se hai Python 3, puoi usare questo comando nel terminale del docente e inserire il link quando richiesto:

   ```bash
   python3 -c "import base64; print(base64.b64encode(input('Link Onlitest: ').encode('utf-8')).decode('ascii'))"
   ```

2. Apri `apri-verifica.html` con un editor di testo e sostituisci soltanto il valore di `URL_VERIFICA_BASE64` con il testo ottenuto, mantenendo le virgolette.
3. Salva il file e pubblica la modifica nel repository prima che gli studenti lo clonino.

La pagina decodifica l'indirizzo e lo usa sia per il reindirizzamento automatico dopo 10 secondi sia per il pulsante **Apri la verifica**. Il collegamento secondario usa una destinazione indipendente e si apre in una nuova scheda; per aggiornare Onlitest modifica soltanto `URL_VERIFICA_BASE64`. Agli studenti bastano il browser e il doppio clic sul file: non sono richiesti Python, password, codici o server locali.

**Base64 è un offuscamento, non una cifratura:** chi analizza il sorgente può recuperare l'indirizzo, che resta visibile nel browser dopo il reindirizzamento.

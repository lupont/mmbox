# mmbox

## Docker

### Vad är det för Dockerfil?
Dockerfilen har en Raspberry Pi OS-bas. Det betyder i grund och botten att den skapar en virtuell maskin som kör på samma arkitektur som en Raspberry Pi. Dockerfilen hämtar även automatiskt hem python och timeflux.

### Hur använder jag Dockerfilen?
Klona repot och navigera till mappen. För att använda Dockerfilen, kör kommandot `docker build .`. Detta skapar en image utifrån Dockerfilen. För att kolla att den skapades ok, kör `docker image ls`. Förmodligen kommer den ha namn och tag "\<none\>". Notera även image-id. För att fixa detta kör kommandot `docker tag <image-id> timeflux-rpi`. Vill ni döpa imagen till något annat än "timeflux-rpi" går det också bra.

### Testa
Om allt har gått som det ska bör du nu kunna `docker run <image-id>`. Terminalen kommer inte visa någon output, den kommer framstå som att den har hängt sig---men det har den inte. När en Dockerfil har kört igenom alla sina instruktioner avslutas processen automatiskt, så den sista raden i Dockerfilen säger till Docker att vi vill ha igång processen längre. För att komma åt imagen kan man köra kommandot `docker exec -it <image-id> bash` i en annan terminalinstans medan den som inte ger någon output fortfarande är igång, vilket kommer erbjuda en bash-miljö inuti imagen. Kör `timeflux -d test.yaml` och se att det funkar, `^C` avbryter. För att lämna imagen körs enklast `exit`. För att stänga ned imagen (och därmed terminalen som ser ut att ha hängt sig), kör `docker kill <image-id>`.

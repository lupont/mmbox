# mmbox

## Docker
Klona repot och navigera till mappen. För att använda Dockerfilen, kör kommandot `docker build .`. Detta skapar en image utifrån Dockerfilen. För att kolla att den skapades ok, kör `docker image ls`. Förmodligen kommer den ha namk och tag "<none>". Notera även image-id. För att fixa detta kör kommandot `docker tag <image-id> timeflux-rpi`. Vill ni döpa imagen till något annat än "timeflux-rpi" går det också bra.

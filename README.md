# WebAssembly teljesítményvizsgálat

## 1. teszt - Natív és WASM kód sebessége

Forrás: [github.com](https://github.com/PlummersSoftwareLLC/Primes)

Ebben a tesztben a natív C és C++ kód, valamint ezek WebAssembly-re fordított változatainak futási sebességét hasonlíthatjuk össze.

## 2. teszt - WASM és JavaScript sebessége a böngészőben

Forrás: [github.com](https://github.com/takahirox/WebAssembly-benchmark)

Ebben a tesztben a JavaScript és C nyelvű, de WebAssembly-re fordított kódok futási sebességét vetjük össze.

## 3. teszt - Alapszintű és optimalizáló fordító használata

Forrás: [github.com](https://github.com/takahirox/WebAssembly-benchmark)

A Google Chrome lehetőséget biztosít arra, hogy külön-külön ki- és bekapcsoljuk a WebAssembly fordítókat. Ebben a tesztben az alapszintű fordító, az optimalizáló fordító, valamint mindkét fordító egyidejű használata esetén történő viselkedést vizsgáljuk meg. A teszt során a Google Chrome beállításait manuálisan kell elvégezni.

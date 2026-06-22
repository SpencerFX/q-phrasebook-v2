/ 2400 candle body size
abs x[`close]-x[`open]

/ 2401 upper wick
x[`high]-(x[`open]|x[`close])

/ 2402 lower wick
(x[`open]&x[`close])-x[`low]

/ 2403 bullish candles
x[`close]>x[`open]

/ 2404 bearish candles
x[`close]<x[`open]

/ 2405 candle range
x[`high]-x[`low]

/ 2406 gap up
x[`open]>prev x[`high]

/ 2407 gap down
x[`open]<prev x[`low]

/ 2408 inside bars
(x[`high]<prev x[`high])&(x[`low]>prev x[`low])

/ 2409 outside bars
(x[`high]>prev x[`high])&(x[`low]<prev x[`low])
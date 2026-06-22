```q
/ 414 simple return
ratios x

/ 415 log return
log ratios x

/ 416 running drawdown
x-maxs x

/ 417 drawdown percentage
(x-maxs x)%maxs x

/ 418 maximum drawdown
min(x-maxs x)

/ 419 profit flags
deltas x>0

/ 420 up days
sum deltas[x]>0

/ 421 down days
sum deltas[x]<0

/ 422 winning trade percentage
avg x>0

/ 423 profit factor
neg sum x where x<0 % sum x where x>0

/ 424 Sharpe ratio
avg[x]%dev x

/ 425 annualized Sharpe ratio
sqrt n*avg[x]%dev x
```
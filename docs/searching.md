```q
/ 521 last occurrence of maximum
count[x]-1+reverse[x]?max x

/ 522 last occurrence of minimum
count[x]-1+reverse[x]?min x

/ 523 indexes of maximum values
where x=max x

/ 524 indexes of minimum values
where x=min x

/ 525 nearest value to y
first x iasc abs x-y

/ 526 nearest index to y
first iasc abs x-y
```
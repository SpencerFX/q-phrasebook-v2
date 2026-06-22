```q
/ 149 running maximum
maxs x

/ 150 running minimum
mins x

/ 151 moving average of width y
y mavg x

/ 152 moving maximum of width y
y mmax x

/ 153 moving minimum of width y
y mmin x

/ 154 running product
prds x

/ 155 running count
1+til count x

/ 156 reverse running sum
reverse sums reverse x

/ 157 reverse running maximum
reverse maxs reverse x

/ 158 lag x by y positions
(y#0N),neg[y]_x

/ 159 lead x by y positions
(y _ x),y#0N

/ 160 rolling z-score of width y
(x-y mavg x)%y mdev x
```
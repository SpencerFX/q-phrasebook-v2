```q
/ 1813 coefficient of variation
dev[x]%avg x

/ 1814 range
(max x)-min x

/ 1815 interquartile range
(med upper x)-med lower x

/ 1816 demean
x-avg x

/ 1817 standardize (z-score)
(x-avg x)%dev x

/ 1818 covariance
avg(x-avg x)*(y-avg y)

/ 1819 correlation
((x-avg x)wavg(y-avg y))%(dev[x]*dev y)

/ 1820 cumulative return
prd 1+x

/ 1821 running cumulative return
prds 1+x
```
/=============================================================================
/ phrasesV2.q
/ Additional q Phrase Cookbook
/=============================================================================

/-----------------------------------------------------------------------------
/ Arrays and Windows
/-----------------------------------------------------------------------------

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

/-----------------------------------------------------------------------------
/ Searching
/-----------------------------------------------------------------------------

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

/-----------------------------------------------------------------------------
/ Statistics
/-----------------------------------------------------------------------------

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

/-----------------------------------------------------------------------------
/ Finance / Trading
/-----------------------------------------------------------------------------

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

/-----------------------------------------------------------------------------
/ Time Series
/-----------------------------------------------------------------------------

/ 2005 beginning of month
month$ x

/ 2006 beginning of year
year$ x

/ 2007 day of week
mod[x+4;7]

/ 2008 is weekend
(mod[x+4;7]) in 5 6

/ 2009 end of month
1+month$ x+1

/ 2010 number of days between dates
y-x

/ 2011 minutes from time
60*hour x+minute x

/ 2012 seconds from time
3600*hour x+60*minute x+second x

/-----------------------------------------------------------------------------
/ Matrices
/-----------------------------------------------------------------------------

/ 1117 trace of matrix
sum x ./:2#'til count x

/ 1118 transpose
flip x

/ 1119 row sums
sum each x

/ 1120 column sums
sum flip x

/ 1121 row means
avg each x

/ 1122 column means
avg flip x

/ 1123 matrix flattened to vector
raze x

/-----------------------------------------------------------------------------
/ Dictionaries and Tables
/-----------------------------------------------------------------------------

/ 2219 table row count
count x

/ 2220 table column count
count cols x

/ 2221 table shape
(count x;count cols x)

/ 2222 dictionary keys
key x

/ 2223 dictionary values
value x

/ 2224 flip dictionary to table
flip x

/ 2225 table to dictionary of columns
flip x

/ 2226 distinct rows
distinct x

/ 2227 first row
first x

/ 2228 last row
last x

/-----------------------------------------------------------------------------
/ KDB+/Tick Specific
/-----------------------------------------------------------------------------

/ 2300 previous row
prev x

/ 2301 next row
next x

/ 2302 first difference
deltas x

/ 2303 ratio to previous
ratios x

/ 2304 first timestamp in table
first x[`time]

/ 2305 last timestamp in table
last x[`time]

/ 2306 table sorted by time
`time xasc x

/ 2307 table sorted descending by time
`time xdesc x

/ 2308 count by sym
select count i by sym from x

/ 2309 latest row by sym
select by sym from `time xdesc x

/-----------------------------------------------------------------------------
/ Candlestick Analytics
/-----------------------------------------------------------------------------

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

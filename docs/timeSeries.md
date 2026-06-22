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
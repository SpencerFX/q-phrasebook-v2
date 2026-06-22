```q
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
```
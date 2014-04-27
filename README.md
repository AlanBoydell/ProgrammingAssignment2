Matrix Caching
========================================================

The following demonstrates the use of the matrix caching functions.


```r
source("cachematrix.R")
```

```r
bla <- makeCacheMatrix()
bla$set( matrix( c(23,54,23,90), 2, 2 ) )

# for the first call, the inverse matrix is calculated
cacheSolve(bla)
```

```
##            [,1]        [,2]
## [1,]  0.10869565 -0.02777778
## [2,] -0.06521739  0.02777778
```

```r
# for the second call, the inverse matrix is retrieved from cache
cacheSolve(bla)
```

```
## getting cached data
```

```
##            [,1]        [,2]
## [1,]  0.10869565 -0.02777778
## [2,] -0.06521739  0.02777778
```


### Introduction
Assignment 2 attempts to demonstrate how to use caching to avoid excessive and expensive matrix inversion.

### How to run
Run the R script. To test, run the following lines:

```
myMatrix <- makeCacheMatrix(matrix(1:4, 2))
myMatrix$get()

             [,1] [,2]
        [1,]    1    3
        [2,]    2    4

cacheSolve(myMatrix)

             [,1] [,2]
        [1,]   -2  1.5
        [2,]    1 -0.5

cacheSolve(myMatrix)

getting cached data
             [,1] [,2]
        [1,]   -2  1.5
        [2,]    1 -0.5

myMatrix$get()

             [,1] [,2]
        [1,]    1    3
        [2,]    2    4
```

### Results
You can see the second time that cacheSolve is run that the solve() function is not called, instead the cached data is fetched.


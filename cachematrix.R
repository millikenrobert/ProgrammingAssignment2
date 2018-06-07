##This assignment inverses a matrix in an efficient manner using caching. 

## This function creates a list of four elements, each of which are a function
## set sets the value of the matrix
## get gets the value of the matrix
## setInverse inverts the matrix, but is only ever called by the cacheSolve function
## getInverse returns the inverted

makeCacheMatrix <- function(x = matrix()) {
  inv <- NULL
  set <- function(y) {
    x <<- y
    inv <<- NULL
  }
  get <- function() x
  setInverse <- function(solve) inv <<- solve
  getInverse <- function() inv
  list(set = set,
       get = get,
       setInverse = setInverse,
       getInverse = getInverse)
}


## Cachesolve checks to see if the object contains the inverted matrix. If
## it does, then it simply gets that data from the object. If it does not
## contain the inverted matrix, then cacheSolve inverts the matrix and sets the
## value in the object.

cacheSolve <- function(x, ...) {
  
  inv <- x$getInverse()  
  if (!is.null(inv)) { ##if the getInverse is not null, then simply get it
    message("getting cached data")
    return(inv)
  }
  ## if getInverse is null, then calculate the inverse using solve, and set the value
  mat <- x$get()
  inv <- solve(mat)
  x$setInverse(inv)
  inv
}

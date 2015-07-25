## Put comments here that give an overall description of what your
## functions do
## 1. Set the value of matrix
## 2. get the value of matrix 
## 3. set the value of inverse matrix
## 4. get the value of inverse matrix

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
  mInv <- NULL
  set <- function(y) {
    x <<- y
    mInv <<- NULL 
  }
  get <- function() x
  setmInverse	<- function(inverse) mInv <<- inverse
  getmInverse <- function() mInv
  list(set = set, get = get,
       setmInverse = setmInverse,
       getmInverse = getmInverse)
}


## Write a short comment describing this function
## retrieves the matrix inverse that is stored in the cache. 
## the 2nd time when it is run, cached value is retrieved.

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
  mInv <- x$getmInverse()
  if(!is.null(mInv)) {
    message("getting cached data")
    return(mInv)
  }
  data <- x$get()
  mInv <- solve(data)
  x$setmInverse(mInv)
  mInv
}

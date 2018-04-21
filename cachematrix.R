## these pair of functions create a matrix and capture the inverse of the matrix

## makeCacheMatrix: This function creates a special "matrix" object that can cache 
## its inverse. the function does the followings:
## set the matrix
## get the matrix
## set the inverse of the matrix
## get the inverse of the matrix

makeCacheMatrix <- function(x = matrix()) {
  inv <- NULL
  set <- function(y) {
    x <<- y
    inv <<- NULL
  }
  get <- function() x
  setinv <- function(solve) inv <<- solve
  getinv <- function() inv
  list(set = set, get = get,
       setinv = setinv,
       getinv = getinv)
}


## cacheSolve: This function computes the inverse of the special "matrix" 
## returned by makeCacheMatrix above. If the inverse has already been calculated 
## (and the matrix has not changed), then the cachesolve should retrieve the 
## inverse from the cache.


cacheSolve <- function(x, ...) {
  m <- x$getinv()
  if(!is.null(inv)) {
    message("getting inv matrix data")
    return(m)
  }
  data <- x$get()
  inv <- sovle(data, ...)
  x$setinv(inv)
  inv 
}

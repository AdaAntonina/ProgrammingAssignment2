## Put comments here that give an overall description of what your
## functions do

## My function first creates special matrix and then calculates the inverse of the matrix
## unless it was calculated before. If it was calculated before it uses the cached 
## inverse matrix.

## Write a short comment describing this function
## makeCacheMatrix first with get function simply returns matrix from the main function, 
## set changes in the matrix from the main function and than with setsolve and getsolve it
## stores and returns the value of the input in a variable m.

makeCacheMatrix <- function(x = matrix()) {
  m <- NULL
  set <- function (y){
    x <<- y
    m <<- NULL
  }
  get <- function ()x
  setsolve <- function(solve) m <<- solve
  getsolve <- function() m
  list(set = set, get = get,
       setsolve = setsolve,
       getsolve = getsolve)

}


## Write a short comment describing this function
## This function calculates the inverse of matrix unless the inverse of the matrix
## was calculated before then it gets it from the cached previously inverse matrix. 

cacheSolve <- function(x, ...) {
  m <- x$getsolve()
  if(!is.null(m)) {
    message("getting cached data")
    return(m)
  }
  data <- x$get()
  m <- solve(data, ...)
  x$setsolve(m)
  m
        ## Return a matrix that is the inverse of 'x'
}

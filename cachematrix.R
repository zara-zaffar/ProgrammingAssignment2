## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
       
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
}
 makeCacheMatrix <- function(x = matrix())
         #setting NULL or INVERTED Matrix
{
  inv <- NULL
    set <- function(y){
          x <<- y
          inv <<- NULL
    }
    
    get <- function()x
      setInverse <- function(inverse) inv <<- inverse
      getInverse <- function() inv
        list(set = set,
                        get = get,
                        setInverse = setInverse,
                        getInverse = getInverse)
    }
 cachesolve <- function(x, ...){
   # Return a Matrix that is the inverse of 'x'
       inv <- x$getInverse()
       if (!is.null(inv)){
             message("getting cached data")
       
         
               return(inv)    
       }
     mat <- x$get()
     inv <- solve(mat, ...)
     x$setInverse(inv)
     inv
}
 source("Coursera/R_ProgrammingAssignment_2/cachematrix.R")
 my_matrix <- makeCacheMatrix(matrix(1:4, 2, 2))
 my_matrix$get()
 my_matrix$getInverse()
 cachesolve(my_matrix)
 my_matrix$getInverse()
 my_matrix$set(matrix(c(2, 2, 1, 4), 2, 2))
 my_matrix$get()
 my_matrix$getInverse()
 cachesolve(my_matrix)
 cachesolve(my_matrix)
 my_matrix$getInverse()

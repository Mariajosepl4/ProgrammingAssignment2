## Put comments here that give an overall description of what your
## functions do
## Write a short comment describing this function

## 
makeCacheMatrix <- function(x = matrix()) {
  inv_matrix <- NULL  # Initiates matrix function
  
  set <- function(y) {
    x <<- y  # Defines argument
    inv_matrix <<- NULL
    message("Getting matrix ready")
  }
  
#Function to get matrix
  get <- function() {
    message("Obtaining matrix")
    return(x)
  }

getInverse <- function() {
  if (!is.null(inv_matrix)) {
    message("Obteniendo inverse matrix")
    return(inv_matrix)
  } else {
    message("Inverse matrix not found")
    return(NULL)
  }
}

> cacheSolve <- function(x, ...) {
  +     inv_matrix <- x$getInverse ()
  +     if(!is.null(inver)) {
    +         message("getting inverse matrix")
    +         return(inver) # To return inverse matrix
    + 
  +     data<-x$get()
        message ("Returning inverse matrix")
  +     inv_matrix <-solve(Data, ...)
  +     x$getinver <- inv_matrix
  +     return(inv_matrix)
}


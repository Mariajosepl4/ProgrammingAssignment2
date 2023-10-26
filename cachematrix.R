## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

## changed mean to inverse
makeCacheMatrix <- function(x = matrix(sample (1:4), 2, 2)) { ##make matrix 2 x 2 with 1-4 numbers
  inver <- NULL
  set <- function (y){
    x <<- y
    inver <<- NULL
  }
  get <- function() x
  setinverse <- function (inverse) inver <<- inverse
  getinverse <- function () inver
  list (set = set, get = get,
        setinverse = setinverse,
        getinverse = getinverse)
}

MATRIXCOURSERA <- makeCacheMatrix(matrix (1:4, 2, 2))

> MATRIXCOURSERA$get()
[,1] [,2]
[1,]    1    3
[2,]    2    4

> cacheSolve <- function(x, ...) {
  +     inver <- solve()
  +     if(!is.null(inver)) {
    +         mesage("getting inverse matrix")
    +         return(inver)
    +     }
  +     Data<-x$get()
  +     inver<-solve(Data, ...)
  +     x$setinver(inver)
  +     inver
}
  
  > cacheSolve(MATRIXCOURSERA)
  Error in solve.default() : argument "a" is missing, with no default
  
  solve (MATRIXCOURSERA)
  Error in solve.default(MATRIXCOURSERA) : 'a' must be a numeric matrix
  
  ## I GET ALL TYPES OF ERROR WHEN TRYING TO RUN THE INVERSE, I HAVE CHANGED IT FROM 1:16, 1:9, 1:4 and non of these work
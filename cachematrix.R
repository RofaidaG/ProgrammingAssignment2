## Put comments here that give an overall description of what your
## functions do

## those 2 functions objective is to calculate the inverse of a matrix. but if the
## inverse was calculated for this matrix before thee function just retrieve the inverse
## and doesn't recalculate it

## Write a short comment describing this function

## the function created a list of 4 functions, the fist element of the list is for
## setting the matrix, the second for retrieving the matrix, the third for setting the 
## inverse and the fourth for retrieving the matrix

makeCacheMatrix <- function(x = matrix()) {
        INV <- NULL # the global inverser
        
        set <- function(r) {
                x <<- r
                INV <<- NULL  
        }
        
        get <- function() x
        
        setinverse <- function(inv) INV <<- inv # the inverse object contained in the makeCacheMatrix
        
        getinverse <- function() INV
        
        list (set = set, get = get, 
              setinverse = setinverse, 
              getinverse = getinverse)
        
}


## Write a short comment describing this function
## the function check wheather an inverse for the specified matrix was calculated, if not 
## it calculate it and update the list of the above function.

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
        
        
        INV <- x$getinverse()
        if(!is.null(INV)){
                message("getting cached data")
                return(INV)
        }
        
        localm <- x$get()
        INV <- solve(localm)
        x$setinverse (INV)
        print(INV)
}





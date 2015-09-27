## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function
## Function to get intermediate matrix

makeCacheMatrix <- function(x = matrix()) {
        
        m<-NULL
        setm<- function(y){
                x<<-y
                m<-NULL
        }
        getm<- function() x
        setinversem<- function(inverse)
                m<<-inverse
        getinversem<- function() m
        list(setm=setm, getm=getm, setinversem=setinversem, 
             getinversem=getinversem)
}


## Write a short comment describing this function
## Function for inverting matrix and getting inverse.

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
        m<-x$getinversem()
        if (!is.null(m)){
                message("getting cached data")
                return(m)
        }
        inmatrix<- x$getm()
        m<-solve(inmatrix, ...)
        m
        
}

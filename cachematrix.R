## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
        ##The function creates a special matrix which can cache its own inverse
makeCacheMatrix <- function(x = matrix()) { ## This will define the argument that contains the default mode of the matrix
inv<-NULL ## This initializes the inv as NULL and hold the value of the matrix inverse
        set<-function(y){ ## This will define the function that will assign new
                x<<-y ## The value of the matrix which is in the parent environment
                inv<<-NULL ## Used if there is a newly made matrix which will reset inv to NULL
}
        get<-function()x ## This will define the function neeeded
        setinverse<-function(inverse)inv<<-inverse ## Assigns the values of inv to its parent environment
        getinverse<-function()inv ## It will call the value of inv
        list(set=set, get=get, setinverse=setinverse, getinverse=getinverse) ## Will be used to refer
        


## Write a short comment describing this function

##The function will compute the inverse of special matrix returned by makeCacheMatrix that is seen above

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
        inv<-x$getinverse()
        if(!is.null(inv)) {
                message("getting cached data")
        return(inv)
    }
    data <- x$get()
    inv <- solve(data, ...)
    x$setinverse(inv)
    inv
}

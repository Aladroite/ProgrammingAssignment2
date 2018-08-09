## Put comments here that give an overall description of what your
## functions do: Alison Lewis, makeCacheMatrix and cacheSolve Assignments

## The makeCacheMatrix function: creates a special 'matrix' object
## that can cache its reverse. The special 'matrix' object is a list of
## functions that can: 1. Set the value of the matrix, 2. get the value of
## the matrix, 3. set the value of the inverse, 4. get the value of the inverse

makeCacheMatrix <- function(x = matrix()) {
i<-NULL
set<-function (y) {
x<<- y
i<<- NULL
}
get<- function () x
setinverse<- function(inverse) i <<-inverse
getinverse<- function() i
list(set=set, get=get, setinverse=setinverse, getinverse=getinverse)
}


## The cacheSolve function: computes the inverse of the special matrix
## created above. However, it first checks the cache to see if 
## the inverse has already been computed and stored. If the inverse has 
## already been computed and cached, it simply retrieves this value. 
## Otherwise it computes the inverse and stores this new value in the cache. 

cacheSolve <- function(x, ...) {
 i<-x$getinverse()
if(!is.null(i)){
message("getting cached data")
return (i)
}
data<- x$get()
i<- solve(data, ...)
x$setinverse(i)
i       
}

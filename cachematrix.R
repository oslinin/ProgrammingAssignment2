## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
x.inv=NULL
set=function(y){  x<<-y; x.inv=NULL}
get=function() x
getinverse=function() x.inv
setinverse=function(x.inv1) x.inv<<-x.inv1
list(set=set,get=get,setinverse=setinverse,getinverse=getinverse)
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
  x.inv=x$getinverse()
  if (!is.null(x.inv)){return(x.inv)}
  x.inv=solve(x$get())
  x$setinverse(x.inv)
  return(x.inv)
}

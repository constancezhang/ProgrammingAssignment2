## my function aims at creating a special matrix and return its inverse.This inverse is automatically calculated 
## after being checked that it has not yet been calculated elsewhere.

## this function creates a list containing function to set/get a new matrix and set/get the inverse of this matrix.

makeCacheMatrix <- function(x = matrix()) {
m<-NULL
set<-function(y){
x<<-y
m<<-NULL
}
get<-function()x
setinverse<-function(inverse) m<<-solve(x)
getinverse<-function() m
list(set=set,get=get,setinverse=setinverse,getinverse=getinverse)

}


## this function checks if the inverse of the matrix has been calculated somewhere. If this would be the case, 
## then inverse will be retrieved from cache data. Otherwise, inverse will be calculated and returned. 

cacheSolve <- function(x, ...) {
m<-x$getinverse()
if(!is.null(m)){
message('getting cached data')
return (m)
}
data<-x$get()
m<-solve(data,...)
x$setinverse(m)
m
        ## Return a matrix that is the inverse of 'x'
}

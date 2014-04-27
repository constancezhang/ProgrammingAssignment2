## Those two functions conbines creating a new matrix and return its inversion either through real calculating or retrieving
 if it already exists in the cache data.

## This function is a list containing a function to set/get a new matrix and set/get its inverse. 

makeCacheMatrix <- function(x = matrix()) {
m<-NULL
set<-function(y){
x<<-y
m<<-NULL
}
get<-function() x
setinverse<-function(inverse) m<<-inverse
getinverse<<-function() m
list(set=set,get=get,setmean=setmean,getmean=getmean)

}


## This function first calculates the mean of the new matrix. But it first checks if it has been calculated before.
If it was the case, then the cache data will be return. Otherwise, inverse will be calculated and returned.

cacheSolve <- function(x, ...) {
m<-x$getinverse()
if(!is.null(m)){
message('getting cached data')
return (m)
}
data<-x$getinverse()
m<-solve(data,...)
x$set(m)
m
        ## Return a matrix that is the inverse of 'x'
}

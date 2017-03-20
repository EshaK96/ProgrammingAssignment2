## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function
##This function is used to perform four tasks
## 1. To Assign a value to the matrix
## 2. To get the value of the matrix using the get() function
## 3. To compute the inverse of the matrix
## 4. To get the inverse of the matrix using the getinverse() function
makeCacheMatrix <- function(x = matrix()) {
 i <- NULL
 set <- function(y){
	x<<-y  
	i<<-NULL
}
get <- function() x
setinverse <- function(inverse) i<<-inverse
getinverse <- function() i
list(set=set,get=get, setinverse = setinverse, getinverse = getinverse)
}


## Write a short comment describing this function
##This function is used to 
## 1. check if the inverse has already been computed(i.e., set) for the matrix
## 2. If yes, then the cached inverse is returned
## 3. Else, the inverse is computed, set to the matrix and printed
cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
 i <- x$getinverse()
 if(!is.null(i)){
 	message("getting cached data")
	return(i)
 }
 data <- x$get()
 i <- solve(data, ...)
 x$setinverse(i)
 i
}

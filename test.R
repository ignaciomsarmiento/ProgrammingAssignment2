#Taken from a coursera forum, posted by Frank Evans.
#Some minor modifications

## set the working directory
setwd("")


source("cachematrix.R")

testrand <- matrix(data=rnorm(9), nrow=3, ncol=3)
testrand
solve(testrand)
testrand_c <- makeCacheMatrix(testrand)
cacheSolve(testrand_c)
testrand_c$get()
testrand_c$getInverse()


testbig <- matrix(data=rnorm(10000), nrow=100, ncol=100)
testbig
solve(testbig)
testbig_c <- makeCacheMatrix(testbig)
cacheSolve(testbig_c)
identical(cacheSolve(testbig_c), solve(testbig))
identical(testbig_c$getInverse(), solve(testbig))
identical(testbig, testbig_c$get())
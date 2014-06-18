
setwd("C:/Users/IKI/Dropbox/PHD ILLINOIS/R  and Econometrics/Coursera/R programing/Week 3/ProgrammingAssignment2")


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
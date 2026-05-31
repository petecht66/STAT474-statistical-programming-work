substr("Mia is my dog", 1, 6)

# Create a user-defined function to calculate the
# expected value for a discrete probability distribution
expectedvalue<-function(a, b, c, d, e, f){ # a, b, c are values of x
                                           # d, e, f are the probability values
  x<-c(a,b,c) # vector of x values
  y<-c(d,e,f) # vector of probabilities
  xy<-x*y     # vector multiplication: a*d, b*e, and c*f
  discretemean<-sum(xy) # sum of products is the E[x]
  return(discretemean)
}
# end of the user-defined function expectedvalue

# use the expectedvalue function
expectedvalue(1,2,3,.3,.4,.3)

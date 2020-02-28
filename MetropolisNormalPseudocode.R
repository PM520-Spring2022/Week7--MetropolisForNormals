MHNormal<-function(Mean,SD,EndPt,NumberOfIts){ # Mean and SD are the Mean and Std. dev. of the Normal,
	#We start somewhere in the range [-EndPt, +EndPt] and run NumberOfIts iterations.
  NormalXs<-rep(-9,NumberOfIts)  # declare a vector to store the x-values we generate generate during the course of the algorithm

	# you need to start somewhere: sample a uniform random number, x, between +EndPt and -EndPt
	# ADD CODE TO DO THAT HERE
	
	# then...
	for (i in 1:NumberOfIts){    # each iteration performs one step of the MCMC process
		# propose a new x-value (xprime) by adding a Unif(-0.5,0.5) (say) random variable to the current value
	  # ADD CODE TO DO THAT HERE
	  
		# decide whether to move to the new value - 
	  # Calculate Metropolis term (the ratio of the likelihoods of the two points, i.e., H<-f(x')/f(x))
		H<-min(1,dnorm(xprime,Mean,SD)/dnorm(x,Mean,SD))
		p<-runif(1,0,1) # generate a random number and then decide whether or not to move to the new value
		if (p<H){ 
			x<-xprime      # move to x'
		} # we dont need an else, since we just keep the existing x in that case
		# save the current value of x to the vector NormalXs
	
		# every now and again, plot a histogram of the accepted values
		if (i%%500==0){ # this will plot one every 100 iterations (i%%100 means the remainder when i is divided by 100)
			hist(NormalXs[0:i]) 	
		  Sys.sleep(0.25)  # slow it down a bit so that it has time to show each plot
		}
	}
	return (NormalXs)  # returns the vector of x-values
}

set.seed(4970)   # any number will do here
# Call this function as follows:
MyMH<-MHNormal(0,1,5,50000)



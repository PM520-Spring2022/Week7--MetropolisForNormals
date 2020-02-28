# Week6--MetropolisForNormals

This is the repo for exercise 1 of week 6, in which you are coding up a version of the Metropolis algorithm to sample from some distribution of interest. The instructions were as follows:

1. Code up the Metropolis algorithm for sampling from a Normal distribution with mean 0 and std. dev. 1.
2. Use a symmetric proposal kernel that adds a number y to x each time, so that x’ = x+y, where y~Unif[-c,+c]
3. Run the algorithm:

Notes:
You need to start it from some value (how are you going to choose that value?)
Note that consecutive samples are not independent.
You can construct (almost) independent samples by sub-sampling your iterations, sampling every nth iteration. 
Explore how the choice of n you need to use to get independent sub-samples varies as a function of c above.

The file MetropolisNormalPseudocode continas psuedocode for this problem.

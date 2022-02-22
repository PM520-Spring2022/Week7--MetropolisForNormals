# Week7--MetropolisForNormals

This is the repo for exercise 1 of week 7, in which you are coding up a version of the Metropolis algorithm to sample from some distribution of interest. 

## Part 1
The instructions were as follows:

1. Code up the Metropolis algorithm for sampling from a Normal distribution with mean 0 and std. dev. 1.
2. Use a symmetric proposal kernel that adds a number y to x each time, so that x’ = x+y, where y~Unif[-c,+c]
3. Run the algorithm:

Notes:
* You need to start it from some value (how are you going to choose that value?)
* Note that consecutive samples are not independent.
* You can construct (almost) independent samples by sub-sampling your iterations, sampling every nth iteration. 
* Explore how the choice of n you need to use to get independent sub-samples varies as a function of c above.

The file MetropolisNormalPseudocode contains psuedocode for this problem.

## Part 2

Use the code you wrote for the Metropolis algorithm for sampling from a Normal distribution with mean 0 and std. dev. 1.

Use an asymmetric proposal kernel that at each iteration:
*  with prob. 3/4 adds a number y to x e, so that x’ = x+y, where y~Unif[0,c]
*  with prob. 1/4 subtracts a number y from x, so x’ = x-y, where y~Unif[0,c].

Run the algorithm for c=0.5 (say).
What happens?

## Part 3

Use the code you wrote for the Metropolis algorithm for sampling from a Normal distribution with mean 2 and std. dev. 1.

Use an asymmetric proposal kernel that at each iteration:
* with prob. 3/4 adds a number y to x e, so that x’ = x+y, where y~Unif[0,c]
* with prob. 1/4 subtracts a number y from x, so x’ = x-y, where y~Unif[0,c].

Correct it by using the Hastings Ratio [i.e. adding the term q(x’->x)/ q(x->x’)]

Run the algorithm and show that it works now.

If you get this working properly you are now doing Metropolis-Hastings Markov chain Monte Carlo [MH-MCMC]. This is perhaps the most common form of MCMC.

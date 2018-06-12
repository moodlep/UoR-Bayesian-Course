transformed data{
  int<lower=1> N = 30; // number of trials
  real<lower=0, upper=1> p = 0.8;  // prob
}
model{

}
generated quantities{
  int x[N];  // defining an array of ints
  for(n in 1:N){
    x[n] = bernoulli_rng(p);
  }
}
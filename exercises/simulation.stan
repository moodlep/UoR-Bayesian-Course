data{
  int<lower=1> N; // number of trials
  real<lower=0, upper=1> p;  // prob
}
transformed data{
  print("N = ", N, " , p= ", p);
}
model{

}
generated quantities{
  int x[N];  // defining an array of ints
  for(n in 1:N){
    x[n] = bernoulli_rng(p);
  }
}
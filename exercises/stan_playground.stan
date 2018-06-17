/* Playing around in Stan */

data{
  real m;
  real<lower=0> s; 
  int<lower=1> N;
}
parameters{
  vector[N] p1;
}
model{
  for(n in 1:N){
    p1[n] ~ normal(m,s);
  }
}
generated quantities{
    vector[N] p2 = normal(p1,s);
}
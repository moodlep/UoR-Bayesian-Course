data{
  int<lower=1> K; // no of cols
  int<lower=1> N; // sample size
  matrix[N,K] X;
  vector[N] y;
  real m_beta[K];
  real m_sigma_sq;
  real<lower=0> s_beta[K];
  real<lower=0> s_sigma_sq; 
}
transformed data{

}
parameters{
  real<lower=0> sigma_sq;
  vector[K] beta;
}
model{
  // likelihood
  for(n in 1:N){
    real eta=0;
    for(k in 1:K){
      eta = eta+X[n,k] * beta[k];
    }
    y[n] ~ normal(eta,sqrt(sigma_sq));
  }
  // prior: 
  for(k in 1:K){
    beta[k] ~ normal(m_beta[k], s_beta[k]);
  }
  sigma_sq ~ lognormal(m_sigma_sq, s_sigma_sq);
}

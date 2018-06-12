data{
  /* The data block is like the data structure interface to this program from R. 
   * You can assign too but mostly the data is prepped from a more data-easy env like R
   * and just passed as a list. Lists can take multiple types of variables*/
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
  vector[N] eta = X*beta;
  y ~ normal(eta,sqrt(sigma_sq));
  // prior: 
  sigma_sq ~ lognormal(m_sigma_sq, s_sigma_sq);
}

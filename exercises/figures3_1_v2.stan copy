/* This is an annotated version of an exercise. 
 * The layout reminds me of Processing where some blocks run once and others in a loop. 
 */
 
data{
  /* The data block is like the data structure interface to this program from R. 
   * You can't assign in here, just declare. Typically data is prepped from a more data-friendly env like R
   * and just passed as a list. Lists can take multiple types of named variables. This block defines those
   * variables passed in via the list. */
  int<lower=1> K; // no of cols with constraint 
  int<lower=1> N; // sample size
  matrix[N,K] X; // matrix
  vector[N] y; // column vector
  real m_beta[K]; // array of reals, not a vector or row_vector. 
  real m_sigma_sq;
  real<lower=0> s_beta[K];
  real<lower=0> s_sigma_sq; 
}
transformed data{ 
  /* Executed only once; supports the data block
   * Non-interfacing variables can be declared and assigned here. 
   * See data block for clarity on when to use this block. */

}
parameters{
  /* This block contains what we would normally call variables that would be updated on 
   * every iteration. Parameters are returned in the output from the stan function call. 
   * All variables must be continuous as Stan cannot directly handle discrete vars. 
   * Just declarations, no assignments. Constraints MUST be defined in here. 
   */
  real<lower=0> sigma_sq;
  vector[K] beta;
}
transformed parameters{
  /* Also updated on every iteration. 
   * Any parameters declared in here are also returned via the output
   * Useful for transformations of parameters  */
}
model{
  // likelihood
  vector[N] eta = X*beta;
  y ~ normal(eta,sqrt(sigma_sq));
  // prior: 
  sigma_sq ~ lognormal(m_sigma_sq, s_sigma_sq);
}

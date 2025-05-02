module Variance
  include Mean

  def var1D(set)
    mu = mean1D(set)

    set.sum { |xn| (xn - mu)**2 } / set.length
  end

  def add_x_to_cached_var1d(set_orig, sig_orig, mu_orig, x)
    n_orig = set_orig.length.to_f # coerce to float, to avoid rounded quotients 
    n = n_orig + 1    
    mu = (n_orig / n) * mu_orig + (1.0 / n) * x

    (n_orig / n) * sig_orig + (1 / n) * (x - mu_orig) * (x - mu)
  end
end

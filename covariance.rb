module Covariance

  include Mean 

  def covariance2D(set_x, set_y)
    n = set_x.length
   
    throw "set_x and set_y must have the same number of elements" unless n == set_y.length

    mu_x = mean1D(set_x)
    mu_y = mean1D(set_y)
    summed_sq_diffs = 0    

    n.times do |i|
      summed_sq_diffs += (set_x[i] - mu_x) * (set_y[i] - mu_y)
    end  

    summed_sq_diffs / n
  end

  def covariance_matrix(matrix)
    # TODO
  end
end


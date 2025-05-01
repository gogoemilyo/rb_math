module Variance
  include Mean

  def var1D(set)
    u = mean1D(set)

    set.sum { |n| (n - u)**2 } / set.count
  end
end

module Variance
  include Mean

  def var1d(set)
    u = mean1d(set)

    set.sum { |n| (n - u)**2 } / set.count
  end
end

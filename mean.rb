module Mean
  def mean1D (set = [], &block) 
    throw "set must be an array" unless set.instance_of? Array
    
    if block
      set.sum(&block).to_f / set.count
    else
      set.sum.to_f / set.count # throws TypeError if set contains nonnumeric elements
    end
  end
end   


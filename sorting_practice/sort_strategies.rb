class SortStrategies

  # stable O(nlogn) sorting method
  def merge_sort(arr, l, r)
    if l < r
      mid = (l + r) / 2
      merge_sort(arr, l, mid)
      merge_sort(arr, mid + 1, r)
      merge(arr, l, mid, r)
    end
    
    return arr
  end   

  def merge(arr, l, m, r)
    n1 = m - l + 1
    n2 = r - m
    temp_l = Array.new(n1)
    temp_r = Array.new(n2)
    i = 0
    j = 0
    k = l

    (0..n1 - 1).each do |ix|
      temp_l[ix] = arr[l + ix]
    end
    
    (0..n2-1).each do |jx|
      temp_r[jx] = arr[m + 1 + jx]
    end

    while i < n1 && j < n2
      if temp_l[i] <= temp_r[j]
        arr[k] = temp_l[i]
        i += 1
      else
        arr[k] = temp_r[j]
        j += 1
      end

      k += 1
    end

    while i < n1
      arr[k] =  temp_l[i]
      i += 1 
      k += i
    end 

    while j < n2
      arr[k] =  temp_r[j]
      j += 1
      k += 1
    end     
  end

end


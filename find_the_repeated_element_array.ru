require 'benchmark'

arr1 = [1,2,3] # []
arr2 = [1,1,2] # [1]
arr3 = [1,1,2,2] # [1,2]
arr4 = [1,1] + [*2..99]

def find_dup_v1(arr)
  unique_arr = []
  dup_arr = []

  arr.each do |a| # O(N)
    if unique_arr.include?(a) # O(N)
      dup_arr << a
    else
      unique_arr << a
    end
  end

  return dup_arr
end

Benchmark.bm do | check |
    check.report{ find_dup_v1(arr1) }
    check.report{ find_dup_v1(arr2) }
    check.report{ find_dup_v1(arr3) }
    check.report{ find_dup_v1(arr4) }
end
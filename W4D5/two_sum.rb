
#complete two_sum that returns indices in O(n)
def  two_sum(arr, target_sum)
    values = {}
    arr.each do |el|
        return true if values[target_sum - el] 
        values[el] = true

end
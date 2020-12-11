class Array
  
  def my_uniq
    return self if self.empty?
    hash = Hash.new(0)
    self.each {|ele| hash[ele] += 1}
    return hash.keys
  end

  def to_sum
    return self if self.empty?
    pairs = []
    self.each_with_index do |num1, i1|
      self.each_with_index do |num2, i2|
        if i2 > i1 && num1 + num2 == 0
          pairs << [i1, i2]
        end
      end
    end
    pairs     
  end

  def my_transpose
    cols = Array.new(self.length) {Array.new}

    (0...self.length).each do |r_i|
       (0...self.length).each do |c_i|
        cols[r_i] << self[c_i][r_i]
      end
    end
    cols
  end

  def stock_picker
    pairs = [[0,0]] #[[0,0], [1,2], [1,3], [2,4], [2,10]
    profits = [[0,0]] #[[1,3], [1,4], [1,5]]
    # diff = profit[1] - profit[0]
    self.each_with_index do |num1, i1|
      self.each_with_index do |num2, i2|
        if i2 > i1 && diff([num1, num2])> diff(profits[-1])
          pairs << [i1,i2]
          profits << [num1,num2]  
        end
      end
    end
    pairs[-1]
  end

  def diff(arr)
    arr[1] - arr[0] 
  end
end
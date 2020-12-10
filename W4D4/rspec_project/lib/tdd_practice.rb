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

end
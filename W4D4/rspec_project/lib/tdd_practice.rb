class Array
  
  def my_uniq
    return self if self.empty?
    hash = Hash.new(0)
    self.each {|ele| hash[ele] += 1}
    return hash.keys
  end

end
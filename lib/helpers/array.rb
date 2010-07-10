class Array
  def sum
    inject(0.0) {|sum, e| sum += e}
  end

  def mean
    sum / size
  end
end



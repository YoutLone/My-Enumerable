module MyEnumerable
  def all?()
    each { |item| return false unless yield item }
    true
  end

  def any?()
    each { |item| return true if yield item }
    false
  end

  def filter()
    result = []
    each { |item| result << item if yield item }
    result
  end

  def max()
    max = nil
    each { |item| max = item if max.nil? || item > max }
    max
  end

  def min()
    min = nil
    each { |item| min = item if min.nil? || item < min }
    min
  end

  def sort()
    result = []
    each { |item| result << item }
    result.sort { |a, b| yield a, b }
  end
end

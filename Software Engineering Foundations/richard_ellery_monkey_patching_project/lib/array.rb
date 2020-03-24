# Monkey-Patch Ruby's existing Array class to add your own custom methods
class Array
  def span
    return nil if self.empty?
    self.max - self.min
  end

  def average
    return nil if self.empty?
    self.sum / (self.length * 1.0)
  end

  def median
    sorted = self.sort
    if self.length == 0
      return nil
    elsif self.length % 2 != 0
      median_index = self.length / 2
      return sorted[median_index]
    else
      mid_idx2 = self.length / 2
      mid_idx1 = mid_idx2 - 1
      (sorted[mid_idx1] + sorted[mid_idx2]) / 2.0
    end
  end

  def counts
    counts_hash = Hash.new(0)
    self.each { |ele| counts_hash[ele] += 1 }
    counts_hash
  end
end
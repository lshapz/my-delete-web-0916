class Array

  def delete_first(item)
    self.delete_at(self.index(item))
    self
  end

  def delete_last(item)
    self.delete_at(self.rindex(item))
    self
  end

  def delete_middle(item)
    indexes = self.map.with_index {|element, i| i if element == item }.compact
    length = indexes.length
    halfway = length / 2
    if length.odd?
      self.delete_at(indexes[halfway])
    else
      [halfway, halfway - 1].each {|i| self.delete_at(indexes[i]) }
    end
    self
  end

end
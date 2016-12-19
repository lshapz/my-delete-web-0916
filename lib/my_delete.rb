require 'byebug'
class Array
  def delete_first(arg)
    array = self
    index = array.find_index(arg)
    array.delete_at(index)
    array
  end

  def delete_last(arg)
    array = self
    selector = array
    ind_array = []
    selector.select.with_index do |el, index|
      el == arg
      if el == arg
        ind_array << index
      end
    end
    array.delete_at(ind_array.last)
    array
  end

  def delete_middle(arg)
    array = self
    selector = array
    ind_array = []
    selector.select.with_index do |el, index|
      el == arg
      if el == arg
        ind_array << index
      end
    end
    half = ind_array.length / 2
    if ind_array.length % 2 == 0 
      [half, half -1].each {|i| array.delete_at(ind_array[i])}
    else
      array.delete_at(ind_array[half])
    end
    array

  end

end# code here

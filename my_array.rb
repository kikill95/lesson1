class MyArray
  attr_accessor :array

  def initialize(arr = [])
    @array = arr
  end

  def size
    @array.size
  end

  def reverse
    @array.reverse
  end

  def max
    @array.max
  end

  def min
    @array.min
  end

  def desc
    @array.sort.reverse
  end

  def asc
    @array.sort
  end

  def odd
    @array.select{ |el| el.odd? }
  end

  def multiple_to_three
    @array.select{ |el| el % 3 === 0 }
  end

  def uniq
    @array.uniq
  end

  def devide_on_ten
    @array.map{ |el| el.to_f / 10 }
  end

  def chars
    chars = (:'a'..:'z').to_a
    @array.map{ |el| chars[el] }
  end

  def switch
    new_arr = @array
    temp = new_arr.max
    new_arr.max = new_arr.min
    new_arr.min = temp
    new_arr
  end

  def before_min
    @array.each_with_index.select{ |ind| ind[1] < @array.rindex(@array.min) }.map{ |el| el[0] }
  end

  def three_smallest
    @array.sort.shift(3)
  end
end

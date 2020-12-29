class Triangle
  # write code here
  attr_accessor = :a, :b, :c

  @@um = []

  def initalize(a, b, c)
    @a = a
    @b = b
    @c = c
    @sum = [a,b,c]
  end

  def kind
    if(negative? == true || valid? == false)
      raise TriangleError
    elsif(equilateral?)
      :equilateral
    elsif(scalene?)
      :scalene
    elsif(isosceles?)
      :isosceles
    end
  end

  def negative?
    @sum.each do |length|
      if(length <= 0)
        return true
      end
    end
  end

  def valid?
    (@a + @b > @c) && (@b + @c > @a) && (@a + @c > @b)
  end

  def equilateral?
    (@a == @b) && (@a == @c)
  end

   def scalene?
    (@a != @b) && (@a!= @c) && (@b != @c)
  end

   def isosceles?
    (@b == @c) || (@a == @b) || (@a = @c)
  end

  class TriangleError < StandardError
    puts "This is not a triangle."
  end
  
end

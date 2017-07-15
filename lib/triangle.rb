class Triangle

  def initialize(a,b,c)
    @a = a
    @b = b
    @c = c
  end

  def kind
    if @a == 0 or @b == 0 or @c == 0
      begin
        raise TriangleError
      end
    elsif @a < 0 or @b < 0 or @c < 0
      begin
        raise TriangleError
      end
    elsif @a >= @b + @c or @b >= @a + @c or @c >= @a + @b
      begin
        raise TriangleError
      end
    elsif @a == @b and @a == @c and @b == @c
      :equilateral
    elsif @b == @c or @a == @c or @a == @b
      :isosceles
    elsif @a != @b and @a != @c and @b != @c
      :scalene
    #else

    end
  end
end


class TriangleError < StandardError

end

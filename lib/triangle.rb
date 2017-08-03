require 'pry'
class Triangle
  # write code here
attr_accessor :side1, :side2, :side3, :sides

  def initialize (s1,s2,s3)
    @side1 = s1
    @side2 = s2
    @side3 = s3
    @sides = [s1,s2,s3].sort!
  end

  def kind
    if sides.include?(0) || sides.any? { |x| x<0 } || sides[0] + sides[1] <= sides[2]
      raise TriangleError
    end
    if side1 == side2 && side1 == side3
      :equilateral
    elsif side1 == side2 || side1 == side3 || side2 == side3
      :isosceles
    else

:scalene
end

  end
end

class TriangleError < StandardError

end

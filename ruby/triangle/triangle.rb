class Triangle
  def initialize(sides)
    @sides = sides
  end

  def equilateral?
    return false if violates_triangle_inequality?
    all_equal?
  end

  def isosceles?
    return false if violates_triangle_inequality?
    two_sides_equal?
  end

  def scalene?
    return false if violates_triangle_inequality?
    !isosceles?
  end

  private

  def violates_triangle_inequality?
    return true if @sides.max <= 0
    @sides.max - @sides.min(2).sum > 0
  end

  def all_equal?
    @sides.max == @sides.min
  end

  def two_sides_equal?
    max_sides_equal? || min_sides_equal?
  end

  def max_sides_equal?
    max_sides = @sides.max(2)
    max_sides[0] == max_sides[1]
  end

  def min_sides_equal?
    min_sides = @sides.min(2)
    min_sides[0] == min_sides[1]
  end
end

class Triangle
  
  attr_accessor :side_1, :side_2, :side_3
  
  def initialize(side_1, side_2, side_3)
    @side_1 = side_1
    @side_2 = side_2
    @side_3 = side_3
  end
  
  def kind
    if @side_1 == @side_2 && @side_2 == @side_3 && @side_1 == @side_3 && 
       @side_1 != 0 && @side != 0 && @side_3 != 0
      :equilateral
    elsif (@side_1 == @side_2 && @side_1 != @side_3 && @side_2 != @side_3) || 
          (@side_1 == @side_3 && @side_1 != @side_2 && @side_2 != @side_3) ||
          (@side_3 == @side_2 && @side_1 != @side_3 && @side_1 != @side_2)
      :isosceles
    elsif @side_1 != @side_2 && @side_2 != @side_3 && @side_1 != @side_3
      :scalene
    elsif @side_1 == 0 && @side_2 == 0 && @side_3 == 0
      begin 
        raise TriangleError
      rescue TriangleError => error
        puts error.message
      end
    elsif @side_1 < 0 && @side_2 < 0 && @side_3 < 0
      begin 
        raise TriangleError
      rescue TriangleError => error
          puts error.message
      end
    elsif !(@side_1 + @side_2 > @side_3 && @side_2 + @side_3 > @side_1 && @side_1 + @side_3 > @side_2)
      begin 
        raise TriangleError
      rescue TriangleError => error
        puts error.message
      end
    end
      
  end
  
  class TriangleError < StandardError
    def message
      "This is custom message"
    end
  end
end

#puts Triangle.new(0, 0, 0).kind
puts Triangle.new(7, 3, 2).kind
#puts Triangle.new(2, 4, 2).kind
#puts Triangle.new(1, 1, 3).kind
#puts Triangle.new(3, 4, -5).kind

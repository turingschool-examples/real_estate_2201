class Room
  attr_reader :category, :area, :paint_status

    def initialize(category, length, width)
      @category = category
      @length = length
      @width = width
      @area = length * width.to_i
      @paint_status = false
    end

    def is_painted?
      if @paint == true
        return true
      elsif @paint == false
        return false
      end
    end

    def paint
      @paint == true
    end

end

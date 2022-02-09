class Room

  attr_reader :category, :length, :width
  attr_writer :is_painted?

    def initialize(c, l, w, is_painted?: false)
      @category = c
      @length = l
      @width = w
      @is_painted? = !!is_painted?      
    end

    def area
      @length * @width.to_i
    end

    def paint
      @is_painted? = !is_painted?
    end

end

# current hack : def is_painted? false end; def paint true end; and of course 
# it doesn't overwrite after you paint - so I found this way of maybe dealing
# with this IRRITATING BOOLEAN THING I HATE SO MUCH RN and thought it might work
# even though i didn't like changing the init method because it doesn't show up
# in the interaction and  you have to have a writer or accessor I know but i 
# can't get this damn thign to work

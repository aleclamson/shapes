require "gosu"

class Rectangle

	def initialize top_left_corner_x_coordinate, top_left_corner_y_coordinate, v_side_length, h_side_length = v_side_length
		@x = top_left_corner_x_coordinate
		@y = top_left_corner_y_coordinate
		@vl = v_side_length
		@hl = h_side_length
		@z = 0
		@m = :default
		
		@oc = Gosu::Color.new(0xff_000000)
		@oc.red = rand(256 - 40) + 40
		@oc.green = rand(256 - 40) + 40
		@oc.blue = rand(256 - 40) + 40
	
		@fc = Gosu::Color.new(0xff_000000)
		@fc.red = rand(256 - 40) + 40
		@fc.green = rand(256 - 40) + 40
		@fc.blue = rand(256 - 40) + 40
	end

	def draw
		Gosu.draw_line(@x, @y, @oc, @x + @hl, @y, @oc, @z, @m)
		Gosu.draw_line(@x, @y, @oc, @x, @y + @vl, @oc, @z, @m)
		Gosu.draw_line(@x + @hl, @y + @vl, @oc, @x + @hl, @y, @oc, @z, @m)
		Gosu.draw_line(@x + @hl, @y + @vl, @oc, @x, @y + @vl, @oc, @z, @m)
		for i in (1)...(@vl)
			Gosu.draw_line(@x, @y + i, @fc, @x + @hl - 1, @y + i, @fc, @z, @m)
		end
	end

end
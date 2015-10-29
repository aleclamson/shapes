require "gosu"
require_relative 'rectangle'
# require_relative "triangle"

class GameWindow < Gosu::Window

	def initialize
		super 640, 480
		self.caption = "Shapes"

		@squares = []
		for i in 0..25
			@squares.push(Rectangle.new(rand(640), rand(480), rand(50)))
		end

		# @triangles = []
		# for i in 0..25
		# 	@triangles.push(Triangle.new(rand(640), rand(480), rand(50)))
		# end

		@rectangles = []
		for i in 0..20
			@rectangles.push(Rectangle.new(rand(640), rand(480), rand(50), rand(50)))
		end
	end

	def draw
		@squares.each { |square| square.draw}
		#@triangles.each { |triangle| triangle.draw}
		@rectangles.each { |rectangle| rectangle.draw}
	end

	def button_down id
		close if id == Gosu::KbEscape
	end

end

window = GameWindow.new
window.show
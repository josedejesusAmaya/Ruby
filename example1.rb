=begin
    hola
    https://rubyinstaller.org/downloads/
=end


class BasicFigure
    @@author_name = "Pepe" #class varibale
    attr_accessor :height, :width #getters and setters

    def initialize(height, width)
        @height = height #instance variables
        @width = width
    end

    def self.author
        @@author_name
    end

    private

    def random_method
        puts 'ahoy'
    end
end

module Modulo
    def hello
        puts "holaa"
    end
end

#A class with inheritance
class Square < BasicFigure
    include Modulo

    def area
        @height * @width
    end

    def hello
        super
        puts "adios"
    end
end

#lowtyping
#figure = BasicFigure.new 10, 20
#figure.height
puts "Printing Square.author"
puts Square.author

square = Square.new 10, 20
puts "Printing square.author"
puts square.area

#array
squares = []

#ways to make anonim functions
10.times { |index| squares.push(Square.new(1 * index, 2 * index))}

puts "Printing areas"
squares.each do |square|
    puts square.area
end


#concatenacion de funciones
total = squares.map(&:area).reduce(0, &:+)
puts "Pinting sum of #{squares.length} areas"
puts total 
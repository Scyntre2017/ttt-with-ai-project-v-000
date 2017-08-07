module Players
  class Human < Player
    attr_reader :name

    def initialize
      super
      @name = name
    end

    def move(board)
      puts "Please enter a number: 1 through 9"
      gets.strip
    end

  end
end

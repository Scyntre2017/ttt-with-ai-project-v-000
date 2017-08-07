require "pry"

module Players
  class Computer < Player
    attr_accessor :name

    WIN_COMBINATIONS = [
      [0, 1, 2],
      [3, 4, 5],
      [6, 7, 8],
      [0, 3, 6],
      [1, 4, 7],
      [2, 5, 8],
      [2, 4, 6],
      [0, 4, 8]
    ]

    SECOND_MOVE = ["1", "3", "7", "9"]

    def initialize
      super
      @name = "Computer"
    end

    def move(board)
      if board.turn_count == 0
        "5"
      elsif board.turn_count == 1
        binding.pry
        SECOND_MOVE.sample
      else
      (1..9).to_a.sample.to_s
      end
    end

  end
end

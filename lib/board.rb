class Board
    attr_accessor :cells

  def initialize
    @cells = Array.new(9, " ")
  end

  def reset!
    @cells = Array.new(9, " ")
  end

  def display
    puts " #{cells[0]} | #{cells[1]} | #{cells[2]} "
    puts "-----------"
    puts " #{cells[3]} | #{cells[4]} | #{cells[5]} "
    puts "-----------"
    puts " #{cells[6]} | #{cells[7]} | #{cells[8]} "
  end

  def position(place)
    cells[place.to_i - 1]
  end

  def full?
    cells.none? { |x| x == " " }
  end

  def turn_count
    cells.count { |x| x != " "}
  end

  def taken?(place)
    !(position(place).nil? || position(place) == " ")
  end

  def valid_move?(place)
    !taken?(place) && place.to_i.between?(1, 9)
  end

  def update(input, player)
    cells[input.to_i - 1] = player.token
  end
end
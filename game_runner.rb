class GameRunner
  BOARD_TOP = " __ __ __\n"

  def self.run(*args)
    GameRunner.new.run(*args)
  end

  def run
    puts empty_board(3)
  end

  def empty_board(rows)
    board = BOARD_TOP

    rows.times do |row|
      board += "|  |  |  |\n|__|__|__|\n"
    end

    board
  end
end

GameRunner.run

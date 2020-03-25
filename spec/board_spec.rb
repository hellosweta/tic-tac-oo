require_relative "../lib/board.rb"

RSpec.describe Board do
  describe "#initialize" do
    it "returns an empty, numbered board" do
      board_with_numbers = <<~SQUIGGLY_HEREDOC
           1  2  3
           __ __ __
        A |  |  |  |
          |__|__|__|
        B |  |  |  |
          |__|__|__|
        C |  |  |  |
          |__|__|__|
      SQUIGGLY_HEREDOC

      new_board = Board.new

      expect(new_board.board).to eq(board_with_numbers)
    end
  end
end

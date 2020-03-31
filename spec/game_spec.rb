require "spec_helper"
require_relative "../lib/game"

RSpec.describe Game do
  describe "#run" do
    it "returns an error when user enters an invalid coordinate" do
      start_message = <<~SQUIGGLY_HEREDOC
           1  2  3
           __ __ __
        A |  |  |  |
          |__|__|__|
        B |  |  |  |
          |__|__|__|
        C |  |  |  |
          |__|__|__|

        Where would you like to play?
        Enter row letter and then column number.
      SQUIGGLY_HEREDOC

      mock_stdout = StringIO.new
      mock_stdin = StringIO.new
      allow(mock_stdin).to receive(:gets).and_return("1A", "A1")

      Game.run(mock_stdout, mock_stdin)

      expect(mock_stdout.string).to include(start_message)
      expect(mock_stdout.string).to include("Hm, that doesn\'t seem quite right")
    end

    it "exits when user inputs a valid coordinate" do
      mock_stdout = StringIO.new
      mock_stdin = StringIO.new
      allow(mock_stdin).to receive(:gets).and_return("A1")

      expect {
        Game.run(mock_stdout, mock_stdin)
      }.to exit
    end
  end
end

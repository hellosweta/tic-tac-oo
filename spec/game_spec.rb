require "spec_helper"
require_relative "../lib/game"

RSpec.describe Game do
  describe "#run" do
    it "plays tic tac toe" do
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
      allow(mock_stdin).to receive(:gets).and_return("1A")

      Game.run(mock_stdout, mock_stdin)

      expect(mock_stdout.string).to include(start_message)
      expect(mock_stdout.string).to include("Error")

      # The app waits for user input after rendering the screen with
      # a prompt asking for coordinates. When the user enters a good
      # coordinate the app quits. When the user enters bad coordinates,
      # the application returns a message about not understanding
      # the message, then waits for good input. The application doesn’t
      # quit until the user enters good information. Coordinates are
      # a row letter combined with a column number,
      # for example: A2, B3.
    end

    it "exits when user inputs a valid response" do
      mock_stdout = StringIO.new
      mock_stdin = StringIO.new
      allow(mock_stdin).to receive(:gets).and_return("A1")

      expect {
        Game.run(mock_stdout, mock_stdin)
      }.to exit
    end
  end
end

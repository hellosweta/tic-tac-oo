require_relative "../lib/player.rb"
require_relative "../lib/interface.rb"
require_relative "../lib/coordinates.rb"
require_relative "factories.rb"

RSpec.describe Player do
  describe "#get_valid_move" do
    it "prints an error when input is not valid" do
      error_message = "Hm, that doesn't seem quite right."
      mock_interface = MockInterface.new.interface
      allow(mock_interface).to receive(:read).and_return("1A", "A1")

      Player.new(interface: mock_interface).get_valid_move

      expect(mock_interface.std_out.string).to include(error_message)
    end

    it "sets a valid move as a coordinates variable" do
      mock_interface = MockInterface.new.interface
      allow(mock_interface).to receive(:read).and_return("A1")
      player = Player.new(
        interface: mock_interface
      )

      player.get_valid_move

      expect(player.coordinates.user_input).to eq("A1")
    end
  end
end

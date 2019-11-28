require 'player'

describe Player do
  subject(:player) {Player.new("sam")}
  describe "#name" do
    it "returns the players name" do
      expect(subject.name).to eq("sam")
    end
  end
end
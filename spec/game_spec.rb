require 'game'

describe Game do

  let(:player1) { double(:player) }
  let(:player2) { double(:player) }
  subject(:game) { described_class.new(player1, player2) }
  
  describe "#player1" do
    it "returns player 1" do
      expect(game.player1).to eq(player1)
    end
  end

  describe "#player2" do
    it "returns player 2" do
      expect(game.player2).to eq(player2)
    end
  end

  describe "#attack" do
    it "reduces the players' hitpoints by 10" do
      player1 = double("player1 double")
      allow(player1).to receive(:reduce_hp) { 90 }
      expect(subject.attack(player1)).to eq(90)
    end
  end
end
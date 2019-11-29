require 'game'

describe Game do
  describe "#attack" do
    it "reduces the players' hitpoints by 10" do
      player1 = double("player1 double")
      allow(player1).to receive(:reduce_hitpoints) { 90 }
      expect(subject.attack(player1)).to eq(90)
    end
  end
end
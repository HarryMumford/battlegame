require 'player'

describe Player do

  subject(:player) {Player.new("test_name")}

  describe "#name" do
    it "returns the players name" do
      expect(player.name).to eq("test_name")
    end
  end

  describe "#hp" do
    context "at the start of the game" do
      it "returns the players' default hit points" do
        expect(player.hp).to eq(Player::DEFAULT_HP)
      end
    end
  end

  describe "#reduce_hp" do
    it "reduces the players hitpoints by 10" do
      expect(player.reduce_hp).to eq(90)
    end
  end
end

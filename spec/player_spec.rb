require 'player'

describe Player do

  subject(:player) {Player.new("sam")}

  describe "#name" do
    it "returns the players name" do
      expect(subject.name).to eq("sam")
    end
  end

  describe "#hit_points" do
    context "at the start of the game" do
      it "returns the players' default hit points" do
        expect(subject.hit_points).to eq(Player::DEFAULT_HITPOINTS)
      end
    end
  end

  describe "#reduce_hitpoints" do
    it "reduces the players' hitpoints by 10" do
      expect{ subject.reduce_hitpoints }.to change{ subject.hit_points }.by(-10)
    end
  end

end
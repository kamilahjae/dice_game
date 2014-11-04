require_relative "Die"

FACES = %w[9 T J Q K A]

describe Die do
  specify "roll" do
    @die = Die.new
    expect(@die.top_face).to satisfy {|s| FACES.include?(s)}
  end
end

describe Hand do

  def hand_with(face_values)
    dice = face_values.map { |value| LoadedDie.new(value) }
    hand = Hand.new(dice)
  end

  it "has five dice, each of which has a known face value" do
    dice = 5.times.map {LoadedDie.new("Q")}
    hand = Hand.new(dice)
    expect(hand.face_values).to eq (%w[Q Q Q Q Q])
  end

  specify "with five queens is ranked as 'Five of a kind'" do
    hand = hand_with(%w[Q Q Q Q Q])
    expect(hand.rank).to eq("Five of a kind")
  end

end

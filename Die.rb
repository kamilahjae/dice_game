class Die
  FACES = %w[9 T J Q K A]

  attr_reader :top_face

  def initialize
    roll
  end

  def roll
    @top_face = FACES[ rand(0..5) ]
  end
end

class Hand
  def face_values

  end
end

class LoadedDie
  FACES = %w[Q Q Q Q Q]

  attr_reader :top_face

  def initialize
    roll
  end

  def roll
    @top_face = FACES[ rand(0..5) ]
  end
end

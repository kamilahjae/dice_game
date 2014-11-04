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
  def initialize(dice = [])
    @dice = dice
  end

  def face_values
    @dice.map { |e| e.face_value }
  end

  def rank
    counts = Hash.new(0)
    face_values.each do |face|
      counts[face] += 1
    end

    case
    when counts.values.include?(5); "Five of a kind"
    else                           ; "Bupkis"
    end
  end

end



class LoadedDie
  def initialize(face_value)
    @face_value = face_value
  end

  def face_value
    @face_value
  end
end

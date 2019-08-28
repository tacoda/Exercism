class Complement
  TRANSITIONS = {
    'G' => 'C',
    'C' => 'G',
    'T' => 'A',
    'A' => 'U'
  }

  def self.of_dna(string)
    string.chars.map(&TRANSITIONS).join
  end
end

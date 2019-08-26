class Complement
  @@choices = {
    'G' => 'C',
    'C' => 'G',
    'T' => 'A',
    'A' => 'U'
  }

  def self.of_dna(string)
    string.chars.map { |c| next_choice(c) }.join
  end

  def self.next_choice(char)
    @@choices[char]
  end
end

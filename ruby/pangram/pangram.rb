class Pangram
  def self.pangram?(sentence)
    letter_counts = create_count
    sentence.downcase
            .chars
            .select { |c| c =~ /[a-z]/ }
            .each { |c| letter_counts[c] += 1 }
    letter_counts.none? { |k,v| v == 0 }
  end

  def self.create_count
    counts = {}
    ('a'..'z').each { |c| counts[c] = 0 }
    counts
  end
end

class Pangram
  def self.pangram?(sentence)
    letter_counts = ('a'..'z').zip([0] * 26).to_h
    sentence.downcase
            .chars
            .select { |c| c =~ /[a-z]/ }
            .each { |c| letter_counts[c] += 1 }
    letter_counts.none? { |k,v| v == 0 }
  end
end

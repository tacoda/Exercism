class Acronym
  def self.abbreviate(phrase)
    phrase.scan(/\b\w/).flatten.join.upcase
  end
end

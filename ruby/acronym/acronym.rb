class Acronym
  def self.abbreviate(phrase)
    phrase.scan(/(\w)\w*/).flatten.join.upcase
  end
end

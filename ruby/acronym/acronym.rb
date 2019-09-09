class Acronym
  def self.abbreviate(phrase)
    phrase.scan(/\w+/)
          .map { |w| w.chars.first.upcase }
          .join
  end
end

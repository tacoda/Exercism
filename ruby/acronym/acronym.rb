class Acronym
  def self.abbreviate(phrase)
    phrase.scan(/(\w)\w*/)
          .flatten
          .map { |c| c.upcase }
          .join
  end
end

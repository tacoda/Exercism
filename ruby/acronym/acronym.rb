class Acronym
  def self.abbreviate(phrase)
    phrase.split(/[-\s]/)
          .reject { |w| w.nil? || w == '' }
          .map { |w| w.chars.first.upcase }
          .join
  end
end

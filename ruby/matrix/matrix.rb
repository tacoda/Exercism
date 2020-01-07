class Matrix
  attr_reader :rows

  def initialize(matrix_string)
    @rows = matrix_string.lines.map do |row|
      row.split(' ').map(&:to_i)
    end
  end

  def columns
    rows.transpose
  end
end

class Matrix
  attr_reader :rows

  def initialize(matrix_string)
    @rows = []
    matrix_string.split("\n").each do |row_string|
      @rows << row_string.split(' ').map(&:to_i)
    end
  end

  def columns
    @rows.transpose
  end
end

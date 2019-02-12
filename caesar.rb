class String
  # def caesar(step)
  #   self.codepoints
  #     .map do |char|
  #       case char
  #       when 65..90
  #         char += step
  #         while char > 90
  #           char -= 26
  #         end
  #         char.chr
  #       when 97..122
  #         char += step
  #         while char > 122
  #           char -= 26
  #         end
  #         char.chr
  #       else
  #         char.chr
  #       end
  #     end
  #     .join
  # end

  def caesar(step)
    self.codepoints.map { |code| shift_symbol(code, step).chr(Encoding::UTF_8) }.join
  end

  def shift_symbol(code, step)
    range = [[65, 90], [97, 122], [1040, 1071], [1072, 1103]].find { |a, b| code.between?(a, b) }
    return code unless range
    code += step
    range_size = range[1] - range[0] + 1
    code -= range_size while code > range[1]
    code += range_size while code < range[0]
    return code
  end
end

class String
  def caesar(step)
    self.codepoints
        .map do |char|
          case char
          when 65..90
            char += step
            while char > 90
              char -= 26
            end
            char.chr
          when 97..122
            char += step
            while char > 122
              char -= 26
            end
            char.chr
          else
            char.chr
          end
        end
        .join
  end
end

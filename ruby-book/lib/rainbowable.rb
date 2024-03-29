module Rainbowable
  def rainbow
    str = self.to_s

    count = 0

    colored_chars = []

    str.each_char do |char|

      color = 31 + count % 6

      colored_chars << "\e[#{color}m#{char}"

      count += 1

    end
  end
end

class String
  include Rainbowable
end

puts String.included_modules
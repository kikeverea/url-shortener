# frozen_string_literal: true

class ShortCode
  ALPHABET = "0123456789abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ".freeze
  BASE = ALPHABET.length

  def self.encode(number)
    return "0" if number == 0

    result = String.new

    while number > 0
      index = number % 62
      char = ALPHABET[index].to_s

      result.prepend char
      number = number / 62
    end

    result
  end

  def self.decode(string)
    number = 0

    string.reverse.each_char.with_index do |char, index|
      power = BASE**index # 62 ^ 0, 62 ^ 1, 62 ^ 2, ...
      char_index = ALPHABET.index(char)
      number += char_index * power
    end

    number
  end

end

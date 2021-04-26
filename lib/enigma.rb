require 'date'

class Enigma
  attr_reader :character_set,
              :key,
              :date
  def initialize
    @character_set = ("a".."z").to_a << " "
    @key = key
    @date = date
  end

  def encrypt(message)
  end

  def decrypt(cipher_text)
  end
end

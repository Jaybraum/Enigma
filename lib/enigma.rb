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

  def key_to_array(key)
    key_array = []
    key_sep = key.chars
    4.times do |index|
        key_array << (key_sep[index] + key_sep[index + 1]).to_i
    end
    key_array
  end

  def shift(key, offsets)
    key + offsets
  end



  def encrypt(message, key, date)
    #take in message
  end
end

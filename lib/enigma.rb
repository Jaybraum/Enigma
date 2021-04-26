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

  def shift(key, offsets)
    key + offsets
  end



  def encrypt(message, key, date)
    #take in message
  end
end

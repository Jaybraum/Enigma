class Enigma
  attr_reader :message,
              :key,
              :date
  def initialize(message, key, date)
    @message = message
    @key = key
    @date = date
  end

  def encrypt(message)
  end

  def decrypt(cipher_text)
  end
end

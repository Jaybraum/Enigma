class Enigma
  attr_reader :character_set
  def initialize
    @character_set = ("a".."z").to_a << " "
  end

  def key(key_string)
    key_array = []
    key_sep = key_string.chars
    4.times do |index|
        key_array << (key_sep[index] + key_sep[index + 1]).to_i
    end
    key_array
  end

  def offset(date)
    offset = (date.to_i ** 2).to_s[-4..-1]
    offset_sep = offset.chars
    offset_sep.map do |number|
      number.to_i
    end
  end

  def shift(key, offset)
    shifts = []
    4.times do |index|
      shifts << offset[index] + key[index]
    end
    shifts
  end

  def encrypt_message(message, shift)
    message = message.downcase
    array = message.split("").map do |character|
      character
    end

    array.map.with_index do |letter, index|
       if @character_set.index(letter) == nil
         letter
       else
         letter_index = @character_set.index(letter)
         rotated = @character_set.rotate(shift[index % 4])
         rotated[letter_index]
       end
    end.join
  end

  def date_to_string
    date = Time.now.strftime("%d%m%y").to_i
    last_digits = (date.to_s)[-4..-1]
  end

  def encrypt(message, key = '%05d' % rand(100000), date = date_to_string)
    key_code = key(key)
    offset_code = offset(date)
    shift_code = shift(key_code, offset_code)
    encrypted_message = encrypt_message(message, shift_code)

    hash = {:encryption => encrypted_message,
            :key => key,
            :date => date}
  end

  def decrypt_message(message, shift)
    array = message.split("").map do |character|
      character
    end

    array.map.with_index do |letter, index|
      if @character_set.index(letter) == nil
        letter
      else
        letter_index = @character_set.index(letter)
        rotated = @character_set.rotate(-(shift[index % 4]))
        rotated[letter_index]
      end
    end.join
  end

  def decrypt(message, key, date)
    key_code = key(key)
    offset_code = offset(date)
    shift_code = shift(key_code, offset_code)
    decrypted_message = decrypt_message(message, shift_code)

    hash = {:decryption => decrypted_message,
            :key => key,
            :date => date}
  end
end

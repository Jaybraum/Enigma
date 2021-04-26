require './lib/enigma'
require 'date'

RSpec.describe Enigma do
  describe 'instantiation' do
    it '::new' do
      enigma = Enigma.new

      expect(enigma).to be_an_instance_of(Enigma)
    end
  end

  describe 'methods' do
    it '#create key' do
      enigma = Enigma.new

      expect(enigma.key("02715")).to eq([2, 27, 71, 15])
    end

    it '#create offset' do
      enigma = Enigma.new

      expect(enigma.offset("040895")).to eq([1, 0, 2, 5])
    end

    it '#create shift' do
      enigma = Enigma.new

      expect(enigma.shift([2, 27, 71, 15], [1, 0, 2, 5])).to eq([3, 27, 73, 20])
    end

    it '#create encrypt message' do
      enigma = Enigma.new

      expect(enigma.encrypt_message("hello world", [3, 27, 73, 20])).to eq("keder ohulw")
    end


    it '#encrypt' do
      enigma = Enigma.new

      expect(enigma.encrypt("hello world", "02715", "040895")).to eq({encryption: "keder ohulw",
                                                                      key: "02715",
                                                                      date: "040895"})

    end

    it '#encrypt' do
      enigma = Enigma.new

      expect(enigma.decrypt("keder ohulw", "02715", "040895")).to eq({encryption: "hello world",
                                                                      key: "02715",
                                                                      date: "040895"})
    end
  end
end

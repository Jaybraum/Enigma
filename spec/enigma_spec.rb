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
    xit '#create key' do
      enigma = Enigma.new

      expect(enigma.key("02715")).to eq([2, 27, 71, 15])
    end

    xit '#create offset' do
      enigma = Enigma.new

      expect(enigma.offset("040895")).to eq([1, 0, 2, 5])
    end

    xit '#create shift' do
      enigma = Enigma.new

      expect(enigma.shift([2, 27, 71, 15], [1, 0, 2, 5])).to eq([3, 27, 73, 20])
    end

    xit '#create encrypt message' do
      enigma = Enigma.new

      expect(enigma.encrypt_message("hello world", [3, 27, 73, 20])).to eq("keder ohulw")
    end

    it '#encrypt' do
      enigma = Enigma.new

      expect(enigma.encrypt("hello world!", "02715", "040895")).to eq({encryption: "keder ohulw",
                                                                      key: "02715",
                                                                      date: "040895"})
    end

    xit '#encrypt with no key' do
      enigma = Enigma.new

      expect(enigma.encrypt("hello world", "040895")).to be_a(Hash)
    end

    xit '#date to string' do
      enigma = Enigma.new

      expect(enigma.date_to_string).to be_a(String)
    end

    xit '#encrypt with no date' do
      enigma = Enigma.new

      expect(enigma.encrypt("hello world","02715")).to be_a(Hash)
    end

    xit '#encrypt with no data' do
      enigma = Enigma.new

      expect(enigma.encrypt("hello world")).to be_a(Hash)
    end

    xit '#create decrypt message' do
      enigma = Enigma.new

      expect(enigma.decrypt_message("keder ohulw", [3, 27, 73, 20])).to eq("hello world")
    end

    xit '#decrypt' do
      enigma = Enigma.new

      expect(enigma.decrypt("keder ohulw", "02715", "040895")).to eq({encryption: "hello world",
                                                                      key: "02715",
                                                                      date: "040895"})
    end
  end
end

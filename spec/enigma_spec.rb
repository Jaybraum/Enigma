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
    xit '#encrypt' do
      enigma = Enigma.new

      expect(enigma.encrypt('hello world', "02715")).to eq({encryption: "keder ohulw",
                                                                      key: "02715",
                                                                      date: "040895"})
    end

    xit '#encrypt with date' do
      enigma = Enigma.new

      expect(enigma.encrypt('hello world', "02715", "040895")).to eq({encryption: "keder ohulw",
                                                                      key: "02715",
                                                                      date: "040895"})
    end

    xit '#decrypt' do
      enigma = Enigma.new

      expect(enigma.decrypt("keder ohulw", "02715", "040895")).to eq({decryption: "hello world",
                                                                      key: "02715",
                                                                      date: "040895"})
    end

    xit '#decrypt with date' do
      enigma = Enigma.new

      expect(enigma.decrypt("keder ohulw", "02715")).to eq({decryption: "hello world",
                                                                      key: "02715",
                                                                      date: "040895"})
    end
  end
end

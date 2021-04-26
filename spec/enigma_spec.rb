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
    it '#key' do
      enigma = Enigma.new

      expect(enigma.key_to_array("02715")).to eq([2, 27, 71, 15])
    end

    xit '#shift' do
      enigma = Enigma.new

      expect(enigma.shift("02715", "040895")).to eq
    end


    xit '#encrypt' do
      enigma = Enigma.new

      expect(enigma.encrypt("hello world", "02715", "040895")).to eq({encryption: "keder ohulw",
                                                                      key: "02715",
                                                                      date: "040895"})
                                                                      end
  end
end

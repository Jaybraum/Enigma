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
    it '#shift' do
      enigma = Enigma.new

      expect(enigma.shift("02715", "040895")).to eq[3, 27, 73, 20]
    end


    xit '#encrypt' do
      enigma = Enigma.new

      expect(enigma.encrypt("hello world", "02715", "040895")).to eq({encryption: "keder ohulw",
                                                                      key: "02715",
                                                                      date: "040895"})
                                                                      end
  end
end

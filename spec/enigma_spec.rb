require './lib/enigma'
require 'date'

RSpec.describe Enigma do
  describe 'instantiation' do
    it '::new' do
      enigma = Enigma.new('Jermaine', 'key', 'date')

      expect(enigma).to be_an_instance_of(Enigma)
    end
  end

  describe 'methods' do
    it '#encrypt' do
      enigma = Enigma.new('Jermaine', 'key', 'date')

      expect(enigma.encrypt('Jermaine')).to be_a(Hash)
    end

    it '#decrypt' do
      enigma = Enigma.new('Jermaine', 'key', 'date')

      expect(enigma.decrypt(???)).to be_a(Hash)
    end
  end
end

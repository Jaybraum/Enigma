require './lib/enigma'

RSpec.describe Enigma do
  describe 'instantiation' do
    it '::new' do
      enigma = Enigma.new('message', 'key', 'date')

      expect(enigma).to be_an_instance_of(Enigma)
    end
  end
end

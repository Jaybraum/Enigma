require './lib/key_generator'

RSpec.describe KeyGenerator do
  describe 'instantiation' do
    it '::new' do
      key_generator = KeyGenerator.new

      expect(key_generator).to be_an_instance_of(KeyGenerator)
    end
  end
  describe 'methods' do
    it '#generate' do
      key_generator = KeyGenerator.new

      expect(key_generator.generate).to be_a(Integer)
    end
  end
end

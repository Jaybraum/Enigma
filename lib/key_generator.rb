class KeyGenerator
  def initialize
    @key = generate
  end

  def generate
    number = '%05d' % rand(100000)
  end

end

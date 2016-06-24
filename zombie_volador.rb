class ZombieVolador < Zombie
  def initialize(x, y)
    super(x, y)
    @speed = 10
    @image = Gosu::Image.new("palta.png")
  end
end
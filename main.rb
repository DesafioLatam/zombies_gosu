require 'gosu'
require_relative 'zombie'
require_relative 'zombie_terrestre'
require_relative 'zombie_volador'

class MyWindow < Gosu::Window
  def initialize
    super(900, 700)
    self.caption = 'Hello World!'
    @zombies = []
    File.open("zombies.txt", "r",).readlines.each do |line|
      coords = line.split(",")
      coords.map!(&:to_i)
      if coords[2] == 1
        @zombies << ZombieTerrestre.new(coords[0], coords[1])
      elsif coords[2] == 2
        @zombies << ZombieVolador.new(coords[0], coords[1])
      end
    end
  end

  def update
    @zombies.each do |z|
      z.update
    end
  end

  def draw
    @zombies.each do |z|
      z.draw
    end

  end
end

window = MyWindow.new
window.show
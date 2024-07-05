class Car 

  attr_writer :speed
  attr_reader :speed
  attr_reader :engine_volume
  attr_writer :engine_volume

  def initialize(speed = 0, engine_volume = 1.6)
    @speed = speed
    @engine_volume = engine_volume
    beeb
  end 

  def start_engine
    puts "Wroomm!"
  end 

  def beeb
    puts "Beeb beeb"
  end

  def stop
    @speed = 0
  end

  def go
    @speed = 50
  end

end
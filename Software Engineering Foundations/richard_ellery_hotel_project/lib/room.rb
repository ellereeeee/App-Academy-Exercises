class Room
  def initialize(cap)
    @capacity = cap
    @occupants = []
  end

  def capacity
    @capacity
  end

  def occupants
    @occupants
  end

  def full?
    @capacity == @occupants.length
  end

  def available_space
    @capacity - @occupants.length
  end

  def add_occupant(name)
    if !self.full?
      @occupants << name
      return true
    else
      false
    end
  end
end

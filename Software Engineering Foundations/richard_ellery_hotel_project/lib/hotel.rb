require_relative "room"

class Hotel
  def initialize(name, rooms)
    @name = name
    @rooms = rooms.each { |k,v| rooms[k] = Room.new(v) }
  end

  def name
    upcased_name = @name.split(" ").map(&:capitalize).join(" ")
    upcased_name
  end

  def rooms
    @rooms
  end

  def room_exists?(room)
    @rooms.include?(room)
  end

  def check_in(person, room_name)
    if !room_exists?(room_name)
      puts "sorry, room does not exist"
    else
      if @rooms[room_name].add_occupant(person)
        puts "check in successful"
      else
        puts "sorry, room is full"
      end
    end
  end

  def has_vacancy?
    @rooms.values.any? { |room| room.available_space > 0 }
  end

  def list_rooms
    @rooms.each do |name, room|
      puts "#{name} : #{room.available_space}"
    end
  end
end

class Dog
  def initialize(name, breed, age, bark, favorite_foods)
    @name = name
    @breed = breed
    @age = age
    @bark = bark
    @favorite_foods = favorite_foods
  end
  
  # getter methods
  def name
    @name
  end

  def breed
    @breed
  end

  def age
    @age
  end
  
  # setter method for age
  def age=(number)
    @age = number
  end

  def bark
    @bark
  end

  def favorite_foods
    @favorite_foods
  end
  
  def bark
    # @age > 3 ? bark.upcase + "!" : bark.downcase + "!" 
    if @age > 3
      return @bark.upcase
    else
      return @bark.downcase
    end
  end

  def favorite_food?(food)
    @favorite_foods.map{&:downcase}.include?(food.downcase)
  end
end

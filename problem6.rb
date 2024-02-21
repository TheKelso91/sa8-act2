module Drivable
    def drive
      puts "I'm driving like crazy!"
    end
end
  
class Car
    include Drivable
end
  
class Truck
    include Drivable
end
  
my_car = Car.new
my_car.drive
  
delivery_truck = Truck.new
delivery_truck.drive
  
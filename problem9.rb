class Camera
    def initialize
      @status = "off"
    end
  
    def turn_on
      @status = "on"
      puts "Camera is now on"
    end
  
    def turn_off
      @status = "off"
      puts "Camera is now off"
    end
end

my_camera = Camera.new
my_camera.turn_on
my_camera.turn_off

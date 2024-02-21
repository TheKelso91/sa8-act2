class Appliance
    def show_info
      puts "This is a household appliance."
    end
end
  
class Refrigerator < Appliance
    def show_specific_info
      puts "This is a refrigerator. I keep your food cold."
    end
end
  
class Microwave < Appliance
    def show_specific_info
      puts "This is a microwave. I warm your food."
    end
end
  
refrigerator = Refrigerator.new
microwave = Microwave.new
  
refrigerator.show_info
refrigerator.show_specific_info
microwave.show_info
microwave.show_specific_info

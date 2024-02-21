class Gadget
    attr_reader :name, :price
    attr_writer :price
  
    def initialize(name, price)
      @name = name
      @price = price
    end
end
  
gadget = Gadget.new("Dell XPS", 1499.99)
puts "Gadget Name: #{gadget.name}"
gadget.price = 1699.99
puts "Updated Gadget Price: #{gadget.price}"

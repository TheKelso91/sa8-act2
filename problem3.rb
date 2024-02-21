class User
    attr_reader :username
  
    def initialize(username)
      @username = username
    end
  
    def username=(new_username)
      if new_username.nil? || new_username.empty?
        raise ArgumentError, "Username cannot be empty or nil"
      end
      @username = new_username
    end
end

user = User.new("kelsey_evans")
puts user.username

begin
  user.username = ""  
rescue ArgumentError => e
  puts "Error: #{e.message}"
end

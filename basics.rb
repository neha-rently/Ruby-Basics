class Greet
    attr_accessor :names
    def initialize(names = "World")
        @names = names
    end


    def say_hi
        if @names.nil?
            puts "..."

        elsif @names.respond_to?("each")
            @names.each do |name|
                puts "Hello #{name}"
            end
        else
            puts "Hello #{@names}"
        end

    end

    def say_bye
        if @names.nil?
            puts "..."
        elsif @names.respond_to?("join")
            puts("Bye #{@names.join(", ")}! Thanks for visiting")
        else
            puts("Bye #{@names}! Thanks for visiting")
        end
    end
end

if __FILE__ == $0
    mg = Greet.new
    mg.say_hi
    mg.say_bye
    mg.names="Neha"
    mg.say_hi
    mg.say_bye
    mg.names=["Neha","Shivani","Surya"]
    mg.say_hi
    mg.say_bye
end
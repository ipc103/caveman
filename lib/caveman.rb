require "caveman/version"
module Project

  class Caveman

    SUBSTITUTES = {
      "I" => "me",
      "am " => "",
      "don't" => "no"
    }

    def sub_string
      new_string = @input
      SUBSTITUTES.each {|word, replacement| new_string = new_string.gsub(/\b#{word}\b/, replacement)}
      "grunt...#{new_string.downcase}"
    end

    def greet_user
      puts "you talk. me repeat. say exit, me quit."
    end

    def take_input
      @input = gets.strip
    end

    def call
      greet_user
      loop do
        take_input
        break if @input == 'exit'
        puts sub_string
      end
    end

  end

end


class AustinCrime::CLI

  def initialize; end

  def call
    puts "Welcome to Austin Crime Search!"
    inputs
    menu
  #  cya
  end

    def inputs
      types = ["DWI", "HARASSMENT", "CRUELTY TO ANIMALS", "THEFT", "CRIMINAL MISCHIEF"]

 # Select type of crime to view
      puts <<-DOC
      1. DWI
      2. HARASSMENT
      3. CRUELTY TO ANIMALS
      4. THEFT
      5. CRIMINAL MISCHIEF
      DOC


      # @crimes = AustinCrime::Crime.all
      # @crimes.each.with_index(1) do |crime, i|
      #   puts "#{i}. #{crime.type} - #{crime.increp} - #{crime.date}"
      # end
     end

    def menu
      input = nil
      while input != "q"
        puts "\nPlease enter the number of the crime type for more information."
        # or enter 'list' to see your list of options. "
        # puts "You may also enter 'q' to Quit."
        input = gets.strip.downcase
      # if input.to_i > 0 && input.to_i < 6
      #   puts AustinCrime::Crime.all
      case input
      when "1"
        puts AustinCrime::Crime.dwi
      when "q"
        puts "Thanks for visiting. Come again for more reasons NOT TO MOVE TO AUSTIN!"
      when "list"
        inputs
      else
        puts "Need some help? Type 'list' to see your options or 'q' to quit."
      end
    end
  end
end

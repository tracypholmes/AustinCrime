require 'httparty'
require 'pry'

class AustinCrime::Crime
  def initialize
    @response = response
  end

  def self.dwi
    @response = HTTParty.get("https://data.austintexas.gov/resource/rkrg-9tez.json?$where=starts_with(crime_type,'DWI')&$limit=10")
    yeesh
  end

  def self.harassment
    response = HTTParty.get("https://data.austintexas.gov/resource/rkrg-9tez.json?crime_type='HARASSMENT'")
  end

  def self.cruelty
    response = HTTParty.get("https://data.austintexas.gov/resource/rkrg-9tez.json?crime_type='CRUELTY TO ANIMALS'")
  end

  def self.theft
    response = HTTParty.get("https://data.austintexas.gov/resource/rkrg-9tez.json?crime_type='THEFT'")
  end

  def self.yeesh
    puts "Got #{@response.count} results. Showing first result:"
    @response.first.each do |k, v|
      puts "#{k}: #{v}"
    end
    puts "\nEnter 'more' if you'd like to browse more entries or 'menu' if you'd like to start over"
    input = gets.chomp
    if input == 'more'
      @response.collect do |hash|
        puts '--------------------'
        hash.collect do |k, v|  # not supposed to use collect on hashes?
          puts "#{k}: #{v}"
        end.compact.reject(&:empty?) # c_cole on the assist
      end
    elsif input == 'menu'
      AustinCrime::CLI.inputs
    else
      puts 'Not sure what you want. Please try again.'
    end
  end
end

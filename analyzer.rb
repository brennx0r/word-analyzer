require 'pry'

def file_load
@contents = Array.new
@contents = File.read("example.txt").split
return @contents
end

def analyzer(contents)
puts "Input word you'd like to search on:"
input_string = gets.chomp.to_s
puts "You input the word: "+input_string
@results = contents.grep(input_string)
end

def counter(results)
@counted_results = @results.count
end

file_load
analyzer(@contents)
counter(@results)
puts "There's "+@counted_results.to_s+" instances of the word in the file."
require 'net/http'

uri = URI('https://coderbyte.com/api/challenges/json/age-counting')
response = Net::HTTP.get(uri) # => String
str_comma_sep = response.to_s.split(',')
count = 0
str_comma_sep.each do |str|
  split_data = str.split("=")
  if split_data[0].strip() == "age" && split_data[1].to_i >= 50
    count += 1
  end
end
puts count

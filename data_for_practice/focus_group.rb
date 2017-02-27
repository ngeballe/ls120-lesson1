require_relative "voter"

class Array
  def average
    self.reduce(:+) / self.count.to_f
  end
end

# import data

data = File.readlines("voter_data.txt")

data[1..-1].each do |voter_info|
  voter_info.strip!
  name, age, gender, city, party = voter_info.split(",")
  age = age.to_i
  Voter.new(name, age, gender, city, party)
end

puts "There are #{Voter.count} voters in the focus group:"
puts

voters = Voter.all

puts voters

puts
puts "Male voters:"

men = voters.select { |v| v.gender == "Male" }
puts men
puts "There are #{men.count} men in the focus group."

puts
puts "Women voters:"
puts voters.select { |v| v.gender == "Female" }

women, men = voters.partition { |v| v.gender == "Female" }

p "#{women.size} women:"
puts women

puts

p "#{men.size} men:"
puts men

grouped_by_party = voters.group_by { |v| v.party }

grouped_by_party.each do |party, voters|
  #{ }"There are #{}"
  puts
  puts "There are #{voters.count} #{party}s in the group:"
  puts
  puts voters
end

puts
puts "Who's the oldest person in the group?"
puts voters.max_by { |voter| voter.age }

puts
puts "Who's the oldest person in the group?"
puts voters.max_by { |voter| voter.age }

dem_ages = voters.select { |v| v.party == "Democrat" }.map { |v| v.age }
gop_ages = voters.select { |v| v.party == "Republican" }.map { |v| v.age }

avg_age_of_dems = dem_ages.average
avg_age_of_gop = gop_ages.average

puts "The average age of Democrats today is #{avg_age_of_dems}. The average age of Republicans is #{avg_age_of_gop}. (Not statistically significant)"

# p voters.sort
# p voters.sort.map { |v| v.age }

# gordon = voters.find { |v| v.name == "Gordon" }
# shelley = voters.find { |v| v.name == "Shelley" }
# p (gordon > shelley) == false
# p (shelley > gordon) == true



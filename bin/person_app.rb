require_relative '../lib/person'
require "pry"

joe = Person.new('Joe', 'Smoe')
zack = Person.new('Zack', 'Banton')

# change joe's status to active
#joe.status = 'active'

# change  joe's status to inactive
#joe.status = 'inactive'

# Ok, joe is signed the contract and we make him active again.
#joe.signed_contract

4.times do |i|
  Person.new("Person", "#{i}")
end

puts "All my people = #{Person.all_people}"

binding.pry





# Instructions: do your work in this file below the hash
# push it up to your own fork and do a pull request if you want me to leave code comments
# otherwise we can talk about it on Monday.

# Part 1:
# what would you write out to access 'JavaScript' in wanda's hash?
# what about tina's hometown?
# how about 'Python' in Geraldine's hash?
#
# Part 2: Write a method that returns the average age of all the students in the hash
#
# Part 3: Write a method that prints the student's name and their classes
# Constraints for part 2: Student's name should be capitalized
# Method should print out all three students and there classes
# It should look like this:
#
# Wanda's classes
# -----
# Ruby
# Javascript
# C#
#
# Geraldine's classes
# -----
# Erlang
# Java
# Python
#
# Tina's classes
# -----
# C++
# PHP
# HTML/CSS

students_hash = {
  wanda: {
    age: 26,
    classes: ['Ruby', 'JavaScript', 'C#'],
    hometown: 'Boise',
  },
  geraldine: {
    age: 18,
    classes: ['Erlang', 'Java', 'Python'],
    hometown: 'Charlotte'
  },
  tina: {
    age: '31',
    classes: ['C++', 'PHP', 'HTML/CSS'],
    hometwn: 'El Cerrito'
  }
}
# ===============
# YOUR WORK BELOW
# ===============
puts students_hash[:wanda][:classes][1]
puts students_hash[:tina][:hometwn]

# work on this later
# students_hash.keys.each do |key|
#   students_hash[key]


# Instructions
def ave_age(age_hash)
  array = []
  age_hash.each do |key, value|
    array << value[:age].to_i
  end
  array.inject(:+) / array.length
end
# calling the method and passing in the data to use the Instructions on.
puts ave_age(students_hash)

#
def print_class_list(class_hash)
  class_hash.each do |key, value|
    puts key.capitalize.to_s + "'s classes"
    puts "--------------"
    value[:classes].each do |class_string|
      puts class_string
    end
  end
end
print_class_list(students_hash)

# 10.times do  |number|
#  puts  "5 x #{number+1} = #{(number+1)*5}"
# end
#______________________________________________________
# 10.times{|number| puts "5 x #{number+1} = #{(number+1)*5}"}
#______________________________________________________
# print_table  = Proc.new  do |number|
#   puts "5 x #{number + 1} = #{(number+1)*5}"
# end
# 10.times &print_table
#______________________________________________________
# full_name = Proc.new  do |first, last|
#   puts "#{last}, #{first}"
# end

# full_name.call('Elena', 'Quintero')
#____________________________________________________
# full_name = Proc.new do |first: name, last: surname |
#  puts "#{last}, #{first}"
# end

# full_name.call(first:'Elena', last:'Quintero')
# full_name.call(last: 'Quintero', first:'Elena')
#_____________________________________________________
# def load_users(database, &block)
#  puts database
#  puts block.class
#  puts block.source_location
#  puts block.parameters
#  block.call(first:'Elena', last: 'Quintero')
#end

# load_users('users.sqlite3',&full_name)
#______________________________________________________

#users = ['Gerardo','Miguel','Roberto','Raymunod']
# def last_user(users)
#    yield(users.last.downcase) if block_given?
#    users.last
# end

# last_user(users) do |user|
#  puts "El último usuario es: #{user}"
# end

# puts last_user(users)
#______________________________________________________

# full_name = Proc.new do |first:'Francisco', last:'Quintero',**list|
#   puts "#{last}, #{first}: #{list}"
# end

# full_name.call(first:'Amanda', last: 'Ayala', birth: 1990, male:false)
# full_name.call(birth:1994, female:false)
#______________________________________________________
# full_name = lambda do |first:'Francisco', last:'Quintero',**list|
#   puts "#{last}, #{first}: #{list}"
# end

# full_name.call(first:'Amanda', last: 'Ayala', birth: 1990, male:false)
# full_name.call(birth:1994, female:false)
#______________________________________________________

# block_proc = proc do  |a,b|
#  [a,b]

# end
# block_lambda = lambda do |a,b|
#  [a,b]
# end
# p block_proc.call('A', true, 2)
# p block_proc.call('A')
# p block_proc.call(['A', false])

# p block_proc.lambda?
# p block_lambda.lambda?
#______________________________________________________



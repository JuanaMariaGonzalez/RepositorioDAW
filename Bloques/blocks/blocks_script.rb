10.times do |number|
  puts "5 x #{number+1} = #{(number+1)*5}"
end

10.times { |number| puts "5 x #{number+1} = #{(number+1)*5}"}

print_table = Proc.new do |number|
  puts "5 x #{number+1} = #{(number+1)*5}"
end

10.times &print_table


full_name = Proc.new do |first, last|
  puts "#{last}, #{first}"
end

full_name.call('Juana', 'Gonzalez')

full_name = Proc.new do |first: name, last: surname|
  puts "#{last}, #{first}"
end

full_name.call(first: 'Juana', last: 'Gonzalez')
full_name.call(last: 'Gonzalez', first: 'Juana')

def load_users(database, &black)
  puts database
  puts black.class
  puts black.source_location
  puts black.parameters
  black.call(first: 'Juana', last: 'González')
end

load_users('users.sqlite3', &full_name)


users = ['María', 'Ramon', 'Victor', 'Juan']
def last_user(users)
  yield(users.last.downcase) if block_given?
  users.last
end
last_user(users) do |user|
  puts "El ultimo usuario es: #{user}"
end

puts last_user(users)

full_name = Proc.new do |first: 'María', last: 'Sanchez', **list|
  puts "#{last}, #{first}: #{list}"
end

full_name.call(first: 'Ramon', last: 'Ayala', birth: 1982, male: true)
full_name.call(birth: 1990, female: true)

black_proc = proc do |a, b|
  [a, b]
end
black_lambda = lambda do |a, b|
  [a, b]
end
p black_proc.call('A', true, 2)
p black_proc.call('A')
p black_proc.call(['A', false])
#p black_lambda.call('A', true, 2)
#p black_lambda.call('A')
#p black_lambda.call(['A', false])
p black_proc.lambda?
p black_lambda.lambda?

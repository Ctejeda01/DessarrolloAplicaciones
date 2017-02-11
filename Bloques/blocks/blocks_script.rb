#10.times do |number|
 #   puts "5 x #{number +1}= #{(number +1)*5}"
#end

#10.times{|number| puts "5 x #{number +1}= #{(number +1)*5}"}

#print_table = Proc.new do |number|
 # puts puts "5 x #{number +1}= #{(number +1)*5}"
#end

#10.times &print_table

full_name =Proc.new do |first: name, last: surname|
  puts "#{last}, #{first}"
end

full_name.call(first: 'Caro', last: 'Tejeda')
full_name.call(last: 'Caro', first: 'Tejeda')

def load_users(database, &block)
  puts database
  puts block.class
  puts block.source_location
  puts block.parameters
  block.call(first: 'Caro', last:'Tejeda')
end

load_users('users.sqlite3',&full_name)



users = 'Maria', 'Ramon', 'Victor', 'Juan'
def last_user(users)
  yield(users.last.downcase) if block_given?
  users.last
end
last_user(users) do|user|
  puts"El ultimo usuario es : #{user}"
end
puts last_user(users)


full_name = lambda do |first: 'Maria', last: 'Sanchez', **list|
  puts "#{last}, #{first}: #{list}"
end

full_name.call(first: 'Ramon', last:'Ayala', birth: 1992, male:true)
full_name.call(birth:1993, female:true)

block_proc = proc do |a, b|
  [a,b]
end
bloock_lambda = lambda do |a, b|
  [a, b]
end
p block_proc.call('A', true, 2)
p block_proc.call('A')
p block_proc.call(['A', false])
# p block_lambda.call('A', true, 2 )
# p block_lambda.call('A')
# p block_lambda.call(['A', false])
p block_proc.lambda?
p block_lambda.lambda?




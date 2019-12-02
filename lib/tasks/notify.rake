# Example:
# task :apple do
#   puts "Eat more apples!"
# end

task :notify do
  puts "test 01"
  HorribleFactMailer.with(user: User.first).scareuser.deliver_now
  puts "test 02"
end



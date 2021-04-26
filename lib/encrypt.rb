require './lib/enigma'


message_file = File.open(ARGV[0], "r")
message = message_file.read.chomp

enigma = Enigma.new
encrypted = enigma.encrypt(message, "02715", "040895" )

new_file = File.open(ARGV[1], "w")
new_file.write(encrypted[:encryption])

puts "Created #{ARGV[1]} with the key #{encrypted[:key]} and date #{encrypted[:date]}"

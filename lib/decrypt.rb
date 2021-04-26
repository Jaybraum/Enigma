require './lib/enigma'

message_file = File.open(ARGV[0], "r")
message = message_file.read.chomp

enigma = Enigma.new
decrypted = enigma.decrypt(message, ARGV[2], ARGV[3] )

new_file = File.open(ARGV[1], "w")
new_file.write(decrypted[:decryption])

puts "Created #{ARGV[1]} with the key #{decrypted[:key]} and date #{decrypted[:date]}"

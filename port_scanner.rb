#!/usr/share/ruby

require 'socket'
require 'timeout'

print("
        
.-----.--.--.----|  |--|  .-----.-----.-----.
|__ --|  |  |  __|    <|  |  -__|__ --|__ --|
|_____|_____|____|__|__|__|_____|_____|_____|
          software that sucks less

	\n")
print("ByDefalt Markowickz")

print "Pon la IP del servidor: "
ip = gets.chomp

puertos = 20, 22, 23, 25, 53, 80, 111, 139, 445, 512, 513, 514, 1099, 1524, 2049, 2121, 3306, 5432, 5900, 6000, 6667, 8009, 8180
puertos.each do |p|
begin
Timeout::timeout(10){TCPSocket. new("#{ip}", p)}
rescue
puts "[-] Closed #{p}"
else
puts "[+] Open #{p}"
end
end

puts "What's your name?"
user_name = gets.chomp.downcase

names = [
	"skillcrush",
	"abigail",
	"adda",
	"max",
	"sara",
]

while names.include?(user_name)
	puts "#{user_name.capitalize}, I love you!"
	puts "What's your name?"
	user_name = gets.chomp.downcase
end
class Blog
	@@blog_array = []
end

class BlogPost < Blog
	def author=(author)
		@author=author
	end
	def author
		return @author
	end

	def title=(title)
		@title = title
	end
	def title
		return @title
	end

	def date=(date)
		@date = date
	end
	def date
		return @date
	end

	def blog_content=(blog_content)
		@blog_content = blog_content
	end
	def blog_content
		return @blog_content
	end
end

#Prompoting User for Blog Content
puts "Would you like to add a blog? [Y/N]"
user_answer = gets.chomp.downcase

i = 0 #Used to name blog posts

while user_answer == "y"
	i =+ 1

	#instance = i
	instance = BlogPost.new

	puts "Whats the title of your blog post?"
	instance.title = gets.chomp

	puts "Whats the date? [mm/dd/yyyy]"
	instance.date = gets.chomp

	puts "What's your name?"
	instance.author = gets.chomp

	puts "Please enter your blog post"
	instance.blog_content = gets.chomp

	my_array = []
	my_array.push(instance.title, instance.author, instance.date, instance.blog_content)

	return my_array

	puts "Would you like to enter another blog post? [Y/N]"
	user_answer = gets.chomp
end
if user_answer == "n" #Display blog posts?
	puts "Would you like to publish your post(s) now?"
	publish_answer = gets.chomp

	if publish_answer == "y" 
		puts blog_array
	end

else user_answer != "y" && user_answer != "n" #Answered in wrong format
	puts "It appears your answer was not answered with either 'n' or 'y'"
end
		

	

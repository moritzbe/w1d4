class User
	attr_reader :name, :email, :twitter, :facebook 
	def initialize (name, email, twitter, facebook)
		@name = name
		@email = email
		@twitter = twitter
		@facebook = facebook
	end

end

class NotificationFactory
	def self.getnotificator(user)
		puts "The user #{user.name}"
		case 
		when !user.email.empty?
			puts user.email
	    when !user.twitter.empty?
		    puts user.twitter
	    when !user.facebook.empty?
		    puts user.facebook
		else puts " has no notificators"
		end
	end
end

firstuser = User.new("Moritz", "mb@hot.com", "", "mb.facebook")
seconduser = User.new("Tiago", "", "tiago...", "ti.facebook")
thirduser = User.new("Grandma", "", "", "")

NotificationFactory.getnotificator(firstuser)
NotificationFactory.getnotificator(seconduser)
NotificationFactory.getnotificator(thirduser)










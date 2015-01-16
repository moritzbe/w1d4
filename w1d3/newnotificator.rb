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
			Emailer.new(user)
	    when !user.twitter.empty?
		    Twitterer.new(user)
	    when !user.facebook.empty?
		    Facebooker.new(user)
		else puts " has no notificators"
		end
	end
end

class Emailer
    def initialize(user)
   
    end


	def notify
	puts "#{user.email}"
    end
end


firstuser = User.new("Moritz", "mb@hot.com", "", "mb.facebook")
seconduser = User.new("Tiago", "", "tiago...", "ti.facebook")
thirduser = User.new("Grandma", "", "", "")

module ApplicationHelper

	def avatar_url(user)
		gravatar_id = Digest::MD5.hexdigest(user.email).downcase

		if user.image
			user.image
		else
			"http://www.gravatar.com/avatar/#{gravatar_id}.jpg?d=indentical&s=150"
		end
	end
end

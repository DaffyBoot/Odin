module AdminDashboardHelper
	require 'securerandom'

	def random_avatar_gen
		r = SecureRandom.hex(10)
		image_tag "https://i.pravatar.cc/40?u=#{r}"
	end
end

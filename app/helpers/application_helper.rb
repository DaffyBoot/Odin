module ApplicationHelper
	def controller_stylesheet_link_tag
		#fail
		stylesheet_link_tag params[:controller], "data-turbo-track": "reload"
	end
end

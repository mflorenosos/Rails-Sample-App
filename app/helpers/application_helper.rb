module ApplicationHelper
	def set_site_title(title)
		"#{set_title(title)}Rails 5 App"
	end

	def set_title(title)
		"#{title} | " if title.present?
	end
end

class Controller1Controller < ApplicationController
	# rescue_from OpenURI::HTTPError, with: :user_not_found

	require 'open-uri'

	# def user_not_found
	# 	@msg="User Not Found"
	# 	render "index.html"
	# end

	def show_repos
		username=params[:username]
		if !username.nil?
			@msg="Public Repositories of #{username}"
			begin
				data=JSON.load(open("https://api.github.com/users/#{username}/repos"))
			rescue
				@msg="User is not found"
			end
			@out=JSON.parse(data.to_json(:only => ["id","html_url"]))
		end
			render "index.html"
	end

end

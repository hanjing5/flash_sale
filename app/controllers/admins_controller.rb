class AdminsController < ApplicationController
  before_filter :authenticate_admin!
	def manage_urls
			redirect_to custom_urls_path
	end

	def manage_subs
			@manage_subs = 'active'
			@title = 'Manage Subscribers'
			@subscribers = Subscriber.all
	end

	def manage_site_infos
			redirect_to site_path
	end
end

class AdminsController < ApplicationController
  before_filter :authenticate_admin!
	def manage_urls
			redirect_to custom_urls_path
	end

	def manage_subs
			@manage_subs = 'active'
			@title = 'Manage Subscribers'
			@subscribers = Subscriber.all
      @shoes_total = Subscriber.where(:shoes=>true).count
      @watches_total = Subscriber.where(:watches=>true).count
      @formal_ties_total = Subscriber.where(:formal_ties=>true).count
      @denim_total = Subscriber.where(:denim=>true).count
      @sunglasses_total = Subscriber.where(:sunglasses=>true).count
      @casual_total = Subscriber.where(:casual=>true).count
	end

	def manage_site_infos
			redirect_to site_path
	end
end

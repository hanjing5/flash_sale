class AdminsController < ApplicationController
  before_filter :authenticate_admin!
	def manage_urls
			redirect_to custom_urls_path
	end

	def manage_subs
			@manage_subs = 'active'
			@title = 'Manage Subscribers'
			@subscribers = Subscriber.all
      @shoes_total = Subscriber.where(:shoes=>true)
      @watches_total = Subscriber.where(:watches=>true)
      @formal_ties_total = Subscriber.where(:formal_ties=>true)
      @denim_total = Subscriber.where(:denim=>true)
      @sunglasses_total = Subscriber.where(:sunglasses=>true)
      @casual_total = Subscriber.where(:casual=>true)
      total_list = {:shoes=>@shoes_total.count, :watches=>@watches_total.count, :formal_ties=>@formal_ties_total.count, :denim=>@denim_total.count, :sunglasses=>@sunglasses_total.count, :casual=>@casual_total.count}
      @top3 = {}
      while (@top3.length < 3)
        t = total_list.max
        @top3[t[0]] = t[1]
        total_list.delete(total_list.max[0])
      end
	end

	def manage_site_infos
			redirect_to site_path
	end
end

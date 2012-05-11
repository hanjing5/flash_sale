class PagesController < ApplicationController

  def home
  end

	def index
    if not params[:referer].nil?
      @referer = params[:referer]
      puts 'found referer in index'
      puts @referer
      puts @referer
      puts @referer
      puts @referer
      puts @referer
      puts @referer
      puts @referer
      puts @referer
    end
		@title = 'Home'
	end

	def show
	end

  def contact 
  end

  def about
	end

	def redirections
		@url = params[:custom_url]
		@custom_url = CustomUrl.find_by_end_point(@url)
		
		if @custom_url
			redirect_to @custom_url.url
		else
			redirect_to root_path
		end
	end
  
  def success_final
    @subscriber = Subscriber.find_by_email(CGI::unescape(params[:sub]))
  end

  def success
    @subscriber = Subscriber.find_by_email(CGI::unescape(params[:sub]))
  end
end

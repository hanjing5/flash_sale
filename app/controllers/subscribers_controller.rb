class SubscribersController < ApplicationController
	
	
  def create
    @subscriber = ''
    @success = false

    if not params[:subscriber][:referer].nil?
      puts 'Found a referer'
      r = Subscriber.find_by_email(params[:subscriber][:referer])
      if r
        @subscriber = r.subscribers.new(params[:subscriber])
        #params[:subscriber][:subscriber_id] = r.id
        #params[:subscriber][:subscriber_id]
      else 
        @subscriber = Subscriber.new(params[:subscriber])
      end
    end

    if @subscriber.save
			#SubMailer.welcome_email(@subscriber).deliver
			SubMailer.sub_email(@subscriber).deliver
			puts 'We saved the subscriber!'
      @success = true
      @msg = 'Thank you for signing up! You will be the first to know when we launch.'
          
      flash['msg'] = @msg
      respond_to do |format|
        format.js
        format.html {redirect_to root_path}
				return
      end 
    else
      @msg = 'Failed!'
      flash['msg'] = @msg
      respond_to do |format|
        format.js
        format.html {redirect_to root_path}
      end 
    end 
  end 

end


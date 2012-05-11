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
        format.html {redirect_to success_path(:sub=>@subscriber.email)}
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

  def save_pref
    @success = false
    s = Subscriber.find_by_email(params[:subscriber][:email])
    if s.update_attributes!(params[:subscriber])  
      @success = true
    end

    respond_to do |format|
      format.js
      format.html {redirect_to success_final_path(:sub=>s.email)}
    end 
  end

end


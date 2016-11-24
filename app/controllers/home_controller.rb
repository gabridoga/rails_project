class HomeController < ApplicationController
  def index
    @posts = Post.all


    @result = ''
    if params[:user] != nil
      @user = params[:user]
      if UserMail.welcome_email(@user).deliver_now
        @result += "Hi, <b>#{ @user[:name] }</b>!  Thank you for contact us. As early as possible  we will contact you"
      end
      UserMail.send_me(@user).deliver_now
    end



  end
end

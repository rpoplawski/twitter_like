class UsersController < ApplicationController

  def index
      #render text: "params : #{params.inspect}"
    render template: 'users/index.html.erb', locals: { users: User.all}
  end


  def new
      #render text: "params : #{params.inspect}"
    render tempate: 'users/new.html.erb', locals: { user: User.new }
  end

  def show
    #render text: "params : #{params.inspect}"
   render template: 'users/show.html.erb', locals: { user: User.find(params[:id])}
  end

  def create
    # message, user_id
    user = Post.new
    user.username   = params.fetch(:user).fetch(:username)
    user.save
    if user.save
      redirect_to user_path(User)
    else
      redirect_to user_path
    end
  end
end

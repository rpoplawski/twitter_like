class PostsController < ApplicationController

  def index
      #render text: "params : #{params.inspect}"
        render template: 'posts/index.html.erb', locals: { posts: Post.all}
  end

  def new

    render tempate: 'posts/new.html.erb', locals: { post: Post.new }
  end

  def show
    #render text: "params : #{params.inspect}"
    render template: 'posts/show.html.erb', locals: { post: Post.find(params[:id])}

  end

  def create
    # message, user_id
    post = Post.new
    post.body      = params.fetch(:post).fetch(:body)
    user           = params.fetch(:username)
    user_id        = User.where(username: user)
    post.user_id   = User.find(:first)
      while !result.empty?
              puts result.pop
      end
    post.save
    redirect_to posts_path
  end
end

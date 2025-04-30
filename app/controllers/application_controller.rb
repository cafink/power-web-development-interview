class ApplicationController < ActionController::Base
  def index
    @post = Post.find(2)
    @post.destroy
  end
end

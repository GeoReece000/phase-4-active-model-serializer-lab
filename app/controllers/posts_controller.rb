# app/controllers/posts_controller.rb
class PostsController < ApplicationController
  def index
    posts = Post.all
    render json: posts, each_serializer: PostSerializer
  end

  def show
    post = Post.find(params[:id])
    render json: post, serializer: PostSerializer
  end
end

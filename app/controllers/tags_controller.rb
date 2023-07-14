# app/controllers/tags_controller.rb
class TagsController < ApplicationController
  def show
    tag = Tag.find(params[:id])
    render json: tag, serializer: TagSerializer
  end
end

# app/serializers/post_serializer.rb
class PostSerializer < ActiveModel::Serializer
  attributes :title, :content, :author_name
  has_many :tags

  def author_name
    object.author.name
  end
end

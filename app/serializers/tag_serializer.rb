# app/serializers/tag_serializer.rb
class TagSerializer < ActiveModel::Serializer
  attributes :name
  has_many :posts

  def name
    object.name
  end
end

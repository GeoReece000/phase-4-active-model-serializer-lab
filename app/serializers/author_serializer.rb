# app/serializers/author_serializer.rb
class AuthorSerializer < ActiveModel::Serializer
  attributes :name
  has_one :profile
  has_many :posts

  def name
    object.name
  end
end


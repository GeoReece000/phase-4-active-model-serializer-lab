# app/serializers/author_serializer.rb
class AuthorSerializer < ActiveModel::Serializer
  attributes :name
  has_one :profile
  has_many :posts

  class ProfileSerializer < ActiveModel::Serializer
    attributes :username, :email, :bio, :avatar_url
  end

  class PostSerializer < ActiveModel::Serializer
    attributes :title, :short_content
    has_many :tags

    def short_content
      object.content.truncate(40)
    end
  end
end

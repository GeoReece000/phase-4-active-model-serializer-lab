# app/serializers/profile_serializer.rb
class ProfileSerializer < ActiveModel::Serializer
  attributes :username, :email, :bio, :avatar_url

  def username
    object.username
  end

  def email
    object.email
  end

  def bio
    object.bio
  end

  def avatar_url
    object.avatar_url
  end
end

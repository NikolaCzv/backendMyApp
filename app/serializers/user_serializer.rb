class UserSerializer < ActiveModel::Serializer
    attributes :username, :email, :profile_pic_url
  end
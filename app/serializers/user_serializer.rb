class UserSerializer < ActiveModel::Serializer
    attributes :username, :email, :profile_pic_url, :id, :posts
    has_many :posts, include_nested_associations: true

end
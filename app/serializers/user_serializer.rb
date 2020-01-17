class UserSerializer < ActiveModel::Serializer
    attributes :username, :email, :profile_photo, :id, :posts, :profile_pic_url
    has_many :posts, include_nested_associations: true

    def profile_photo
        if object.photo.attached?
            object.photo.service_url
        else
         object.profile_pic_url
        end
     end

end
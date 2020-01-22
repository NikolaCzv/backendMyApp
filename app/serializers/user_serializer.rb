class UserSerializer < ActiveModel::Serializer
    attributes :username, :email, :profile_photo, :id, :posts, :hometown, :profile_pic_url, :followers, :trips, :booked_trips, :liked_posts
    has_many :posts, include_nested_associations: true

    def profile_photo
        if object.photo.attached?
            object.photo.service_url
        else
         object.profile_pic_url
        end
    end

    # def followers
    #     object.followers.each do |user|
    #         user.profile_pic_url = user.photo.service_url
    #     end
    # end
end